SELECT COALESCE(a.C1, b.C1) AS C1, a.C2, b.C3 
FROM table1 a FULL OUTER JOIN table2 b
ON a.C1 = b.C1;
---
SELECT a.C1, a.C2, b.C3 
FROM table1 a FULL OUTER JOIN table2 b
ON a.C1 = b.C1;
--- 117.	COALESCE() - COALESCE(expr1, expr2, ...) returns the first non-null value from the list of expressions.