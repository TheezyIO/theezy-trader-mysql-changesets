ALTER TABLE stock
DROP INDEX ticker,
ADD UNIQUE INDEX ticker_uidx (ticker);