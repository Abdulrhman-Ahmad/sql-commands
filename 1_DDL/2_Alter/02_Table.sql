-- We can use Create Or Alter instead of drop and create separately

-- Add a new column
ALTER TABLE table_name
ADD column_name data_type;

-- Drop a column
ALTER TABLE table_name
DROP COLUMN column_name;

-- Modify data type of a column
ALTER TABLE table_name
ALTER COLUMN column_name new_data_type;

-- Add a constraint
ALTER TABLE table_name
ADD CONSTRAINT constraint_name CONSTRAINT_TYPE (column_name);

-- Drop a constraint
ALTER TABLE table_name
DROP CONSTRAINT constraint_name;

-- Rename a table
ALTER TABLE old_table_name
RENAME TO new_table_name;
