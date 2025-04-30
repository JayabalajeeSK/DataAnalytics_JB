--Foreign Key Constraint

--Case 1 : When the new table has to be created
create table test_Primary_key 
(
ID int primary key,
name varchar(256)
)
insert into test_primary_key values (1,'Mayank'),(2,'Raj'),(3,'Jayant')
select * from test_Primary_key

create table test_foreign_key (
ID int foreign key references test_primary_key(id),
course varchar(256)
)

insert into test_foreign_key values (1,'A')
insert into test_foreign_key values (null,'B')
select * from test_foreign_key

INSERT INTO test_foreign_key VALUES (5,'C') --5 not exist on reference table as primary key
--The INSERT statement conflicted with the FOREIGN KEY constraint "FK__test_foreign__ID__5165187F". The conflict occurred in database "constraints", table "dbo.test_Primary_key", column 'ID'.


--Case 2 : Table already exists
create table test_foreign_key_2 (ID int, course varchar(256))

alter table test_foreign_key_2
add foreign key (id) references test_primary_key(id)

select * from test_foreign_key_2