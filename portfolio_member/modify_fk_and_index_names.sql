ALTER TABLE portfolio_member
DROP FOREIGN KEY portfolio_member_ibfk_1,
ADD CONSTRAINT portfolio_id_fk FOREIGN KEY (portfolio_id) REFERENCES portfolio (id) ON DELETE CASCADE;

ALTER TABLE portfolio_member
DROP FOREIGN KEY portfolio_member_ibfk_2,
ADD CONSTRAINT user_id_fk FOREIGN KEY (user_id) REFERENCES user (id) ON DELETE CASCADE;

ALTER TABLE portfolio_member
DROP INDEX portfolio_id,
ADD INDEX portfolio_id_idx (portfolio_id);

ALTER TABLE portfolio_member
DROP INDEX user_id,
ADD INDEX user_id_idx (user_id);