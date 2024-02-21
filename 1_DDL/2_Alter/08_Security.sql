-- Alter Login Password
ALTER LOGIN YourLoginName WITH PASSWORD = 'NewPassword';

-- Alter Database User
ALTER USER YourUserName WITH LOGIN = NewLoginName;

-- Alter Database Role Membership (Add a new user to the role)
ALTER ROLE YourRoleName ADD MEMBER NewUserName;

-- Alter Permissions on a Table (Grant SELECT permission to a different user)
GRANT SELECT ON YourTableName TO NewUserName;

-- Alternatively, you can revoke the permission from the old user
REVOKE SELECT ON YourTableName FROM OldUserName;

-- Alter Server Audit Configuration (Disable the audit)
ALTER SERVER AUDIT YourAuditName WITH (STATE = OFF);

-- Change the audit destination file path
ALTER SERVER AUDIT YourAuditName TO FILE (FILEPATH = 'D:\NewAuditLogs');

-- Enable the audit again
ALTER SERVER AUDIT YourAuditName WITH (STATE = ON);

-- We Can't alter the login name directly but we can use Stored Procedure to change it like 
EXEC sp_change_users_login 'Auto_Fix', 'OldLoginName', NULL, 'NewLoginName'; -- Transfer any server-level permissions