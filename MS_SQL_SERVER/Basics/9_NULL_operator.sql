select * from dbo.EmployeeRecords1

insert into dbo.EmployeeRecords1
values (10,'Jay','','IT',73000)

insert into dbo.EmployeeRecords1
values (11,'kane',' ','HR',73000)

INSERT INTO DBO.EmployeeRecords1
VALUES (12,'Nitin','shamani','0',54000)
select * from dbo.EmployeeRecords1

select * from dbo.EmployeeRecords1 WHERE Department = NULL --not correct way

select * from dbo.EmployeeRecords1 where department is null

select * from dbo.EmployeeRecords1 where Department is not null