ecreate database employee_details;
use employee_details;

CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary FLOAT
);

INSERT INTO Employees (id, name, salary) VALUES
(1, 'Jaya', 50000),
(2, 'Bala', 45000),
(3, 'Eva', 55000);
-- ------------------------------------------------------
select * from Employees; --fetch full table

select id, name from Employees; --fetch id and name

select id, concat(salary,' - ',name) [Salary_withName] from Employees; --fetch id and concatenate employe slaray and name in Salary_withName Column