CREATE TABLE PortfolioStockTransaction (
    id INT PRIMARY KEY AUTO_INCREMENT,
    transactionTypeId INT,
    portfolioStockId INT,
    price BIGINT UNSIGNED NOT NULL,
    amount INT NOT NULL,
    eventTime DATETIME(3) NOT NULL,
    FOREIGN KEY (transactionTypeId) REFERENCES TransactionType(id) ON DELETE CASCADE,
    FOREIGN KEY (portfolioStockId) REFERENCES PortfolioStock(id) ON DELETE CASCADE
);