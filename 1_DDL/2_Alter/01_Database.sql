-- Modify collation
ALTER DATABASE database_name
COLLATE new_collation;

-- Set recovery model
ALTER DATABASE database_name
SET RECOVERY simple_or_full_or_bulk_logged;

-- Set compatibility level
ALTER DATABASE database_name
SET COMPATIBILITY_LEVEL = { 90 | 100 | 110 | 120 | 130 | 140 | 150 };

-- Set auto shrink
ALTER DATABASE database_name
SET AUTO_SHRINK { ON | OFF };

-- Set read-only mode
ALTER DATABASE database_name
SET READ_ONLY { ON | OFF };
