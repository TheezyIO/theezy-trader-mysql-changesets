ALTER TABLE portfolio
DROP FOREIGN KEY portfolio_ibfk_1;

ALTER TABLE portfolio
DROP INDEX user_id,
ADD INDEX user_id_idx (user_id);

ALTER TABLE portfolio
ADD CONSTRAINT portfolio_user_id_fk FOREIGN KEY (user_id) 
REFERENCES user (id) ON DELETE CASCADE;

ALTER TABLE portfolio
DROP INDEX idx_name_user,
ADD UNIQUE INDEX name_user_id_uidx (name, user_id);