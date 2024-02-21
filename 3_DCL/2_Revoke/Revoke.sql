-- Revoke SELECT privilege on a table named employees from a user named user1
REVOKE SELECT ON employees FROM user1;

-- Revoke INSERT, UPDATE, DELETE privileges on a table named employees from a role named role1
REVOKE INSERT, UPDATE, DELETE ON employees FROM role1;

-- Revoke ALL privileges on a table named customers from a role named admin_role
REVOKE ALL ON customers FROM admin_role;

-- Revoke EXECUTE privilege on a stored procedure named calculate_salary from a user named user2
REVOKE EXECUTE ON calculate_salary FROM user2;
