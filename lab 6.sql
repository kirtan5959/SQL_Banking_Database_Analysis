use bankingDB;

select sum(Balance) as Total_Balamce 
from accounts
where AccountType = 'Savings';

select avg(Balance) as AverageBalance
from accounts;

select max(Balance) as higstBalance
From accounts;

select min(Balance) as higstBalance
From accounts;

select count(*) as Total_Customers from customers;

select  AccountType ,sum(Balance) as Total_Balance from accounts Group By AccountType;

select AccountType , max(Balance), min(Balance) as Total_Balance From accounts group by AccountType;

select AccountType, sum(Balance)as Total_Balance From accounts 
group by AccountType
having Sum(Balance) >=25000;


