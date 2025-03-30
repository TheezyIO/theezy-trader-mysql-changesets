ALTER TABLE portfolio_stock_transaction
DROP FOREIGN KEY portfolio_stock_transaction_ibfk_1,
DROP FOREIGN KEY portfolio_stock_transaction_ibfk_2;

ALTER TABLE portfolio_stock_transaction
DROP INDEX transaction_type_id,
DROP INDEX portfolio_stock_id,
ADD INDEX transaction_type_id_idx (transaction_type_id),
ADD INDEX portfolio_stock_id_idx (portfolio_stock_id);

ALTER TABLE portfolio_stock_transaction
ADD CONSTRAINT portfolio_stock_transaction_transaction_type_id_fk FOREIGN KEY (transaction_type_id) 
REFERENCES transaction_type (id) ON DELETE CASCADE,
ADD CONSTRAINT portfolio_stock_transaction_portfolio_stock_id_fk FOREIGN KEY (portfolio_stock_id) 
REFERENCES portfolio_stock (id) ON DELETE CASCADE;