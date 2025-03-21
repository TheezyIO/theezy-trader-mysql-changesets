CREATE TABLE portfolio_daily_value (
	id UNSIGNED BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	portfolio_id UNSIGNED INTEGER NOT NULL,
	cash UNSIGNED INTEGER NOT NULL,
	equity UNSIGNED INTEGER NOT NULL,
	event_date DATE NOT NULL DEFAULT CURRENT_DATE,
	CONSTRAINT portfolio_id_fk FOREIGN KEY (portfolio_id) REFERENCES portfolio (id)
);
