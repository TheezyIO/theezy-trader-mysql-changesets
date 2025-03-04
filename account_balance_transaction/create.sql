CREATE TABLE account_balance_transaction (
    id INT PRIMARY KEY AUTO_INCREMENT,
    amount BIGINT UNSIGNED NOT NULL,
    account_balance_id INT,
    transaction_type_id INT,
    event_time TIMESTAMP NOT NULL,
    
    FOREIGN KEY (account_balance_id) REFERENCES account_balance(id) ON DELETE CASCADE,
    FOREIGN KEY (transaction_type_id) REFERENCES transaction_type(id) ON DELETE CASCADE
);