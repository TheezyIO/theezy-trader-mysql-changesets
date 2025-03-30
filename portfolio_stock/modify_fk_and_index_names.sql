ALTER TABLE portfolio_stock
DROP FOREIGN KEY portfolio_stock_ibfk_1,
DROP FOREIGN KEY portfolio_stock_ibfk_2;

ALTER TABLE portfolio_stock
DROP INDEX stock_id,
DROP INDEX portfolio_id,
ADD INDEX stock_id_idx (stock_id),
ADD INDEX portfolio_id_idx (portfolio_id);

ALTER TABLE portfolio_stock
ADD CONSTRAINT portfolio_stock_stock_id_fk FOREIGN KEY (stock_id) 
REFERENCES stock (id) ON DELETE CASCADE,
ADD CONSTRAINT portfolio_stock_portfolio_id_fk FOREIGN KEY (portfolio_id) 
REFERENCES portfolio (id) ON DELETE CASCADE;