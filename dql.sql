INSERT INTO Customers
(CustomerID, FirstName, LastName, Email, Phone, AccountCreationDate, DateOfBirth)
VALUES

(104, 'Sneha', 'Kulkarni', 'sneha.k@gmail.com', '9234567891', '2025-06-02', '1999-11-25'),
(105, 'Rohit', 'Verma', 'rohit.verma@gmail.com', '9345678912', '2025-06-03', '1997-08-10'),
(106, 'Neha', 'Singh', 'neha.singh@gmail.com', '9456789123', '2025-06-04', '2001-02-18'),
(107, 'Karan', 'Mehta', 'karan.mehta@gmail.com', '9567891234', '2025-06-05', '1996-06-30');
 select * from customers;
 
 INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES

(203, 103, 'Savings', 30000),
(204, 104, 'Current', 45000),
(205, 105, 'Savings', 20000),
(206, 106, 'Current', 50000),
(207, 107, 'Savings', 35000);
 select * from accounts;
 
 INSERT INTO Transactions
(TransactionID, AccountID, TransactionDate, Amount, TransactionType)
VALUES

(303, 202, '2025-06-03', 10000, 'Credit'),
(304, 202, '2025-06-04', 3000, 'Debit'),
(305, 201, '2025-06-05', 1500, 'Debit');
select * from transactions;

INSERT INTO Branches
(BranchID, BranchName, BranchAddress, BranchPhone)
VALUES

(403, 'Thane Branch', 'Thane West', '9873333333'),
(404, 'Pune Branch', 'Pune Shivajinagar', '9874444444'),
(405, 'Navi Mumbai Branch', 'Vashi', '9875555555');
select * from branches;

INSERT INTO AccountBranches
(AccountID, BranchID, AssignmentDate)
VALUES

(202, 403, '2025-05-03'),
(202, 404, '2025-05-04'),
(201, 405, '2025-05-05');
select * from accountbranches;

INSERT INTO Loans
(LoanID, CustomerID, LoanAmount, InterestRate, StartDate, EndDate)
VALUES
(501, 101, 500000, 8.5, '2025-01-01', '2030-01-01'),
(502, 102, 300000, 9.0, '2025-02-01', '2029-02-01'),
(503, 101, 200000, 7.5, '2025-03-01', '2028-03-01'),
(504, 102, 150000, 8.0, '2025-04-01', '2027-04-01'),
(505, 101, 100000, 9.5, '2025-05-01', '2026-05-01');
select * from loans;

SELECT *
FROM Customers
WHERE Phone IS NULL;


SELECT *
FROM Customers
WHERE Email IS NOT NULL;

select  AccountID,Balance,
case when Balance  >=5000 then 'Premium Account'
  when Balance >= 25000 then 'Standard Account'
  else 'Basic Account'
  End as Accountcategory
  from accounts;
  
  SELECT AccountID,
       Balance,
       RANK() OVER (ORDER BY Balance DESC) AS BalanceRank
FROM Accounts;

SELECT TransactionID,
       Amount,
       SUM(Amount) OVER (ORDER BY TransactionDate) AS RunningTotal
FROM Transactions;

SELECT TransactionID,
       Amount,
       AVG(Amount) OVER () AS AverageTransaction
FROM Transactions;