--What is the total balance of a user?
SELECT SUM(Balance) as TotalBalance 
FROM Accounts 
WHERE UserID = 1;  -- Replace 1 with the desired UserID

--How much did a user spend on groceries in October 2023?
SELECT SUM(Amount) as TotalSpent 
FROM Transactions 
JOIN Categories ON Transactions.CategoryID = Categories.CategoryID 
WHERE AccountID IN (SELECT AccountID FROM Accounts WHERE UserID = 1) 
AND CategoryName = 'Groceries' 
AND strftime('%Y-%m', Date) = '2023-10';

--Which are the last 5 transactions of a user?
SELECT Amount, Date, Description 
FROM Transactions 
WHERE AccountID IN (SELECT AccountID FROM Accounts WHERE UserID = 1) 
ORDER BY Date DESC 
LIMIT 5;

