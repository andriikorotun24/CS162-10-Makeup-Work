Diagram of the DB Schema
Users Table: Central table having fields UserID, Email, Password, and FullName.  
Accounts Table: Connected to the Users table through UserID. Fields include AccountID, AccountType, AccountName, and Balance.  
Categories Table: Standalone table with fields CategoryID and CategoryName.  
Transactions Table: Connected to both the Accounts and Categories tables via AccountID and CategoryID respectively. Fields include TransactionID, Amount, Date, and Description
