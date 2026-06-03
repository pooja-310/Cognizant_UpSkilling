USE cog;
SELECT u.user_id, u.full_name
FROM users u
WHERE u.user_id NOT IN (
    SELECT DISTINCT r.user_id
    FROM registrations r
    WHERE r.registration_date >= CURDATE() - INTERVAL 90 DAY
);