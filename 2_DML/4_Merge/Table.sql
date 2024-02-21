-- Merge Using Source and Target Tables
MERGE INTO target_table AS target
USING source_table AS source
ON target.id = source.id -- Define the conditions to match rows between source and target

-- Specify the Merge Conditions
WHEN MATCHED THEN
    -- Action to take when a match is found: Update the target table with values from the source table
    UPDATE SET target.column1 = source.value1, target.column2 = source.value2

-- Define the Actions
WHEN NOT MATCHED THEN
    -- Action to take when no match is found: Insert new rows into the target table using values from the source table
    INSERT (column1, column2) VALUES (source.value1, source.value2)

-- Optional Delete Action
DELETE WHERE target.column3 < 100; -- Delete rows from the target table based on a specified condition
