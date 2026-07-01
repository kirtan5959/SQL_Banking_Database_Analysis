
CREATE VIEW Suspicious_Transactions AS
SELECT
    TransactionID,
    CustomerID,
    TransactionType,
    Amount
FROM Transactions_2
WHERE Amount > 25000;

select * from Suspicious_transactions;

insert into Transactions_2 
(TransactionID, AccountID, CustomerID, TransactionDate, Amount, TransactionType)
values 
(315, 212, 101, '2024-11-01', 50000.00, 'Deposit'),
(316, 213, 102, '2025-12-06', 75000.00, 'Deposit');

select * from transactions_2;

create  or replace view Suspicious_Transaction As
select
t.TransactionId,
concat(c.FirstName, ' ', LastName) As CustomerName,
c.BanchName,
t.TransactionType,
t.Amount
From transactions_2 t
inner join Customers_2 c
    ON t.CustomerID = c.CustomerID
WHERE t.Amount > 25000;

select * from Suspicious_Transaction;

select
transactionID,
CustomerName,
BanchName,
TransactionType,
Amount
From Suspicious_Transaction
order by Amount desc;
