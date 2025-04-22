-- Selects all records from the EmployeeRecords1 table.
select * from EmployeeRecords1;

-- Selects records where Last_Name is 'balajee' AND Employee_ID is 1.
select * from EmployeeRecords1
where Last_Name = 'balajee' and Employee_ID = 1;

-- Selects records where Last_Name is 'Balajee' AND Employee_ID is either 2 or 4.
select * from EmployeeRecords1
where Last_Name = 'Balajee' and (Employee_ID = '2' or Employee_ID = 4);

-- Selects records where (Last_Name is 'Balajee' OR first_name is 'jaya') 
-- AND (Employee_ID is 2 OR Employee_ID is 1).
select * from EmployeeRecords1
where (Last_Name = 'Balajee' or first_name = 'jaya') and (Employee_ID = '2' or Employee_ID = 1);

-- Selects records from dbo.EmployeeRecords1 where Department is either 'HR' or 'Finance'.
select * from dbo.EmployeeRecords1
where Department = 'HR' or Department = 'Finance';

-- Selects records where Department is 'HR' or 'Finance' AND Salary is greater than 50000.
-- This filters employees who are in HR or Finance and earn more than 50,000.
select * from dbo.EmployeeRecords1
where (Department = 'HR' or Department = 'Finance') AND Salary > 50000;