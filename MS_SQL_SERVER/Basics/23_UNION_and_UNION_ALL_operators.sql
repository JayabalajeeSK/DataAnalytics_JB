create table append1 (C1 int,C2 nvarchar(255),C3 int)
insert into append1 values 
(1,'A',7),
(2,'B',8),
(3,'C',9)


create table append2 (C1 int,C2 nvarchar(255),C3 int)
insert into append2 values 
(11,'AA',17),
(2,'B',8),
(33,'C1',91)

SELECT * FROM append1;
SELECT * FROM append2;

select c1,c2,c3 from append1
union all
select c1,c2,c3 from append2
-- c1	c2	c3
-- 1	A	7
-- 2	B	8
-- 3	C	9
-- 11	AA	17
-- 2	B	8
-- 33	C1	91
--
select c1,c2,c3 from append1
union 
select c1,c2,c3 from append2
-- c1	c2	c3
-- 1	A	7
-- 2	B	8
-- 3	C	9
-- 11	AA	17
-- 33	C1	91
--

--Numbers of columns present in the select list have to be same
--Data Types of the columns have to be same
--Order in which columns are written has to be the same

select c1,c2,c3 from append1 --C1 is int, C2 is nvarchar, C3 is int, which means cause error
union 
select c1,c3,C2 from append2

---Aliase names which are specified in 1st select statement will be assigned to the columns
select c1 [Column1],c2 [Column2],c3 [Column3] from append1
union
select c1 [Col1],c2 [Col2],c3 [Col3] from append2
-- Column1	Column2	Column3
-- 1	       A    	7
-- 2	       B	    8
-- 3	       C	    9
-- 11	       AA	    17
-- 33	       C1	    91