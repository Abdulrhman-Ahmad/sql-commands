-- The only way to alter the indexes is to drop it and create a new one

-- First Drop the old Index
alter table TableName
drop constraint IndexConstraintName

-- Second we create a new index 
CREATE INDEX idx_IndexConstraintName ON TableName (ColumnName);