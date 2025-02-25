CREATE TABLE Portfolio (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    description VARCHAR(300),
    maxMembers INT NOT NULL,
    minimumDeposit BIGINT UNSIGNED NOT NULL,
    feeRate BIGINT UNSIGNED NOT NULL,
    lockPeriod INT NOT NULL,
    created DATETIME(3) NOT NULL,
    modified DATETIME(3) NOT NULL,
    userId VARCHAR(255),
    FOREIGN KEY (userId) REFERENCES User(id) ON DELETE CASCADE
);