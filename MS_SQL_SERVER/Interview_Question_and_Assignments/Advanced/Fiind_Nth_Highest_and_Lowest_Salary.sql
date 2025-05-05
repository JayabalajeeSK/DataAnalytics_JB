create database [Advanced SQL Questions]
use [Advanced SQL Questions]
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName NVARCHAR(100),
    Salary DECIMAL(10, 2)
);
INSERT INTO Employees (EmployeeID, EmployeeName, Salary)
VALUES
(1, 'Alice Smith', 70000.00),
(2, 'Bob Johnson', 85000.00),
(3, 'Carol White', 95000.00),
(4, 'David Brown', 60000.00),
(5, 'Eve Davis', 75000.00),
(6, 'Frank Miller', 90000.00),
(7, 'Grace Lee', 80000.00),
(8, 'Hannah Clark', 62000.00),
(9, 'Ivy Harris', 74000.00),
(10, 'Jack Lewis', 98000.00);
Select * From Employees
--------------------------------------------------------------------------------------
Select * From Employees
--Maximum Salary - 1st Highest Salary
select max(salary) [1st Highest Salary] from employees 
--Minimum Salary - 1st Lowest Salary
select min(salary) [1st Lowest Salary] from employees 


select * from Employees
--2nd Highest Salary
select max(salary) [2nd Highest Salary] from employees 
where salary < (select max(salary) from Employees)
--2nd Lowest Salary
select min(salary) [2nd Lowest Salary] from employees 
where salary > (select min(salary) from Employees)

select * from Employees
--3rd highest salary
select max(salary) [3rd Highest Salary] from employees 
where salary < (select max(salary) from employees
where salary < (select max(salary) from Employees))
--3rd highest salary
select min(salary) [3rd Lowest Salary] from employees 
where salary > (select min(salary) from employees
where salary > (select min(salary) from Employees))

------------------------------------------------------<BEST>
------------------------------------------------------<BEST>

--CTE (BEST)
select * from Employees
--
-- 2nd Highest Salary
with cte as (select *,DENSE_RANK() over(order by salary desc) [DR] from Employees)
select salary [2nd Highest Salary] from cte where DR = 2
-- 2nd Lowest Salary
with cte as (select *,DENSE_RANK() over(order by salary asc) [DR] from Employees)
select salary [2nd Lowest Salary] from cte where DR = 2

select * from Employees
--
--3rd Highest Salary
with cte as (select *,DENSE_RANK() over(order by salary desc) [DR] from Employees)
select salary [3rd Highest Salary] from cte where DR = 3
--3rd Lowest Salary
with cte as (select *,DENSE_RANK() over(order by salary asc) [DR] from Employees)
select salary [3rd Lowest Salary] from cte where DR = 3

---------------------------------------------------------------------------
---------------------------------------------------------------------------

--Sub Query along with Dense_Rank()
select * from Employees
--2nd Highest
select salary as [2nd highest salary] from
(select *, DENSE_RANK() over(order by salary desc) [DR] from Employees) x
where DR = 2
--2nd Lowest
select salary as [2nd Lowest salary] from
(select *, DENSE_RANK() over(order by salary asc) [DR] from Employees) x
where DR = 2
-
-----------------------------------------------------------------------
-----------------------------------------------------------------------

--Sub Query
select * from Employees
--2nd Highest Salary
select top 1 salary [2nd Highest Salary] from 
(select distinct top 2 salary from Employees order by Salary desc) x
order by Salary asc
--2nd Highest Salary
select top 1 salary [2nd Lowest Salary] from 
(select distinct top 2 salary from Employees order by Salary asc) x
order by Salary desc

select * from Employees
--3nd Highest Salary
select top 1 salary [2nd Highest Salary] from 
(select distinct top 3 salary from Employees order by Salary desc) y
order by Salary asc
--3nd Highest Salary
select top 1 salary [2nd Lowest Salary] from 
(select distinct top 3 salary from Employees order by Salary asc) xy
order by Salary desc