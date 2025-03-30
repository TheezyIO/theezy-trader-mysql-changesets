ALTER TABLE account_balance
DROP FOREIGN KEY account_balance_ibfk_1;

ALTER TABLE account_balance
DROP INDEX user_id,
ADD INDEX user_id_idx (user_id),
ADD CONSTRAINT account_balance_user_id_fk FOREIGN KEY (user_id) 
REFERENCES user (id) ON DELETE CASCADE;