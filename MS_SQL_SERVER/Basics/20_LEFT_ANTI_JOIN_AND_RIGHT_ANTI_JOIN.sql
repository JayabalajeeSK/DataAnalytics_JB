select * from table1
select * from table2
--Left Anti Join
select * from table1 left join table2 
on table1.C1 = table2.C1 
where table2.C1 is null
--
SELECT table1.C1, table1.C2, table2.C3 FROM table1 LEFT JOIN table2 
ON table1.C1 = table2.C1
WHERE table2.C1 IS NULL;

-------------------

select * from table1
select * from table2
--Right Anti Join
select * from table1 right join table2 
on table1.C1 = table2.C1
where table1.C2 is null
--
SELECT b.C1, a.C2, b.C3
FROM table1 a
RIGHT JOIN table2 b 
ON a.C1 = b.C1
WHERE a.C2 IS NULL;