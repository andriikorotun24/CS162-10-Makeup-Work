-- Creating Users table
CREATE TABLE Users (
    UserID INTEGER PRIMARY KEY,
    Email TEXT NOT NULL UNIQUE,
    Password TEXT NOT NULL,
    FullName TEXT
);

-- Creating Accounts table
CREATE TABLE Accounts (
    AccountID INTEGER PRIMARY KEY,
    UserID INTEGER,
    AccountType TEXT,
    AccountName TEXT,
    Balance REAL,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Creating Categories table
CREATE TABLE Categories (
    CategoryID INTEGER PRIMARY KEY,
    CategoryName TEXT NOT NULL
);

-- Creating Transactions table
CREATE TABLE Transactions (
    TransactionID INTEGER PRIMARY KEY,
    AccountID INTEGER,
    CategoryID INTEGER,
    Amount REAL NOT NULL,
    Date DATE NOT NULL,
    Description TEXT,
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);
