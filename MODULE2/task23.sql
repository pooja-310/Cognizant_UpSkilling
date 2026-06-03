USE cog;SELECT 
    DATE_FORMAT(registration_date,'%Y-%m') AS month,
    COUNT(registration_id) AS total_registrations
FROM registrations
WHERE registration_date >= CURDATE() - INTERVAL 12 MONTH
GROUP BY month
ORDER BY month;