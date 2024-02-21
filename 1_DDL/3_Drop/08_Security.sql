-- Drop Login
DROP LOGIN YourLoginName;

-- Drop Database User
DROP USER YourUserName;

-- Drop Database Role
DROP ROLE YourRoleName;

-- Revoke Permissions on a Table (if needed)
REVOKE SELECT ON YourTableName FROM NewUserName;

-- Drop Server Audit
DROP SERVER AUDIT YourAuditName;
