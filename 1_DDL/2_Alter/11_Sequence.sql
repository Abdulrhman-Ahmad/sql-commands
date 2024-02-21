-- Create a sequence
ALTER SEQUENCE my_sequence
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    MAXVALUE 1000
    NO CYCLE
    CACHE 10;
