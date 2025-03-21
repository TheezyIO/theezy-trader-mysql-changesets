CREATE TABLE portfolio_daily_value (
	id BIGINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	portfolio_id INTEGER UNSIGNED NOT NULL,
	cash INTEGER UNSIGNED NOT NULL,
	equity INTEGER UNSIGNED NOT NULL,
	event_date DATE NOT NULL,
	CONSTRAINT portfolio_id_fk FOREIGN KEY (portfolio_id) REFERENCES portfolio (id)
);
