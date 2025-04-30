--Check Constraint
--It checks for certain condition that can be applied on the columns of a table, if this condition is not
--fulfilled, we will not be able to insert the records into the table

--Case 1 : Table doesn't exist
create table test_check 
(
EID int,
firstname varchar(256),
age tinyint CHECK(age>=10)
)
select * from test_check

insert into test_check values (1,'Mayank','20')
select * from test_check

insert into test_check values (2,'Raj',9)
--The INSERT statement conflicted with the CHECK constraint "CK__test_check__age__3B75D760". The conflict occurred in database "constraints", table "dbo.test_check", column 'age'.

update test_check set EID = 11 where EID = 1

--Case 2 : Table exists
alter table test_check
add check (eid>5)

insert into test_check values(3,'Nitin',34)
--The INSERT statement conflicted with the CHECK constraint "CK__test_check__EID__3C69FB99". The conflict occurred in database "constraints", table "dbo.test_check", column 'EID'.

insert into test_check values(30,'Nitin',34)
select * from test_check