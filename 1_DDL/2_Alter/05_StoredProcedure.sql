-- We can use Create Or Alter/Replace instead of Drop and create seperately

ALTER PROCEDURE GetCustomerInfo
    @CustomerID INT  -- New parameter added
AS
BEGIN
    -- SQL statements to retrieve customer information based on CustomerID
    SELECT * FROM Customers WHERE CustomerID = @CustomerID;
END;
