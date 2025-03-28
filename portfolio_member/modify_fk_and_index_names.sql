ALTER TABLE portfolio_member
DROP FOREIGN KEY portfolio_member_ibfk_1,
DROP FOREIGN KEY portfolio_member_ibfk_2;

ALTER TABLE portfolio_member
DROP INDEX IF EXISTS portfolio_id,
DROP INDEX IF EXISTS user_id,
ADD INDEX portfolio_id_idx (portfolio_id),
ADD INDEX user_id_idx (user_id);

ALTER TABLE portfolio_member
ADD CONSTRAINT portfolio_id_fk FOREIGN KEY (portfolio_id) 
REFERENCES portfolio (id) ON DELETE CASCADE,
ADD CONSTRAINT user_id_fk FOREIGN KEY (user_id) 
REFERENCES user (id) ON DELETE CASCADE;