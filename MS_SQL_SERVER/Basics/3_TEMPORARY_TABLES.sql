select * into #temp2 --local
from [dbo].[EmployeeRecords1]

select * from #temp1
select * from #temp2

select * from dbo.Employees
select * from [dbo].[EmployeeRecords1]

select * into ##temp2 --global
from [dbo].[EmployeeRecords]

select * from ##temp2
select * from dbo.employeerecords

select * from #temp1
select * from ##temp2