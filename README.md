# Social Media Database Management System

## Project Overview
This project is a **Social Media Database Management System** designed to manage and optimize various functionalities like user management, post interactions, trending hashtags, and notifications. It includes structured tables, views, and triggers to ensure efficient data handling and retrieval. The current structure is well-suited for supporting a growing social
media platform

## Features
- **User Management**: Register and authenticate users with profile details.
- **Posts & Media**: Users can create posts, upload photos/videos, and add captions.
- **Likes & Comments**: Posts can be liked and commented on, with automatic total updates.
- **Trending Hashtags**: Track the most frequently used hashtags.
- **Trending Posts**: Identify popular posts based on likes and comments.
- **User Statistics**: View total posts and interactions for each user.
- **Notifications**: Users receive notifications for comments and interactions.
- **Bookmarking & Following**: Users can bookmark posts and follow other users.
- **Performance Optimization**: Queries with and without indexing to analyze performance.

## Database Schema
The database consists of multiple tables handling different aspects of the social media system, including:
- **Users**: Stores user information such as username, profile photo, and email.
- **Posts**: Contains user posts, including captions, locations, and media.
- **Hashtags & Post Tags**: Manages hashtags associated with posts.
- **Likes & Comments**: Handles user interactions with posts.
- **Notifications**: Notifies users about new interactions.
- **Bookmarks & Follows**: Enables saving posts and following users.

## Views & Triggers
- **Views**: `trending_posts`, `user_stats` provide insights into trending content and user activity.
- **Triggers**: Automatically update like/comment counts and generate notifications.

## Installation & Setup
1. **Database Setup**  
   - Import the provided SQL script into MySQL or any supported database system.  
   - Ensure all required tables and relationships are correctly set up.

2. **Configuration**  
   - Update database connection settings in your application.

3. **Running the Queries**  
   - Execute SQL queries to test different functionalities such as user registration, posting, liking, commenting, and notifications.

## Usage Instructions
- Create a new user and log in.
- Add posts with media attachments.
- Like and comment on posts.
- Check trending hashtags and posts.
- View user statistics and interactions.
- Follow other users and bookmark posts.

## Performance Considerations
- Indexing is implemented on frequently queried columns for faster retrieval.
- Query optimizations are in place to ensure minimal load on the database.

## License
This project is licensed under the [MIT License](LICENSE).


