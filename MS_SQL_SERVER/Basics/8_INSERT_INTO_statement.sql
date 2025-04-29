select * from dbo.EmployeeRecords1

insert into dbo.EmployeeRecords1(employee_id,first_name,last_name,Department,Salary)
values (6,'Raj','Ambani','IT',67000)

INSERT INTO DBO.EmployeeRecords1(employee_id,first_name,last_name)
VALUES (7,'Rohit','Mehera')

insert into dbo.EmployeeRecords1 values (8,'Mahesh','Narang','HR',73000)

insert into dbo.EmployeeRecords1 values (9,'Maheshwaran','Naren','Finance',73000)
select * from dbo.EmployeeRecords1

--to see ordinal position
select * from INFORMATION_SCHEMA.COLUMNS
where table_name = 'EmployeeRecords1'