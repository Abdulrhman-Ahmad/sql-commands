TRUNCATE TABLE TableName;

/*
Operation:
-   TRUNCATE: Removes all rows from a table.
-   DELETE: Removes specific rows based on a condition.

Speed:
-   TRUNCATE: Typically faster than DELETE, especially for large tables, because it deallocates the data pages used to store the table's data, rather than removing rows one by one.
-   DELETE: Slower compared to TRUNCATE, especially for large tables, because it removes rows individually and logs each deletion operation.

Transaction Logging:
-   TRUNCATE: Not logged row by row. Instead, it's logged as a single deallocation operation.
-   DELETE: Logged row by row. Each row deletion is logged individually.

Rollback:
-   TRUNCATE: Cannot be rolled back. Once executed, the operation is irreversible.
-   DELETE: Can be rolled back within a transaction if it's part of a larger transaction and hasn't been committed yet.

Identity/Auto-increment Columns:
-   TRUNCATE: Typically resets identity or auto-increment columns to their initial seed value.
-   DELETE: Does not reset identity or auto-increment columns. It leaves gaps in the sequence if some rows have been deleted.

Trigger Execution:
-   TRUNCATE: Triggers are not fired when using TRUNCATE.
-   DELETE: Triggers associated with DELETE operations will be fired.

Permission Requirements:
-   TRUNCATE: Often requires fewer permissions compared to DELETE.
-   DELETE: Requires permission to delete rows, which may involve more granular access control.
*/