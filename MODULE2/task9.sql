USE cog;
SELECT 
    u.user_id,
    u.full_name AS organizer_name,
    e.status,
    COUNT(e.event_id) AS total_events
FROM users u
JOIN events e ON u.user_id = e.organizer_id
GROUP BY u.user_id, u.full_name, e.status
ORDER BY u.full_name;
