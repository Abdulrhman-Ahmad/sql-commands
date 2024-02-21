-- Scalar Function: ConcatenateNames
-- This function takes a first name and a last name as input parameters,
-- concatenates them with a space in between, and returns the full name.
CREATE FUNCTION dbo.ConcatenateNames(@firstName VARCHAR(50), @lastName VARCHAR(50)) RETURNS VARCHAR(101) AS BEGIN
    RETURN @firstName + ' ' + @lastName;

END;

GO -- Table-Valued Function: GetEmployeesByDepartment
-- This function retrieves all employees belonging to a specific department
-- based on the provided department ID, returning a table of employee records.
CREATE FUNCTION dbo.GetEmployeesByDepartment(@departmentId INT) RETURNS TABLE AS RETURN (
    SELECT
        *
    FROM
        Employees
    WHERE
        DepartmentID = @departmentId
);

GO -- Inline Table-Valued Function: SplitString
-- This function splits a string into substrings based on a delimiter
-- and returns the substrings as rows in a table.
CREATE FUNCTION dbo.SplitString(@inputString VARCHAR(1000), @delimiter CHAR(1)) RETURNS TABLE AS RETURN (
    SELECT
        VALUE
    FROM
        STRING_SPLIT(@inputString, @delimiter)
);

GO -- Multi-Statement Table-Valued Function: GetSalesByMonth
-- This function calculates the total sales for each month of a given year
-- and returns the results as a table with two columns: Month and TotalSales.
CREATE FUNCTION dbo.GetSalesByMonth(@year INT) RETURNS @SalesByMonth TABLE (
    MONTH INT,
    TotalSales DECIMAL(18, 2)
) AS BEGIN
    INSERT INTO
        @SalesByMonth
    SELECT
        MONTH(OrderDate),
        SUM(TotalAmount)
    FROM
        Orders
    WHERE
        YEAR(OrderDate) = @year
    GROUP BY
        MONTH(OrderDate);

RETURN;

END;

GO