CREATE TYPE MyCustomType AS (
    field1 INT,
    field2 VARCHAR(50)
);


CREATE TABLE MyTable (
    id INT,
    data MyCustomType
);

CREATE TYPE MyCustomType2 AS VARCHAR(100);