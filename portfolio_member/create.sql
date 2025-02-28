CREATE TABLE portfolio_member (
    id INT PRIMARY KEY AUTO_INCREMENT,
    portfolio_id INT,
    user_id VARCHAR(255),
    contribution BIGINT UNSIGNED NOT NULL,
    earnings BIGINT UNSIGNED NOT NULL,
    created DATETIME(3) NOT NULL,
    
    FOREIGN KEY (portfolio_id) REFERENCES portfolio(id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE
);