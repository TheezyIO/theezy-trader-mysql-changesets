CREATE TABLE AccountBalance (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cash BIGINT UNSIGNED NOT NULL,
    equity BIGINT UNSIGNED NOT NULL,
    userId VARCHAR(255),
    modified DATETIME(3) NOT NULL,
    FOREIGN KEY (userId) REFERENCES User(id) ON DELETE CASCADE
);