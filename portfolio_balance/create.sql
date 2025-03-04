CREATE TABLE portfolio_balance (
    id INT PRIMARY KEY AUTO_INCREMENT,
    portfolio_id INT,
    cash BIGINT UNSIGNED NOT NULL,
    equity BIGINT UNSIGNED NOT NULL,
    modified_at TIMESTAMP NOT NULL,
    
    FOREIGN KEY (portfolio_id) REFERENCES portfolio(id) ON DELETE CASCADE
);