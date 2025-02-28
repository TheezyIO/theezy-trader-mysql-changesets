CREATE TABLE portfolio_stock (
    id INT PRIMARY KEY AUTO_INCREMENT,
    average_price BIGINT UNSIGNED NOT NULL,
    amount INT NOT NULL,
    stock_id INT,
    portfolio_id INT,
    created DATETIME(3) NOT NULL,
    
    FOREIGN KEY (stock_id) REFERENCES stock(id) ON DELETE CASCADE,
    FOREIGN KEY (portfolio_id) REFERENCES portfolio(id) ON DELETE CASCADE
);