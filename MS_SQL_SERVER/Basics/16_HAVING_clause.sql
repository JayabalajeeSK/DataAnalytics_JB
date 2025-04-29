select * from dbo.Sales

--Total Sales, Avg Sales, Total Quantity, Avg Quantity for each distinct product
select 
ProductID,
sum(TotalAmount) [Sum of Sales],
sum(Quantity) [Total Quantity],
avg(TotalAmount) [Avg Amount],
avg(Quantity) [Avg Quantity]
from dbo.Sales
group by 
ProductID
HAVING sum(TotalAmount)>700 or sum(Quantity) = 21

---------------------------------------------------- WHERE VS HAVING

select * from dbo.Sales
where TotalAmount>=161

select * from dbo.Sales
select productid, sum(totalamount) [Sum of sales] from dbo.Sales
group by ProductID
having sum(totalamount)<700

select productid,sum(totalamount) [Sum of sales] from dbo.Sales
where TotalAmount>=161
group by productid
having sum(totalamount)>=250
order by PRODUCTid desc

select productid,sum(totalamount) [Sum of sales] from dbo.Sales
where TotalAmount>=161
group by productid
having sum(totalamount)>=250
order by sum(totalamount) asc