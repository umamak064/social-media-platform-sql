create database social_media;
use social_media;

CREATE TABLE users (
    user_id INTEGER identity(100,1) PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    profile_photo_url VARCHAR(255) DEFAULT 'https://imgur.com/a/Ul2JFUR',
    bio VARCHAR(255),
    created_at DATETIME DEFAULT GETDATE(),
	email VARCHAR(30) NOT NULL
);

CREATE TABLE login (
  login_id INT NOT NULL identity(1,1) PRIMARY KEY,
  user_id INT NOT NULL,
  ip VARCHAR(50) NOT NULL,
  login_time DATETIME NOT NULL DEFAULT GETDATE(),
  FOREIGN KEY(user_id) REFERENCES users(user_id)
);

CREATE TABLE follows (
    follower_id INT NOT NULL,
    followee_id INT NOT NULL,
    created_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (follower_id) REFERENCES users(user_id),
    FOREIGN KEY (followee_id) REFERENCES users(user_id),
    PRIMARY KEY (follower_id, followee_id)
);

CREATE TABLE photos (
    photo_id INT IDENTITY(1,1) PRIMARY KEY, 
    photo_url VARCHAR(255) NOT NULL UNIQUE, 
    post_id INT NOT NULL,
    created_at DATETIME DEFAULT GETDATE(), 
    size FLOAT CHECK (size < 5) 
);

CREATE TABLE videos (
    video_id INT IDENTITY(1,1) PRIMARY KEY, 
    video_url VARCHAR(255) NOT NULL UNIQUE,
    post_id INT NOT NULL,
    created_at DATETIME DEFAULT GETDATE(),
    size FLOAT CHECK (size < 10)
);

CREATE TABLE post (
    post_id INT IDENTITY(1,1) PRIMARY KEY,
    photo_id INT,
    video_id INT,
    user_id INT NOT NULL,
    caption VARCHAR(200), 
    location VARCHAR(50),
    created_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (photo_id) REFERENCES photos(photo_id),
    FOREIGN KEY (video_id) REFERENCES videos(video_id)
);
CREATE TABLE post_likes (
    user_id INT NOT NULL,
    post_id INT NOT NULL,
    created_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(post_id) REFERENCES post(post_id),
    PRIMARY KEY(user_id, post_id)
);
CREATE TABLE comments (
    comment_id INT IDENTITY(1,1) PRIMARY KEY,
    comment_text VARCHAR(255) NOT NULL,
    post_id INT NOT NULL,
    user_id INT NOT NULL,
    created_at DATETIME DEFAULT GETDATE(), 
    FOREIGN KEY(post_id) REFERENCES post(post_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);
CREATE TABLE comment_likes (
    user_id INT NOT NULL,
    comment_id INT NOT NULL,
    created_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(comment_id) REFERENCES comments(comment_id),
    PRIMARY KEY(user_id, comment_id)
);
CREATE TABLE hashtags (
  hashtag_id INT IDENTITY(1,1) PRIMARY KEY,  
  hashtag_name VARCHAR(255) UNIQUE,          
  created_at DATETIME DEFAULT GETDATE()      
)
CREATE TABLE hashtag_follow (
    user_id INT NOT NULL,
    hashtag_id INT NOT NULL,
    created_at DATETIME DEFAULT GETDATE(), -- Use GETDATE() for current timestamp
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(hashtag_id) REFERENCES hashtags(hashtag_id),
    PRIMARY KEY(user_id, hashtag_id)
);

CREATE TABLE post_tags (
    post_id INT NOT NULL,
    hashtag_id INT NOT NULL,
    FOREIGN KEY(post_id) REFERENCES post(post_id),
    FOREIGN KEY(hashtag_id) REFERENCES hashtags(hashtag_id),
    PRIMARY KEY(post_id, hashtag_id)
);

CREATE TABLE bookmarks (
    post_id INT NOT NULL,
    user_id INT NOT NULL,
    created_at DATETIME DEFAULT GETDATE(), 
    FOREIGN KEY(post_id) REFERENCES post(post_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    PRIMARY KEY(user_id, post_id)
);
CREATE TABLE notifications (
    notification_id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT NOT NULL,
    notification_type VARCHAR(50),
    message VARCHAR(255),
    created_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);