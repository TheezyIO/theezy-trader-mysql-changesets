ALTER TABLE portfolio_follower
DROP FOREIGN KEY portfolio_follower_ibfk_1,
DROP FOREIGN KEY portfolio_follower_ibfk_2;

ALTER TABLE portfolio_follower
DROP INDEX IF EXISTS user_id,
DROP INDEX IF EXISTS portfolio_id,
ADD INDEX user_id_idx (user_id),
ADD INDEX portfolio_id_idx (portfolio_id);

ALTER TABLE portfolio_follower
ADD CONSTRAINT portfolio_follower_user_id_fk FOREIGN KEY (user_id) 
REFERENCES user (id) ON DELETE CASCADE,
ADD CONSTRAINT portfolio_follower_portfolio_id_fk FOREIGN KEY (portfolio_id) 
REFERENCES portfolio (id) ON DELETE CASCADE;