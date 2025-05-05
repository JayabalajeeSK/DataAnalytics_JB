CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255)
);

INSERT INTO Customers (CustomerID, FirstName, LastName, Email, PhoneNumber, Address)
VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@example.com', '555-1234', '123 Elm St'),
(2, 'Bob', 'Smith', NULL, '555-5678', NULL),
(3, 'Charlie', 'Williams', 'charlie.williams@example.com', NULL, '456 Oak St'),
(4, 'Diana', 'Brown', NULL, NULL, '789 Pine St'),
(5, 'Eve', 'Davis', 'eve.davis@example.com', '555-8765', NULL);

-------------------------------------------------------------------
select * from Customers
--Isnull
select isnull(null,'1 st value null')
select isnull('abx',null)
select isnull(null,null)

select * from Customers
--coalesce
select coalesce('A','B','C')
select coalesce(null,'B','C')
select coalesce(null,null,'C')

--
select * from Customers
select Customerid,email,phonenumber from Customers

select Customerid,isnull(email,'Email NA'),isnull(phonenumber,'Ph No NA') from Customers

select Customerid,coalesce(email,phonenumber,'Contact NA') [Coalesce Function] from Customers