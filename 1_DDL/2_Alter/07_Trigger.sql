-- 1. Renaming a Trigger
ALTER TRIGGER old_trigger_name RENAME TO new_trigger_name;

-- 2. Modifying Trigger Body
DROP TRIGGER IF EXISTS old_trigger_name;
CREATE TRIGGER new_trigger_name
-- New trigger logic here
AFTER INSERT ON your_table_name
FOR EACH ROW
BEGIN
    -- Trigger logic here
END;

-- 3. Changing the Trigger's Event
DROP TRIGGER IF EXISTS old_trigger_name;
CREATE TRIGGER new_trigger_name
-- Trigger logic here
AFTER UPDATE ON your_table_name
FOR EACH ROW
BEGIN
    -- Trigger logic here
END;

-- 4. Changing the Trigger's Timing
DROP TRIGGER IF EXISTS old_trigger_name;
CREATE TRIGGER new_trigger_name
-- Trigger logic here
BEFORE INSERT ON your_table_name
FOR EACH ROW
BEGIN
    -- Trigger logic here
END;

-- 5. Modifying the Trigger's Activation Condition
DROP TRIGGER IF EXISTS old_trigger_name;
CREATE TRIGGER new_trigger_name
-- Trigger logic here
AFTER INSERT ON your_table_name
WHEN (NEW.column_name > 100)
FOR EACH ROW
BEGIN
    -- Trigger logic here
END;
