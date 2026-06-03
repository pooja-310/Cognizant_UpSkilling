USE cog;
SELECT 
    e.event_id,
    e.title,
    COUNT(s.session_id) AS sessions_between_10_12
FROM events e
JOIN sessions s ON e.event_id = s.event_id
WHERE TIME(s.start_time) BETWEEN '10:00:00' AND '12:00:00'
GROUP BY e.event_id, e.title;