ALTER TABLE portfolio_balance_transaction
DROP FOREIGN KEY portfolio_balance_transaction_ibfk_1,
ADD CONSTRAINT transaction_type_id_fk FOREIGN KEY (transaction_type_id) 
REFERENCES transaction_type (id) ON DELETE CASCADE;

ALTER TABLE portfolio_balance_transaction
DROP FOREIGN KEY portfolio_balance_transaction_ibfk_2,
ADD CONSTRAINT portfolio_balance_id_fk FOREIGN KEY (portfolio_balance_id) 
REFERENCES portfolio_balance (id) ON DELETE CASCADE;

ALTER TABLE portfolio_balance_transaction
DROP FOREIGN KEY portfolio_balance_transaction_ibfk_3,
ADD CONSTRAINT user_id_fk FOREIGN KEY (user_id) 
REFERENCES user (id) ON DELETE CASCADE;

ALTER TABLE portfolio_balance_transaction
DROP INDEX transaction_type_id,
ADD INDEX transaction_type_id_idx (transaction_type_id);

ALTER TABLE portfolio_balance_transaction
DROP INDEX portfolio_balance_id,
ADD INDEX portfolio_balance_id_idx (portfolio_balance_id);

ALTER TABLE portfolio_balance_transaction
DROP INDEX user_id,
ADD INDEX user_id_idx (user_id);