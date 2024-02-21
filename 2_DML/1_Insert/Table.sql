-- Inserting a Single Row
INSERT INTO table_name (column1, column2, column3)
VALUES (value1, value2, value3);

-- Inserting Multiple Rows
INSERT INTO table_name (column1, column2, column3)
VALUES (value1, value2, value3),
       (value4, value5, value6),
       (value7, value8, value9);

-- Inserting Rows from Another Table
INSERT INTO table_name (column1, column2, column3)
SELECT column1, column2, column3
FROM another_table
WHERE condition;

-- Inserting Rows with Default Values
INSERT INTO table_name (column1, column2) -- Assuming column2 has a default value
VALUES (value1);

-- Inserting Rows with NULL Values
INSERT INTO table_name (column1, column2)
VALUES (value1, NULL);

-- Inserting Rows with Explicit Default Values
INSERT INTO table_name (column1, column2)
VALUES (value1, DEFAULT); -- Assuming column2 has a default value

-- Inserting Rows with Expressions
INSERT INTO table_name (column1, column2)
VALUES (value1, value2 * 2);
