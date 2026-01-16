-- Difficulty: Hard

/*
The North Pole Network wants to see who's the most active in the holiday chat each day. 
Write a query to count how many messages each user sent, then find the most active user(s) each day.
If multiple users tie for first place, return all of them.
*/

WITH daily_counts AS (
    SELECT 
        DATE(m.sent_at) AS msg_date,
        u.user_id,
        u.user_name,
        COUNT(*) AS message_count
    FROM npn_messages m
    JOIN npn_users u 
        ON m.sender_id = u.user_id
    GROUP BY msg_date, u.user_id
),
