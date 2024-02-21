-- Must be tested first!
ALTER VIEW view_name WITH SCHEMABINDING AS
SELECT
    column1,
    column2,
    ...
FROM
    table_name
WHERE
    condition;