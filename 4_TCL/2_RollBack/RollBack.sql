-- Create a new table
CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Salary DECIMAL(10, 2)
);

-- Start a transaction
BEGIN;

-- Insert some data into the table
INSERT INTO Employees (ID, Name, Salary) VALUES (1, 'John Doe', 50000);
INSERT INTO Employees (ID, Name, Salary) VALUES (2, 'Jane Smith', 60000);

-- Display the current data
SELECT * FROM Employees;

-- Rollback the changes (undoing the inserts)
ROLLBACK;

-- Display the data after rolling back the changes
SELECT * FROM Employees;
