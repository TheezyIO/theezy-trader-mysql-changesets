CREATE TABLE portfolio_follower (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id VARCHAR(255),
    portfolio_id INT,
    created DATETIME(3) NOT NULL,
    
    FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE,
    FOREIGN KEY (portfolio_id) REFERENCES portfolio(id) ON DELETE CASCADE
);