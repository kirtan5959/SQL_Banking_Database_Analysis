SELECT
    TransactionID,
    CustomerID,
    TransactionType,
    Amount
FROM Transactions_2
WHERE Amount > (
    SELECT AVG(Amount)
    FROM Transactions_2
);

select  t.TransactionID,
t.customerID,
(select concat(c.FirstName, ' ', c.LastName)
from customers_2 c
where c.CustomerID = t.CustomerID)
AS CustomerName,
(select c.BanchName
From Customers_2 c
where c.CustomerID = t.CustomerID)
AS BanchName,
t.TransactionType,
t.Amount
From Transactions_2 t
order by BanchName, t.CustomerID;

select * from customers_2;
alter table Customers_2
add  column BanchName varchar(100) ;

insert Customers_2
(CustomerID, FirstName, LastName, Email, Phone, AccountCreationDate, DateOfBirth, BanchName )

values (110, 'kirtan', 'More', 'kirtanmore456@gmail.com', '1234567890', '2025-05-01', '1999-06-05', 'Dadar');

INSERT INTO Transactions_2
(TransactionID, AccountID, CustomerID, TransactionDate, Amount, TransactionType)
VALUES

(313, 201, 110, '2025-05-01',  5000.00, 'Deposit'),
(314, 202, 110, '2025-05-02',  11000.00, 'Withdrawal');

select * from transactions_2;
Use bankingDB;

SELECT
    t.TransactionID,
    t.CustomerID,
    CONCAT(c.FirstName,' ',c.LastName) AS CustomerName,
    c.BanchName,
    t.TransactionType,
    t.Amount
FROM Transactions_2 t
JOIN Customers_2 c
ON t.CustomerID = c.CustomerID
ORDER BY c.BanchName, t.CustomerID;

use bankingDB;