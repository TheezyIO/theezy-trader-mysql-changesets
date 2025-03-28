ALTER TABLE portfolio_stock_transaction
DROP FOREIGN KEY portfolio_stock_transaction_ibfk_1,
ADD CONSTRAINT transaction_type_id_fk FOREIGN KEY (transaction_type_id) 
REFERENCES transaction_type (id) ON DELETE CASCADE;

ALTER TABLE portfolio_stock_transaction
DROP FOREIGN KEY portfolio_stock_transaction_ibfk_2,
ADD CONSTRAINT portfolio_stock_id_fk FOREIGN KEY (portfolio_stock_id) 
REFERENCES portfolio_stock (id) ON DELETE CASCADE;

ALTER TABLE portfolio_stock_transaction
DROP INDEX transaction_type_id,
ADD INDEX transaction_type_id_idx (transaction_type_id);

ALTER TABLE portfolio_stock_transaction
DROP INDEX portfolio_stock_id,
ADD INDEX portfolio_stock_id_idx (portfolio_stock_id);