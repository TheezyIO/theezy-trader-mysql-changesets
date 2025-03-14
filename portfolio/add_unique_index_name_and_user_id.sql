ALTER TABLE portfolio
ADD UNIQUE INDEX idx_name_user (name, user_id);