


--QUERIES FOR PROJECT FUNCTIONALITIES:

-- 1. Most Used Hashtags
SELECT 
    hashtags.hashtag_name AS 'Trending Hashtags', 
    COUNT(post_tags.hashtag_id) AS 'Times Used'
FROM hashtags
JOIN post_tags ON hashtags.hashtag_id = post_tags.hashtag_id
GROUP BY hashtags.hashtag_name
ORDER BY COUNT(post_tags.hashtag_id) DESC;

--OVERVIEW:
SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE';

--Demonstrate inserting a new user and login entry.
INSERT INTO users(username, profile_photo_url, bio, email) 
VALUES ('SARA', 'https://imgur.com/newuser', 'Excited to join!', 'new.user@gmail.com');

INSERT INTO login (user_id, ip) 
VALUES (110, '192.168.1.2');

SELECT * FROM users WHERE username = 'SARA';
SELECT * FROM login WHERE user_id = 110;

--Add a new post and associate it with a photo or video.
INSERT INTO post (photo_id, video_id, user_id, caption, location) 
VALUES (1, NULL, 102, 'Excited to start!', 'New York, USA');

SELECT * FROM post WHERE user_id = 102;

--Show how posts are liked and commented on, and how totals update via triggers.
INSERT INTO post_likes (user_id, post_id) VALUES (109, 5);
INSERT INTO comments (comment_text, post_id, user_id) 
VALUES ('Amazing post!', 8, 102);

SELECT post_id, total_likes, total_comments 
FROM post WHERE post_id = 8;

--Run the trending_posts view to showcase popular posts.
SELECT * FROM trending_posts ORDER BY total_likes + total_comments DESC;

--Show the total posts and likes for a specific user using user_stats view.
SELECT * FROM user_stats WHERE user_id = 100;

--Show the most frequently used hashtags.
SELECT hashtags.hashtag_name AS 'Trending Hashtags', COUNT(post_tags.hashtag_id) AS 'Times Used'
FROM hashtags
JOIN post_tags ON hashtags.hashtag_id = post_tags.hashtag_id
GROUP BY hashtags.hashtag_name
ORDER BY COUNT(post_tags.hashtag_id) DESC;

--Show a notification triggered by a new comment.
INSERT INTO comments (comment_text, post_id, user_id) VALUES ('Interesting read!', 5, 101);

SELECT * FROM notifications WHERE user_id = (SELECT user_id FROM post WHERE post_id = 5);

--Demonstrate bookmarking and following functionality.
INSERT INTO bookmarks (post_id, user_id) VALUES (6, 103);
INSERT INTO follows (follower_id, followee_id) VALUES (103, 104);

SELECT * FROM bookmarks WHERE user_id = 103;
SELECT * FROM follows WHERE follower_id = 103;

--Run queries with and without indexes to show performance difference.
SELECT * FROM users WHERE user_id = 104;
SELECT * FROM post WHERE post_id = 6;



