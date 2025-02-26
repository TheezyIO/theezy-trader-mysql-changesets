CREATE TABLE portfolio_follower_notification (
    id INT PRIMARY KEY AUTO_INCREMENT,
    portfolio_follower_id INT,
    notification_event_type_id INT,
    read_time DATETIME(3) NULL, -- Null if unread, timestamp if read
    event_time DATETIME(3) NOT NULL,
    
    FOREIGN KEY (portfolio_follower_id) REFERENCES portfolio_follower(id) ON DELETE CASCADE,
    FOREIGN KEY (notification_event_type_id) REFERENCES notification_event_type(id) ON DELETE CASCADE
);