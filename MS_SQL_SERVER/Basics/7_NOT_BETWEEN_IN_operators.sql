-- Selects all records from the EmployeeRecords1 table.
select * from dbo.EmployeeRecords1;

-- Selects records where First_Name is NOT 'Jaya' AND Salary is NOT 50000.
-- Both conditions must be true for a row to be shown.
select * from dbo.EmployeeRecords1
where not First_Name = 'Jaya' and not Salary = 50000;

-- Selects records where Last_Name is NOT 'Raj' OR Department is NOT 'Finance'.
-- Returns rows where either condition is true (or both).
select * from dbo.EmployeeRecords1
where not last_name = 'Raj' or not Department = 'Finance';


------------------------------------------------------
-- Again, selects all records from EmployeeRecords1.
select * from dbo.EmployeeRecords1;

-- Selects records where Salary is between 50000 and 60000 (inclusive).
select * from dbo.EmployeeRecords1
where Salary between 50000 and 60000;

-- Same result as above, but written with >= and <=.
select * from dbo.EmployeeRecords1
where salary >= 45000 and Salary <= 51000;

-- Selects records where Salary is NOT between 50000 and 60000.
-- This excludes all salaries within that range.
select * from dbo.EmployeeRecords1
where salary not between 50000 and 60000;

-- Same as above using 'not' in front of 'between'.
select * from dbo.EmployeeRecords1
where not salary between 50000 and 60000;


-----------------------------------------
-- Selects records where Department is either 'HR' or 'IT'.
select * from dbo.EmployeeRecords1
where Department = 'HR' or Department = 'IT';

-- Same as above using IN for cleaner syntax.
select * from dbo.EmployeeRecords
where Department in ('HR','IT');

-- Selects records where Department is NOT 'HR' and NOT 'IT'.
-- Returns all other departments.
SELECT * FROM DBO.EMPLOYEERECORDS
WHERE DEPARTMENT NOT IN ('HR','IT');