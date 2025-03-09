ALTER TABLE portfolio_balance_transaction MODIFY transaction_type_id INT NOT NULL;
ALTER TABLE portfolio_balance_transaction MODIFY portfolio_balance_id INT NOT NULL;
ALTER TABLE portfolio_balance_transaction MODIFY user_id VARCHAR(255) NOT NULL;