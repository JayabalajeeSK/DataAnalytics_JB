--Primary Key Constraint

--Case 1 : When new is to be created
create table test_pk_1 
(
eid int primary key,
gender char(1),
age tinyint,
firstname varchar(256)
)

insert into test_pk_1 values(1,'M',23,'Mayank')
select * from test_pk_1

insert into test_pk_1 values (1,'F',19,'Priya')
--Violation of PRIMARY KEY constraint 'PK__test_pk___D9509F6D89BF123E'. Cannot insert duplicate key in object 'dbo.test_pk_1'. The duplicate key value is (1).

insert into test_pk_1 values (null,'M',25,'Raj')
--Cannot insert the value NULL into column 'eid', table 'constraints.dbo.test_pk_1'; column does not allow nulls. INSERT fails.

truncate table test_pk_1

--Case 2 : Table Already exists
alter table test_pk_1
add primary key (age)
--Table 'test_pk_1' already has a primary key defined on it.
--Msg 1750, Level 16, State 0, Line 24
--Could not create constraint or index. See previous errors.

drop table test_pk_2

create table test_pk_2 
(
SID int not null unique,
firstname nvarchar(256),
age tinyint not null
)

alter table test_pk_2
add primary key (sid,age)

alter table test_pk_2
add primary key (sid)

--Table 'test_pk_1' already has a primary key defined on it.
--Msg 1750, Level 16, State 0, Line 24
--Could not create constraint or index. See previous errors.

-- drop and execute again