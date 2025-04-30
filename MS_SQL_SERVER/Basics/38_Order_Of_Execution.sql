CREATE TABLE EmployeeSalaries (
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Salary INT,
    Department VARCHAR(50)
);

INSERT INTO EmployeeSalaries (EmployeeID, EmployeeName, Salary, Department)
VALUES
(1, 'Alice', 50000, 'HR'),
(2, 'Bob', 60000, 'HR'),
(3, 'Charlie', 55000, 'HR'),
(4, 'David', 75000, 'Finance'),
(5, 'Eve', 80000, 'Finance'),
(6, 'Frank', 72000, 'Finance'),
(7, 'Grace', 90000, 'IT'),
(8, 'Heidi', 95000, 'IT'),
(9, 'Ivan', 87000, 'IT');
-------------------------------------------------

--Order Of Execution
select * from EmployeeSalaries

--Correct Query
select distinct top 1 Department,AVG(Salary) [Avg Salary] 
from EmployeeSalaries
where Salary>50000
group by Department
having AVG(Salary)>55000
order by Department 
--Department	Avg Salary
--Finance	75666


--From & Joins
--where
--group by
--having
--select
--distinct
--order by
--top

--Incorrect Query
select distinct top 1 Department,AVG(Salary) [Avg Salary] 
from EmployeeSalaries
where Salary>50000
group by Department
having [Avg Salary]>55000
order by Department 

---
SELECT DISTINCT TOP 2 ES.Department, COUNT(*) AS TotalEmployees, AVG(ES.Salary) AS AvgSalary
FROM EmployeeSalaries ES
JOIN (SELECT DISTINCT Department FROM EmployeeSalaries) AS TempDept ON ES.Department = TempDept.Department
WHERE ES.Salary > 60000
GROUP BY ES.Department
HAVING AVG(ES.Salary) > 70000
ORDER BY AvgSalary DESC;
--Department	TotalEmployees	AvgSalary
--IT	              3	           90666
--Finance	          3	           75666