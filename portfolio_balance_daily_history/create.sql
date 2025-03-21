CREATE TABLE portfolio_balance_daily_history (
	id BIGINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	portfolio_balance_id INT NOT NULL,
	cash INTEGER UNSIGNED NOT NULL,
	equity INTEGER UNSIGNED NOT NULL,
	event_date DATE NOT NULL,
	CONSTRAINT portfolio_balance_id_fk FOREIGN KEY (portfolio_balance_id) REFERENCES portfolio_balance (id)
);
