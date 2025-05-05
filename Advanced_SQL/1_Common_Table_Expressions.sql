-- /*
-- A Common Table Expression (CTE) in SQL is a temporary result set that you can reference within a 
-- SELECT, INSERT, UPDATE, or DELETE statement. CTEs are defined using the WITH keyword, 
-- and they can make complex queries easier to write, understand, and maintain by breaking them into simpler parts.
-- */
-- select * from EmployeeRecords1

-- select * into #temp11 from EmployeeRecords1
-- select * from #temp11

-- ---Example 1 : CTE
-- With CTE AS (select * from #temp11)
-- select * from cte

-- --Example 2 :
-- with Test_CTE as (
-- select employee_id,first_name from #temp11 where employee_id in (2,4)
-- )
-- select * from test_cte 

-- --Example 3
-- with [Comm Table Expression] as (
-- select * from #temp11 where employee_id in (1,2,3)
-- )
-- select * into #temp2 from [Comm Table Expression]
-- select * from #temp2

-- --Example 4 :
-- with CTE_1 as (
-- select * from #temp11 where employee_id in (2,4,6)
-- )
-- update #temp11 set employee_id = 101 where employee_id in (select distinct employee_id from cte_1)
-- --
-- select * from #temp11


-- --Example 5 :
-- with cte_2 as (
-- select * from #temp11 where employee_id = 1
-- )
-- delete from #temp11 where employee_id in (select distinct employee_id from cte_2)
-- --
-- select * from #temp11

-- --Example 6 :
-- with cte_3 as (
-- select * from #temp11 where Employee_id in (101)
-- )
-- insert into #temp11 select * from cte_3
-- --
-- select * from #temp11

-- ------------------------------------------------------
-- ------------------------------------------------------
-- ------------------------------------------------------

-- select * from EmployeeRecords1
-- select * into #1 from dbo.EmployeeRecords1
-- select * from #1

-- ---Example 7
-- With CTE1 as (
-- select * from #1 where employee_id in (1,2)
-- ),
-- CTE2 as (
-- select * from #1 where employee_id in (3,4)
-- )

-- select * from cte1
-- union all
-- select * from cte2 

-- --Example 8
-- with cte3 as (
-- select employee_id,first_name from #1 where Employee_id = 1
-- ),
-- cte4 as (
-- select employee_id,first_name from #1 where Employee_id in (3)
-- )

-- select * into #2 from (
-- select * from cte3
-- union all
-- select * from cte4
-- ) x
-- select * from #2


-- --Example 9 
-- with cte3 as (
-- select employee_id,first_name from #1 where employee_id = 1
-- ),
-- cte4 as (
-- select employee_id,first_name from #1 where employee_id in (3)
-- )

-- insert into #2 select * from (
-- select * from cte3
-- union all
-- select * from cte4
-- ) x

-- select * from #2

-- --Example 10
-- with cte3 as (
-- select employee_id,first_name,Salary from #1 where employee_id = 2
-- ),
-- cte4 as (
-- select employee_id,first_name,Salary from #1 where employee_id in (4)
-- )

-- delete from #1 where employee_id in (select distinct employee_id from cte3
-- union all
-- select distinct employee_id from cte4
-- )
-- select * from #1

-- --Example 11 :
-- with cte3 as (
-- select employee_id,first_name,Salary from #1 where employee_id = 9
-- ),
-- cte4 as (
-- select employee_id,first_name,Salary from #1 where employee_id in (10)
-- )

-- update #1 set employee_id = 100 where employee_id not in (select distinct employee_id from cte3
-- union all
-- select distinct employee_id from cte4
-- )
-- select * from #1