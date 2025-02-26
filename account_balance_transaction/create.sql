CREATE TABLE AccountBalanceTransaction (
    id INT PRIMARY KEY AUTO_INCREMENT,
    amount BIGINT UNSIGNED NOT NULL,
    accountBalanceId INT,
    transactionTypeId INT,
    eventTime DATETIME(3) NOT NULL,
    FOREIGN KEY (accountBalanceId) REFERENCES AccountBalance(id) ON DELETE CASCADE,
    FOREIGN KEY (transactionTypeId) REFERENCES TransactionType(id) ON DELETE CASCADE
);