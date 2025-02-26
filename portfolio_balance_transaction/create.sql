CREATE TABLE portfolio_balance_transaction (
    id INT PRIMARY KEY AUTO_INCREMENT,
    amount BIGINT UNSIGNED NOT NULL,
    transaction_type_id INT,
    portfolio_balance_id INT,
    user_id VARCHAR(255),
    event_time DATETIME(3) NOT NULL,
    
    FOREIGN KEY (transaction_type_id) REFERENCES transaction_type(id) ON DELETE CASCADE,
    FOREIGN KEY (portfolio_balance_id) REFERENCES portfolio_balance(id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE
);