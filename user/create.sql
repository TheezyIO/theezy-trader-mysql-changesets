# Create intial User table
CREATE TABLE user (
	id VARCHAR(255) NOT NULL PRIMARY KEY,
	name VARCHAR(100) NULL,
	username VARCHAR(30) NOT NULL,
	email TEXT NOT NULL,
	created_at TIMESTAMP NOT NULL
);
