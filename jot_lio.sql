CREATE VIEW combined_consumption AS
SELECT 
    'JioStar' AS platform,
    user_id,
    device_type,
    total_watch_time_mins
FROM jotstar_db.content_consumption

UNION ALL

SELECT 
    'LioCinema' AS platform,
    user_id,
    device_type,
    total_watch_time_mins
FROM liocinema_db.content_consumption;

SELECT platform, SUM(total_watch_time_mins)
FROM combined_consumption
GROUP BY platform;

SELECT platform, genre, total_content
FROM (
    SELECT platform, genre, COUNT(*) AS total_content,
           RANK() OVER (PARTITION BY platform ORDER BY COUNT(*) DESC) AS rnk
    FROM (
        SELECT 'JioStar' AS platform, genre FROM jotstar_db.contents
        UNION ALL
        SELECT 'LioCinema' AS platform, genre FROM liocinema_db.contents
    ) AS combined
    GROUP BY platform, genre
) ranked
WHERE rnk <= 5;

SELECT device_type, AVG(total_watch_time_mins) AS avg_watch_time
FROM content_consumption
GROUP BY device_type
ORDER BY avg_watch_time DESC;


SELECT 
    subscription_plan,
    COUNT(*) AS inactive_users
FROM subscribers
WHERE last_active_date < CURRENT_DATE - INTERVAL 30 DAY
GROUP BY subscription_plan;

SELECT subscription_plan, new_subscription_plan, COUNT(*) AS changes
FROM subscribers
WHERE new_subscription_plan IS NOT NULL
GROUP BY subscription_plan, new_subscription_plan;

SELECT subscription_plan, new_subscription_plan, COUNT(*) AS changes
FROM liocinema_db.subscribers
WHERE new_subscription_plan IS NOT NULL
GROUP BY subscription_plan, new_subscription_plan;

SELECT platform, subscription_plan,
       COUNT(*) * 199 AS estimated_revenue
FROM (
    SELECT 'JioStar' AS platform, subscription_plan
    FROM jotstar_db.subscribers

    UNION ALL

    SELECT 'LioCinema' AS platform, subscription_plan
    FROM liocinema_db.subscribers
) AS combined_subscribers
GROUP BY platform, subscription_plan
ORDER BY platform, estimated_revenue DESC;

SELECT age_group, city_tier, COUNT(*) AS users
FROM jotstar_db.subscribers
GROUP BY age_group, city_tier
ORDER BY users DESC;

SELECT age_group, city_tier, COUNT(*) AS users
FROM liocinema_db.subscribers
GROUP BY age_group, city_tier
ORDER BY users DESC;