ALTER TABLE account_balance_transaction
DROP FOREIGN KEY account_balance_transaction_ibfk_1,
ADD CONSTRAINT account_balance_id_fk FOREIGN KEY (account_balance_id) 
REFERENCES account_balance (id) ON DELETE CASCADE;

ALTER TABLE account_balance_transaction
DROP INDEX account_balance_id,
ADD INDEX account_balance_id_idx (account_balance_id);

ALTER TABLE account_balance_transaction
DROP FOREIGN KEY account_balance_transaction_ibfk_2,
ADD CONSTRAINT transaction_type_id_fk FOREIGN KEY (transaction_type_id) 
REFERENCES transaction_type (id) ON DELETE CASCADE;

ALTER TABLE account_balance_transaction
DROP INDEX transaction_type_id,
ADD INDEX transaction_type_id_idx (transaction_type_id);