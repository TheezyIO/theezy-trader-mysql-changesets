ALTER TABLE user
ADD UNIQUE INDEX username_uidx (username);

ALTER TABLE user
ADD UNIQUE INDEX email_uidx (email(255));