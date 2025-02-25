CREATE TABLE PortfolioStock (
    id INT PRIMARY KEY AUTO_INCREMENT,
    averagePrice BIGINT UNSIGNED NOT NULL,
    amount INT NOT NULL,
    stockId INT,
    portfolioId INT,
    created DATETIME(3) NOT NULL,
    FOREIGN KEY (stockId) REFERENCES Stock(id) ON DELETE CASCADE,
    FOREIGN KEY (portfolioId) REFERENCES Portfolio(id) ON DELETE CASCADE
);