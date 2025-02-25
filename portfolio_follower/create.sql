CREATE TABLE PortfolioFollower (
    id INT PRIMARY KEY AUTO_INCREMENT,
    userId VARCHAR(255),
    portfolioId INT,
    created DATETIME(3) NOT NULL,
    FOREIGN KEY (userId) REFERENCES User(id) ON DELETE CASCADE,
    FOREIGN KEY (portfolioId) REFERENCES Portfolio(id) ON DELETE CASCADE
);