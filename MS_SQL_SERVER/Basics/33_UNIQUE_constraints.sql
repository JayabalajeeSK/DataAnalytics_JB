--Unique Constraint
--It ensures that a column consists of unique values

--Case 1 : We need to create the table
create table test_unique 
(
SID int unique,
age tinyint not null,
firstname varchar(256) not null unique,
lastname varchar(256)
)
select * from test_unique

insert into test_unique values (1,22,'Mayank','Mehera')
select * from test_unique

insert into test_unique values (1,24,'Rohit','Singh') 
--Violation of UNIQUE KEY constraint 'UQ__test_uni__CA195971A0F28B1D'. Cannot insert duplicate key in object 'dbo.test_unique'. The duplicate key value is (1).

insert into test_unique values (null,34,'Akhilesh','Jain')
select * from test_unique

insert into test_unique values (null,54,'Nitin','Singh') 
--Violation of UNIQUE KEY constraint 'UQ__test_uni__CA195971A0F28B1D'. Cannot insert duplicate key in object 'dbo.test_unique'. The duplicate key value is (<NULL>).

--After last name alter to UNIQUE -- Violation of UNIQUE KEY constraint 'UQ__test_uni__58E25A42CB5CDBE8'. Cannot insert duplicate key in object 'dbo.test_unique'. The duplicate key value is (Singh).

truncate table test_unique
select * from test_unique

--Case 2 : when the table already exists
alter table test_unique
add unique (lastname)
select * from test_unique