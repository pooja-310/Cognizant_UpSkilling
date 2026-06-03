USE cog;
SELECT 
    e.event_id,
    e.title,
    AVG(
        TIMESTAMPDIFF(
            MINUTE,
            s.start_time,
            s.end_time
        )
    ) AS avg_session_duration_minutes
FROM events e
JOIN sessions s
ON e.event_id = s.event_id
GROUP BY e.event_id, e.title;