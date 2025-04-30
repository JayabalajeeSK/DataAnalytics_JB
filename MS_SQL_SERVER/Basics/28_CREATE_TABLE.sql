create database student_details

create table student_details 
(
Student_Name nvarchar(256),
Gender char(1),
Age tinyint,
event_date date,
distance decimal(5,2)
);

--drop table student_details

select DISTINCT * from student_details

insert into student_details(Student_Name,Gender,Age,event_date,distance)
values ('Jaya','M',25,'2024-08-03',123.11)

insert into student_details values ('Bala','M',29,'2023-12-06',119.09)
insert into student_details values ('EVA','F',29,'2023-12-06',119.09)

select DISTINCT * from student_details
select * from student_details