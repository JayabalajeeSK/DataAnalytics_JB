select * from dbo.EmployeeRecords1

select * into #1 from dbo.EmployeeRecords1 --creating hash table

---------------------------
select * from #1

--setting department to HR, if that row is Empty
update #1
set Department = 'HR'
where Department is null

--setting / updating salary from null and last_name from blank for employee id = 10
update #1
set Salary = 89000, last_name= 'dev'
where employee_id = 10

select * from #1 where employee_id = 10
select * from #1
-------------------------------------------------------
select * into #12 from dbo.EmployeeRecords1

select * from #12

-- impact if we don't use where condition
update #12
set department = 'Finance'

select * from #12