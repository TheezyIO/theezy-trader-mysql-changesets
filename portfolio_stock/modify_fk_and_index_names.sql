ALTER TABLE portfolio_stock
DROP FOREIGN KEY portfolio_stock_ibfk_1,
ADD CONSTRAINT stock_id_fk FOREIGN KEY (stock_id) REFERENCES stock (id) ON DELETE CASCADE;

ALTER TABLE portfolio_stock
DROP FOREIGN KEY portfolio_stock_ibfk_2,
ADD CONSTRAINT portfolio_id_fk FOREIGN KEY (portfolio_id) REFERENCES portfolio (id) ON DELETE CASCADE;

ALTER TABLE portfolio_stock
DROP INDEX stock_id,
ADD INDEX stock_id_idx (stock_id);

ALTER TABLE portfolio_stock
DROP INDEX portfolio_id,
ADD INDEX portfolio_id_idx (portfolio_id);