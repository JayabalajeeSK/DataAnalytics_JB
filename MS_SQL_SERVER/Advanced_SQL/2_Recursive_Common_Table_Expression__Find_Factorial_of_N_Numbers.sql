--Recursive CTE
--Factorial of a given number (5)
------------------- SUM OF N FACTORIAL

with [R CTE] as (
--Anchor Query
select 1 as n
union all
--Recursive Query
select n+1 from [R CTE] where n<=4 --n=1 | 1+1=2 | 2+1=3 | 3+1=4 | 4+1=5 |--> 1, 2, 3, 4, 5
)
select exp(sum(log(n))) [Factorial] from [R CTE]
--------

-----------
--3*2*1
--5*4*3*2*1


---------------- N FACTORIAL 
-- with [R CTE] as (
-- --Anchor Query
-- select 1 as n
-- union all
-- --Recursive Query
-- select n+1 from [R CTE] where n<=4 n<=4 --n=1 | 1+1=2 | 2+1=3 | 3+1=4 | 4+1=5 |--> 1, 2, 3, 4, 5
-- )
-- select * from [r cte]