------------- ALL COLUMNS -----------
select * from student_details

insert into student_details
values ('Tharun','M',18,'2024-02-02',115.35), ('Jay','M',34,'2023-11-08',324.66)

select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME like 'student_details'

insert into student_details (Student_Name,Gender)
values ('Sam','F')

select * from student_details

------------- CERTAIN COLUMNS ---------------
insert into student_details
(Age,event_date)
values (34,'2023-10-04'),(43,'2019-01-01'),(19,'2022-08-08')

select * from student_details

--Datatype of column age is tinyint (0 to 255)
select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME like 'student_details'

insert into student_details (Age)
values (256)

select * from student_details