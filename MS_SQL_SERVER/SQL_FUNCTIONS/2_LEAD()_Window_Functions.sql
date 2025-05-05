create database [Profit DB]
use [profit db]

-- Create a table to store monthly profit data for different products
CREATE  TABLE ProfitData (
    MonthNumber INT,
    MonthName VARCHAR(3),
    Product VARCHAR(50),
    Profit INT
);
-- Insert data into the ProfitData table
INSERT INTO ProfitData (MonthNumber, MonthName, Product, Profit) VALUES
(1, 'Jan', 'Product A', 1000),
(2, 'Feb', 'Product A', 1500),
(3, 'Mar', 'Product A', 1200),
(4, 'Apr', 'Product A', 1700),
(5, 'May', 'Product A', 1300),
(6, 'Jun', 'Product A', 1600),
(1, 'Jan', 'Product B', 2000),
(2, 'Feb', 'Product B', 2500),
(3, 'Mar', 'Product B', 2200),
(4, 'Apr', 'Product B', 2700),
(5, 'May', 'Product B', 2300),
(6, 'Jun', 'Product B', 2600);

----------------------------------------
select * from ProfitData
--To add a new column that shows next month's profit for each product
select *,lead(Profit) over(partition by product order by monthnumber) [Next Month's Profit]        
from ProfitData
--1200 2300
--2300 null

-------------------------------------------------
--We don't want product column inthe output but we want each month's total profit to be show by monthnumber & monthname,Also a 
select * from ProfitData
--new column should be added to show next month's total profit
select monthnumber,monthname,sum(profit) [Total Profit],
lead(sum(profit)) over(order by monthnumber asc) [Next Month's Total Profit] -- sum month profit, like jan profits, then feb profits 
from ProfitData
group by MonthNumber,MonthName
order by MonthNumber
--jan 3000 4000
--feb 4000 4400
--mar 4400 null