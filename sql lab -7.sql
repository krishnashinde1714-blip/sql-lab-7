USE bank;

-- Q1. Display Savings Account Customers Sorted by Balance
SELECT Customer.Firstname, Customer.Lastname, Accounts.AccountID, Accounts.Balance
FROM Customer
JOIN Accounts ON Customer.Customerid = Accounts.Customerid
WHERE Accounts.AccountType = 'Savings'
ORDER BY Accounts.Balance DESC;

-- Q2. Categorize Accounts Using Balance

SELECT AccountID, AccountType, Balance,
CASE
    WHEN Balance > 50000 THEN 'Premium Account'
    WHEN Balance > 2500 THEN 'Standard Account'
    ELSE 'Basic Account'
END AS AccountCategory
FROM Accounts;

-- Q3. Categorize Transactions as High, Medium, Low based on transaction amount
SELECT TransactionID, TransactionType, Amount,
CASE
    WHEN Amount > 20000 THEN 'High Transaction'
    WHEN Amount > 5000 THEN 'Medium Transaction'
    ELSE 'Low Transaction'
END AS TransactionCategory
FROM Transactions;