/*
 sequence is an object that generates a sequence of unique numeric values according to specified parameters. 
 Sequences are often used to generate surrogate keys, which are unique identifiers for rows in database tables.
*/
-- Describtion
CREATE SEQUENCE sequence_name           -- Sequence name
    [ INCREMENT BY increment_value ]    -- The increment value
    [ START WITH start_value ]          -- The Starting value
    [ MINVALUE min_value ]              -- The minumum value
    [ MAXVALUE max_value ]              -- The maximum value
    [ CYCLE | NO CYCLE ]                -- Repeat counting after reaching the max or not
    [ CACHE cache_size ];               -- The number of sequence numbers to cache in memory for better performance

-- Create a sequence
CREATE SEQUENCE my_sequence
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    MAXVALUE 1000
    NO CYCLE
    CACHE 10;


-- Use the sequence to generate data
INSERT INTO my_table (id, name)
VALUES (NEXTVAL('my_sequence'), 'John');
