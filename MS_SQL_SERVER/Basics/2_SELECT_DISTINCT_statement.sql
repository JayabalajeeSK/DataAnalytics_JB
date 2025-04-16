CREATE TABLE EmployeeRecords1 (
    employee_id INT PRIMARY KEY,
    first_name NVARCHAR(50),
    last_name NVARCHAR(50),
    department NVARCHAR(100),
    salary DECIMAL(10,2)
);
INSERT INTO EmployeeRecords1 (employee_id, first_name, last_name, department, salary) VALUES
(1, 'Jaya', 'Balajee', 'IT', 50000.00),
(2, 'Jaya', 'Balajee', 'IT', 52000.00),     -- Same name, different salary
(3, 'Abi', 'Rani', 'HR', 45000.00),
(4, 'Abi', 'Rani', 'HR', 46000.00),         -- Same name, different salary
(5, 'Kumar', 'Raj', 'Finance', 55000.00);

SELECT * FROM employeerecords1;

---------------------------------------------------------
select distinct first_name from employeerecords1;
select distinct last_name from employeerecords1;
select distinct first_name, last_name from employeerecords1;
select distinct first_name, salary from employeerecords1;