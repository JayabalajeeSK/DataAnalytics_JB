select * from [dbo].[EmployeeRecords]
where employee_id = 2

select employee_id,first_name from [dbo].[EmployeeRecords]
where employee_id = 2

select * from dbo.EmployeeRecords where Salary>=50000.00

select * from dbo.EmployeeRecords1
select first_name,last_name,Department,Salary 
from dbo.EmployeeRecords1 where Salary>50000.00

select distinct first_name,last_Name,department,salary
from dbo.EmployeeRecords1 where Salary>50000.00