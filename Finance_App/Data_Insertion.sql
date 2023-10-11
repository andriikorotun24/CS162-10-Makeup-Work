-- Users
INSERT INTO Users (Email, Password, FullName) VALUES ('john.doe@email.com', 'password123', 'John Doe');
INSERT INTO Users (Email, Password, FullName) VALUES ('jane.doe@email.com', 'password456', 'Jane Doe');

-- Accounts
INSERT INTO Accounts (UserID, AccountType, AccountName, Balance) VALUES (1, 'Checking', 'Main Checking', 5000.00);
INSERT INTO Accounts (UserID, AccountType, AccountName, Balance) VALUES (2, 'Savings', 'Emergency Fund', 15000.00);

-- Categories
INSERT INTO Categories (CategoryName) VALUES ('Rent');
INSERT INTO Categories (CategoryName) VALUES ('Groceries');
INSERT INTO Categories (CategoryName) VALUES ('Entertainment');

-- Transactions
INSERT INTO Transactions (AccountID, CategoryID, Amount, Date, Description) VALUES (1, 1, -1500.00, '2023-10-01', 'Rent for October');
INSERT INTO Transactions (AccountID, CategoryID, Amount, Date, Description) VALUES (1, 2, -200.00, '2023-10-02', 'Grocery shopping');
