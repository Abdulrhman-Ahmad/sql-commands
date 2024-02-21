-- Create a SQL Server login for authentication
CREATE LOGIN YourLoginName WITH PASSWORD = 'YourPassword';

-- Create a database user and map it to the login
CREATE USER YourUserName FOR LOGIN YourLoginName;

-- Create a database role and add the user to it
CREATE ROLE YourRoleName;

EXEC sp_addrolemember 'YourRoleName',
'YourUserName';

-- Grant SELECT permission on a table to the user
GRANT
SELECT
    ON YourTableName TO YourUserName;

-- Enable auditing to track database activity
CREATE SERVER AUDIT YourAuditName TO FILE (FILEPATH = 'C:\YourAuditLogs');

ALTER SERVER AUDIT YourAuditName WITH (STATE = ON);