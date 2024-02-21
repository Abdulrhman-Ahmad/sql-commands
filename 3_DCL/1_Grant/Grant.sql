-- Grant SELECT privilege on a table named employees to a user named user1
GRANT SELECT ON employees TO user1;

-- Grant INSERT, UPDATE, DELETE privileges on a table named employees to a role named role1
GRANT INSERT, UPDATE, DELETE ON employees TO role1;

-- Grant ALL privileges on a table named customers to a role named admin_role
GRANT ALL ON customers TO admin_role;

-- Grant EXECUTE privilege on a stored procedure named calculate_salary to a user named user2
GRANT EXECUTE ON calculate_salary TO user2;

-- Grant SELECT privilege on all tables in a schema named public to a role named read_only_role
GRANT SELECT ON ALL TABLES IN SCHEMA public TO read_only_role;

-- Grant USAGE privilege on a sequence named order_id_seq to a role named order_role
GRANT USAGE ON SEQUENCE order_id_seq TO order_role;

-- Grant CREATE privilege on a schema named reports to a user named reporting_user
GRANT CREATE ON SCHEMA reports TO reporting_user;

-- Grant EXECUTE privilege on a function named calculate_bonus to a role named hr_role
GRANT EXECUTE ON FUNCTION calculate_bonus TO hr_role;
