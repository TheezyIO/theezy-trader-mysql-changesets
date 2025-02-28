CREATE TABLE stock_daily_price (
    id INT PRIMARY KEY AUTO_INCREMENT,
    price BIGINT UNSIGNED NOT NULL,
    stock_id INT,
    event_time DATE NOT NULL,
    
    FOREIGN KEY (stock_id) REFERENCES stock(id) ON DELETE CASCADE
);
