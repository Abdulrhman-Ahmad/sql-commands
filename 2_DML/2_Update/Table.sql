-- Update All Rows
UPDATE table_name
SET column1 = value1, column2 = value2, ...;

-- Update Specific Rows
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

-- Update Using Subquery
UPDATE table_name
SET column1 = (SELECT expression FROM another_table WHERE condition),
    column2 = value2
WHERE condition;

-- Update with Arithmetic Operations
UPDATE table_name
SET column1 = column1 + 10,
    column2 = column2 * 2
WHERE condition;

-- Update with Joins
UPDATE table_name1
INNER JOIN table_name2 ON table_name1.column_name = table_name2.column_name
SET table_name1.column1 = value1, table_name1.column2 = value2
WHERE condition;
