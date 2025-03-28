ALTER TABLE stock_daily_price
DROP FOREIGN KEY stock_daily_price_ibfk_1,
ADD CONSTRAINT stock_id_fk FOREIGN KEY (stock_id) 
REFERENCES stock (id) ON DELETE CASCADE;

ALTER TABLE stock_daily_price
DROP INDEX stock_id,
ADD INDEX stock_id_idx (stock_id);