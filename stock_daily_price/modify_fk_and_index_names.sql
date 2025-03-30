ALTER TABLE stock_daily_price
DROP FOREIGN KEY stock_daily_price_ibfk_1;

ALTER TABLE stock_daily_price
DROP INDEX IF EXISTS stock_id,
ADD INDEX stock_id_idx (stock_id);

ALTER TABLE stock_daily_price
ADD CONSTRAINT stock_daily_price_stock_id_fk FOREIGN KEY (stock_id) 
REFERENCES stock (id) ON DELETE CASCADE;