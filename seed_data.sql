--sample record

INSERT INTO users(username, profile_photo_url, bio, email) VALUES 
('Ahmed Raza', 'https://imgur.com/a/wG1gapu', 'Tech enthusiast || Software Engineer at NUST', 'ahmed.raza@gmail.com'),
('Ali Khan', 'https://imgur.com/a/uygrR4O', 'Profile under construction', 'ali.khan@shop.pk'),
('Sana Malik', 'https://imgur.com/a/wG1gapu', 'Passionate about coding and coffee || IT at LUMS', 'sana.malik@designworld.pk'),
('Hina Qureshi', 'https://imgur.com/a/5oAO1FM', 'Ambitious and creative || NUST graduate', 'hina.qureshi@gmail.com'),
('Osman Tariq', 'https://imgur.com/a/3UUvlBV', 'Dream chaser || Tech aficionado', 'osman.tariq@cart.pk'),
('Bilal Shah', 'https://imgur.com/a/uygrR4O', 'Exploring the world, one step at a time', 'bilal.shah@gold.pk'),
('Zain Abbas', 'https://imgur.com/a/wG1gapu', 'Hospitality industry professional', 'zain.abbas@gmail.com'),
('Faizan Ali', 'https://imgur.com/a/5oAO1FM', 'Football enthusiast || Traveler', 'faizan.ali@gmail.com'),
('Ahsan Sheikh', 'https://imgur.com/a/5oAO1FM', 'Inspired by nature and technology', 'ahsan.sheikh@gmail.com'),
('Hassan Javed', 'https://imgur.com/a/5oAO1FM', 'Living life with passion and determination', 'hassan.javed@yahoo.com');


INSERT INTO LOGIN (user_id, ip) 
VALUES 
    (100, '186.83.147.14'),
    (101, '95.43.246.66'),
    (102, '105.238.37.204'),
    (103, '13.120.97.136'),
    (103, '0.83.214.172'),
    (102, '20.182.93.222'),
    (104, '200.237.53.32'),
    (105, '41.81.231.81'),
    (106, '24.223.2.33'),
    (101, '8.168.37.68'),
    (107, '129.91.145.75'),
    (108, '8.65.175.204'),
    (109, '242.220.82.190'),
    (100, '107.137.170.154');


INSERT INTO follows (follower_id, followee_id)
VALUES
(100, 101),
(102, 103),
(104, 105),
(106, 107),
(108, 109),
(109, 100),
(101, 102),
(103, 104),
(105, 106),
(107, 108),
(102, 109);

 INSERT INTO photos (photo_url, post_id, size) VALUES
('https://picsum.photos/100', 26, 4),
('https://picsum.photos/101', 27, 1),
('https://picsum.photos/102', 28, 2),
('https://picsum.photos/103', 29, 1),
('https://picsum.photos/104', 30, 2),
('https://picsum.photos/105', 31, 3),
('https://picsum.photos/106', 32, 4),
('https://picsum.photos/107', 33, 4),
('https://picsum.photos/108', 34, 2),
('https://picsum.photos/109', 35, 2),
('https://picsum.photos/110', 36, 2),
('https://picsum.photos/111', 37, 2),
('https://picsum.photos/112', 38, 2),
('https://picsum.photos/113', 39, 2),
('https://picsum.photos/114', 40, 4);


INSERT INTO videos (video_url, post_id, size) VALUES
('https://www.youtube.com/watch?v=NN_mGhLEg5c', 1, 1),
('https://www.youtube.com/watch?v=LinWJsangs4', 2, 8),
('https://www.youtube.com/watch?v=pSHVbLPWA28', 3, 3),
('https://www.youtube.com/watch?v=0Puv0Pss33M', 4, 2),
('https://www.youtube.com/watch?v=xtf1eHBlh14', 5, 1),
('https://www.youtube.com/watch?v=QQYgCxu988s', 6, 3),
('https://www.youtube.com/watch?v=YgI1CeaGX8A', 7, 3),
('https://www.youtube.com/watch?v=NSAOrGb9orM', 8, 2),
('https://www.youtube.com/watch?v=SQKOs1u_-nk', 9, 7),
('https://www.youtube.com/watch?v=ABFlGuUB5A8', 10, 9);

