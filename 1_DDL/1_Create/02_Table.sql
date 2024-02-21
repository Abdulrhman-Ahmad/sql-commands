CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10, 2),
    HireDate DATE,
    CONSTRAINT FK_Department_Employee FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
    CONSTRAINT CK_Salary CHECK (Salary >= 0),
    CONSTRAINT UQ_EmployeeName UNIQUE (FirstName, LastName),
    CONSTRAINT DF_HireDate DEFAULT GETDATE()
);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName NVARCHAR(100)
);
