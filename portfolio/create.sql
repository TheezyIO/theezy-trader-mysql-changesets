CREATE TABLE portfolio (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    description VARCHAR(300),
    max_members INT NOT NULL,
    minimum_deposit BIGINT UNSIGNED NOT NULL,
    fee_rate BIGINT UNSIGNED NOT NULL,
    lock_period INT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    modified_at TIMESTAMP NOT NULL,
    user_id VARCHAR(255),
    
    FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE
);