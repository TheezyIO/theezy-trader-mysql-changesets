CREATE TABLE portfolio_stock_transaction (
    id INT PRIMARY KEY AUTO_INCREMENT,
    transaction_type_id INT,
    portfolio_stock_id INT,
    price BIGINT UNSIGNED NOT NULL,
    amount INT NOT NULL,
    event_time DATETIME(3) NOT NULL,
    
    FOREIGN KEY (transaction_type_id) REFERENCES transaction_type(id) ON DELETE CASCADE,
    FOREIGN KEY (portfolio_stock_id) REFERENCES portfolio_stock(id) ON DELETE CASCADE
);