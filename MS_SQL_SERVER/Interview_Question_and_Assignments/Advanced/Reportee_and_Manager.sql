-- Create the table
CREATE TABLE ReportingStructure (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    ManagerID INT
);
-- Insert data into the table
INSERT INTO ReportingStructure (EmployeeID, EmployeeName, ManagerID) VALUES
(1, 'Alice Smith', NULL),  -- Alice Smith is at the top and reports to no one
(2, 'Bob Johnson', 1),     -- Bob Johnson reports to Alice Smith
(3, 'Carol White', 1),     -- Carol White reports to Alice Smith
(4, 'David Brown', 2),     -- David Brown reports to Bob Johnson
(5, 'Eve Davis', 2),       -- Eve Davis reports to Bob Johnson
(6, 'Frank Miller', 3);    -- Frank Miller reports to Carol White
--------------------------------------------------------------------

select * from ReportingStructure
Select * From Employees
-- EmployeeID	EmployeeName	ManagerID
-- 1	Alice Smith	NULL
-- 2	Bob Johnson	1
-- 3	Carol White	1
-- 4	David Brown	2
-- 5	Eve Davis	2
-- 6	Frank Miller	3

-- EmployeeID	EmployeeName	Salary
-- 1	Alice Smith	70000.00
-- 2	Bob Johnson	85000.00
-- 3	Carol White	95000.00
-- 4	David Brown	60000.00
-- 5	Eve Davis	75000.00
-- 6	Frank Miller	90000.00
-- 7	Grace Lee	80000.00
-- 8	Hannah Clark	62000.00
-- 9	Ivy Harris	74000.00
-- 10	Jack Lewis	98000.00

--
-- Reportee	Manager
-- Bob Johnson	Alice Smith
-- Carol White	Alice Smith
-- David Brown	Bob Johnson
-- Eve Davis	Bob Johnson
-- Frank Miller	Carol White

select b.employeename [Reportee],A.employeename [Manager]
from ReportingStructure A inner join reportingstructure B
on a.employeeid = b.managerid
union all
select employeename,null [Manager] from reportingstructure
where managerid is null

-- employeename	Manager
-- Alice Smith	NULL
--

--OUTPUT
-- Reportee	Manager
-- Bob Johnson	Alice Smith
-- Carol White	Alice Smith
-- David Brown	Bob Johnson
-- Eve Davis	Bob Johnson
-- Frank Miller	Carol White
-- Alice Smith	NULL