INSERT INTO post (photo_id, video_id, user_id, caption, location) VALUES
(15, 3, 100, 'HEY!!', 'New York, USA'),
(11, 4, 101, 'Live a good story.', 'Paris, France'),
(6, 2, 102, 'Escape the ordinary.', 'Kyoto, Japan'),
(7, 3, 103, 'The best is yet to come.', 'Cape Town, South Africa'),
(4, 2, 104, 'These are days we live for.', 'Sydney, Australia'),
(8, 1, 105, 'Life happens, coffee helps.', 'Berlin, Germany'),
(12, 1, 106, 'Short sassy cute & classy.', 'Rome, Italy'),
(2, 3, 107, 'The future is bright.', 'Machu Picchu, Peru'),
(3, 4, 108, 'Namastay in bed.', 'Bali, Indonesia'),
(5, 5, 109, 'I have more issues than vogue.', 'Los Angeles, USA'),
(9, 6, 100, 'Life is short. Smile while you still have teeth.', 'Istanbul, Turkey'),
(13, 7, 101, 'Ah, a perfectly captured selfie!', 'Dubai, UAE'),
(10, 8, 102, 'Let’s just be who we are.', 'Cairo, Egypt'),
(14, 9, 103, 'One bad chapter doesn’t me', 'Santorini, Greece'),
(1, 10, 104, 'Cinderella never asked for a prince.', 'Santorini, Greece'),
(15, 3, 105, 'A selfie is worth a thousand words.', 'Petra, Jordan'),
(7, 4, 106, 'Born to stand out with selfies.', 'Amsterdam, Netherlands');


INSERT INTO POST_LIKES(user_id, post_id) VALUES 
(100, 8),
(101, 7),
(102, 9),
(103, 4),
(104, 5),
(105, 6),
(106, 7),
(107, 8),
(108, 9),
(109, 10),
(100, 11),
(101, 12);


INSERT INTO COMMENTS(comment_text, post_id, user_id) VALUES
('You look beautiful in that dress.', 9, 100),
('I wish I had your makeup.', 8, 101),
('You are stunning.', 12, 102),
('That natural beauty tho.', 4, 103),
('You have the most beautiful, sparkling eyes.', 5, 104),
('You have the most beautiful smile.', 6, 105),
('Your sense of fashion is great.', 7, 106),
('I like your hair.', 8, 107),
('You look more beautiful than in the photo.', 9, 108),
('You look stunning.', 10, 109),
('You’re classy.', 11, 100),
('You’re very trendy.', 12, 101),
('Landscape/Scenery:', 13, 102),
('Great shot!', 14, 103),
('Nice shot!!', 15, 104);


INSERT INTO COMMENT_LIKES(user_id, comment_id) VALUES
(100, 1),
(101, 2),
(102, 3),
(103, 4),
(104, 5),
(105, 6),
(106, 7),
(107, 8),
(108, 9),
(109, 10),
(100, 11),
(101, 12);


INSERT INTO hashtags (hashtag_name) VALUES
('travel'),
('fashion'),
('foodie'),
('fitness'),
('love'),
('nature'),
('photography'),
('lifestyle'),
('motivation'),
('art'),
('technology'),
('health'),
('beauty'),
('sports'),
('music');


INSERT INTO hashtag_follow(user_id, hashtag_id) VALUES
(100, 2),
(101, 13),
(102, 10),
(103, 1),
(104, 2),
(105, 6),
(106, 4),
(107, 12),
(108, 13),
(109, 12),
(100, 14),
(101, 15);

INSERT INTO bookmarks(post_id, user_id) VALUES
(7, 100),
(6, 101),
(8, 102),
(4, 103),
(5, 104),
(6, 105),
(7, 106),
(8, 107),
(9, 108),
(10, 109);

INSERT INTO post_tags(post_id, hashtag_id) VALUES
(10, 1),
(11, 2),
(13, 3),
(4, 4),
(5, 5),
(4, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(6, 11),
(12, 12),
(13, 13);

