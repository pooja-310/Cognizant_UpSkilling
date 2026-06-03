USE cog;
SELECT 
    e.event_id,
    e.title,
    e.city,
    e.status
FROM events e
LEFT JOIN sessions s
ON e.event_id = s.event_id
WHERE s.session_id IS NULL;