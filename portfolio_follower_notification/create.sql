CREATE TABLE PortfolioFollowerNotification (
    id INT PRIMARY KEY AUTO_INCREMENT,
    portfolioFollowerId INT,
    notificationEventTypeId INT,
    readTime DATETIME(3) NULL, -- Null if unread, timestamp if read
    eventTime DATETIME(3) NOT NULL,
    FOREIGN KEY (portfolioFollowerId) REFERENCES PortfolioFollower(id) ON DELETE CASCADE,
    FOREIGN KEY (notificationEventTypeId) REFERENCES NotificationEventType(id) ON DELETE CASCADE
);