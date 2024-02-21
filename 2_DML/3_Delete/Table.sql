-- Delete All Rows
DELETE FROM table_name;

-- Delete Specific Rows
DELETE FROM table_name
WHERE condition;

-- Delete Using Subquery
DELETE FROM table_name
WHERE column_name IN (SELECT column_name FROM another_table WHERE condition);

-- Delete with Joins
DELETE table_name1
FROM table_name1
INNER JOIN table_name2 ON table_name1.column_name = table_name2.column_name
WHERE condition;
