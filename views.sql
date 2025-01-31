

--view for user to get all posts 

CREATE VIEW user_posts AS
SELECT p.post_id, p.caption, p.location, p.created_at, p.user_id
FROM post p;

SELECT * FROM user_posts WHERE user_id = 109;

--View of Trending Posts Based on Interactions (likes and comments)
CREATE VIEW trending_posts AS
SELECT p.post_id, p.caption, p.location, 
       COUNT(pl.post_id) AS total_likes, 
       COUNT(c.comment_id) AS total_comments
FROM post p
LEFT JOIN post_likes pl ON p.post_id = pl.post_id
LEFT JOIN comments c ON p.post_id = c.post_id
GROUP BY p.post_id, p.caption, p.location;

SELECT * FROM trending_posts
ORDER BY total_likes + total_comments DESC;

-- view to shows the number of posts and likes for each user.

CREATE VIEW user_stats AS
SELECT user_id, 
       (SELECT COUNT(*) 
        FROM post
        WHERE post.user_id = users.user_id) AS total_posts,
       (SELECT COUNT(*) 
        FROM post_likes 
        WHERE post_likes.user_id = users.user_id) AS total_likes
FROM users;

SELECT * FROM user_stats;
