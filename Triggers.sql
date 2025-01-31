
-- Trigger for a new comment
CREATE TRIGGER new_comment_notification
ON comments
AFTER INSERT
AS
BEGIN
    DECLARE @user_id INT, @post_id INT, @message VARCHAR(255);

    -- Get the user_id of the post's owner
    SELECT @post_id = post_id FROM inserted;
    SELECT @user_id = user_id FROM post WHERE post_id = @post_id;

    -- Create the notification message
    SET @message = 'You have a new comment on your post.';

    -- Insert the notification for the user
    INSERT INTO notifications (user_id, notification_type, message)
    VALUES (@user_id, 'Comment', @message);
END;


-- update the total_likes count for a post whenever a new like is added.
CREATE TRIGGER update_post_likes_interaction
ON post_likes
AFTER INSERT
AS
BEGIN
    DECLARE @post_id INT;
    -- Get the post_id from the inserted record
    IF EXISTS (SELECT * FROM inserted WHERE post_id IS NOT NULL)
    BEGIN
        SELECT @post_id = post_id FROM inserted;
    END
    -- Update the interaction count (likes) for the post
    UPDATE post
    SET total_likes = (SELECT COUNT(*) FROM post_likes WHERE post_id = @post_id)
    WHERE post_id = @post_id;
END;


--update the total_comments count for a post whenever a new comment is added.
CREATE TRIGGER update_post_comments_interaction
ON comments
AFTER INSERT
AS
BEGIN
    DECLARE @post_id INT;
    -- Get the post_id from the inserted record
    IF EXISTS (SELECT * FROM inserted WHERE post_id IS NOT NULL)
    BEGIN
        SELECT @post_id = post_id FROM inserted;
    END
    -- Update the interaction count (comments) for the post
    UPDATE post
    SET total_comments = (SELECT COUNT(*) FROM comments WHERE post_id = @post_id)
    WHERE post_id = @post_id;
END;