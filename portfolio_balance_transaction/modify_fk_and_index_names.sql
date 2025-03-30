ALTER TABLE portfolio_balance_transaction
DROP FOREIGN KEY portfolio_balance_transaction_ibfk_1,
DROP FOREIGN KEY portfolio_balance_transaction_ibfk_2,
DROP FOREIGN KEY portfolio_balance_transaction_ibfk_3;

ALTER TABLE portfolio_balance_transaction
DROP INDEX IF EXISTS `transaction_type_id`,
DROP INDEX IF EXISTS `portfolio_balance_id`,
DROP INDEX IF EXISTS `user_id`,
ADD INDEX transaction_type_id_idx (transaction_type_id),
ADD INDEX portfolio_balance_id_idx (portfolio_balance_id),
ADD INDEX user_id_idx (user_id);

ALTER TABLE portfolio_balance_transaction
ADD CONSTRAINT portfolio_balance_transaction_transaction_type_id_fk FOREIGN KEY (transaction_type_id)
REFERENCES transaction_type (id) ON DELETE CASCADE,
ADD CONSTRAINT portfolio_balance_transaction_portfolio_balance_id_fk FOREIGN KEY (portfolio_balance_id)
REFERENCES portfolio_balance (id) ON DELETE CASCADE,
ADD CONSTRAINT portfolio_balance_transaction_user_id_fk FOREIGN KEY (user_id)
REFERENCES user (id) ON DELETE CASCADE;