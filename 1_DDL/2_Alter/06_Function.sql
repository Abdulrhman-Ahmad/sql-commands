-- 1. Renaming a User-Defined Function
ALTER FUNCTION old_function_name() RENAME TO new_function_name();




-- We can't alter the body, return,  of the function.
-- The only way to that is to drop the fucntion and create a new one 


