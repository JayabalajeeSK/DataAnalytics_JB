select * from ProfitData
--To add a new column that shows previous month's profit for each product
select *,
lag(Profit) over(partition by product order by monthnumber) [Lag Function]
from ProfitData
--1000 null
--1500 1000
--1200 1500

--------------------
--We don't want product column inthe output but we want each month's total profit to be show by monthnumber & monthname,Also a 
select * from ProfitData
--new column should be added to show previous month's total profit
select MonthNumber,MonthName,sum(profit) [Total Profit for Month],
lag(sum(profit)) over(order by monthnumber) [Previous Month's Total Profit] --- sum month profit, like jan profits, then previous month profits
from ProfitData
group by MonthNumber,MonthName
order by MonthNumber
--jan 3000 null
--feb 4000 3000
--mar 3400 4000