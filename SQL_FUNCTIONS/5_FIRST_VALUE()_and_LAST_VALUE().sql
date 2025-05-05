-------------------------------------------------
-------------------------------------FIRST_VALUE()
-------------------------------------------------
create database [window functions]
use [window functions]

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

------------------------------ FIRST_VALUE()
select * from EmployeeSalaries
select *
,FIRST_VALUE(Salary) over(order by salary asc) [Minimum Salary] -- Find minimum salary and return that first value
from EmployeeSalaries

select * from EmployeeSalaries
select *
,FIRST_VALUE(EmployeeName) over(order by salary asc) [Emp with Minimum Salary]
,FIRST_VALUE(Salary) over(order by salary asc) [Minimum Salary] --Find minimum salary and return that first value (salary) and return name of the minimum salary employee
from EmployeeSalaries

select * from EmployeeSalaries
select * 
,FIRST_VALUE(EmployeeID) over(partition by department order by salary) [First Value]
from EmployeeSalaries ----Find minimum salary and return that first value (salary) and return name of the minimum salary employee BU ID AND department

select * from EmployeeSalaries
select * 
,FIRST_VALUE(EmployeeID) over(partition by department order by salary desc) [First Value EID]
,FIRST_VALUE(EmployeeName) over(partition by department order by salary desc) [First Value EName]
from EmployeeSalaries --Find maximum salary and return that first value (salary) and return name of the minimum salary employee By ID and retun name by id



-------------------------------------------------
-------------------------------------LAST_VALUE()
-------------------------------------------------
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

---------------------------

select * from EmployeeSalaries
--Incorrect Query
select * 
,LAST_VALUE(EmployeeName) over(order by salary desc) [Emp with Lowest Salary]
from EmployeeSalaries


--correct Query
select * from EmployeeSalaries
select * 
,LAST_VALUE(EmployeeName) over(order by salary desc rows between unbounded preceding and unbounded following) [Emp with Lowest Salary] --LOWEST SALARY EMPLOYEE NAME
from EmployeeSalaries


--correct Query
select * from EmployeeSalaries
select * 
,LAST_VALUE(EmployeeName) over(order by salary desc rows between unbounded preceding and unbounded following) [Emp with Lowest Salary]
,LAST_VALUE(Salary) over(order by salary desc rows between unbounded preceding and unbounded following) [Lowest Salary]
from EmployeeSalaries --LOWEST SALARY EMPLOYEE NAME WITH THAT LOWEST SALARY

--correct Query
select * from EmployeeSalaries
select * 
,LAST_VALUE(EmployeeName) over(partition by department
order by salary desc rows between unbounded preceding and unbounded following) [Emp with Lowest Salary]

,LAST_VALUE(Salary) over(partition by department order by salary desc rows between unbounded preceding and unbounded following) [Lowest Salary]
from EmployeeSalaries -- DEPARTMENT WISE LOWEST SALARY EMPLOYEE NAME WITH THAT LOWEST SALARY 

--correct Query [Last Value Window Fun]
select * from EmployeeSalaries
select * 
,LAST_VALUE(EmployeeName) over(partition by department
order by salary rows between unbounded preceding and unbounded following) [Emp with Highest Salary]

,LAST_VALUE(Salary) over(partition by department order by salary asc rows between unbounded preceding and unbounded following) [Highest Salary]
from EmployeeSalaries --HIGHEST SALARY EMPLOYEE NAME WITH THAT HIGHEST SALARY

--correct Query [First Value Window Fun] --USING FIRST_VALUE(), SAME AS LAST_VALUE()
select * from EmployeeSalaries
select * 
,first_VALUE(EmployeeName) over(partition by department
order by salary desc) [Emp with Highest Salary]

,first_VALUE(Salary) over(partition by department order by salary desc) [Highest Salary]
from EmployeeSalaries -- DEPARTMENT WISE HIGHEST SALARY EMPLOYEE NAME WITH THAT HIGHEST SALARY