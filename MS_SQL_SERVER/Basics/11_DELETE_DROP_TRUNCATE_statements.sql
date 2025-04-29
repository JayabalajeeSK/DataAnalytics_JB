select * from dbo.EmployeeRecords1

select * into #3 from dbo.EmployeeRecords1
select * from #3

delete from #3
where last_name = '' or Department = '0' -- remove all rows with blank last name or deprtment contains - 0
select * from #3

select * into #4 from dbo.EmployeeRecords1
select * from #4

delete from #4
select * from #4

select * from #3

truncate table #3
select * from #3

drop table #3
-- select * from #3 -- error - #3 table not exists

--Delete - delete certain records from the table

--if we will use delete without where condition, all records from the table will be deleted, but the 
--table structure remains intact

--Truncate - delete all the records from the table but the structure of the table remains intact

--Drop - all the records will be deleted plus table structure will also be removed