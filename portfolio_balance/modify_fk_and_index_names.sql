ALTER TABLE portfolio_balance
DROP FOREIGN KEY portfolio_balance_ibfk_1,
ADD CONSTRAINT portfolio_id_fk FOREIGN KEY (portfolio_id) 
REFERENCES portfolio (id) ON DELETE CASCADE;

ALTER TABLE portfolio_balance
DROP INDEX portfolio_id,
ADD INDEX portfolio_id_idx (portfolio_id);