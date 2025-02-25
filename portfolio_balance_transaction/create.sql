CREATE TABLE PortfolioBalanceTransaction (
    id INT PRIMARY KEY AUTO_INCREMENT,
    amount BIGINT UNSIGNED NOT NULL,
    transactionTypeId INT,
    portfolioBalanceId INT,
    userId VARCHAR(255),
    eventTime DATETIME(3) NOT NULL,
    FOREIGN KEY (transactionTypeId) REFERENCES TransactionType(id) ON DELETE CASCADE,
    FOREIGN KEY (portfolioBalanceId) REFERENCES PortfolioBalance(id) ON DELETE CASCADE,
    FOREIGN KEY (userId) REFERENCES User(id) ON DELETE CASCADE
);