-- For Tables
CREATE SYNONYM synonym_name_for_table FOR schema_name.table_name;

-- For Views
CREATE SYNONYM synonym_name_for_view FOR schema_name.view_name;

-- For Procedures
CREATE SYNONYM synonym_name_for_procedure FOR schema_name.procedure_name;

-- For Functions
CREATE SYNONYM synonym_name_for_function FOR schema_name.function_name;

-- For Synonyms (Nested Synonyms)
CREATE SYNONYM synonym_name_for_synonym FOR schema_name.synonym_name;
