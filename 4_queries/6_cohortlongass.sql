SELECT c.name AS name, AVG(started_at - completed_at) AS average_assistance_time
FROM assistance_requests
JOIN students AS s ON s.id = student_id
JOIN cohorts AS c ON c.id = s.cohort_id
GROUP BY c.name
ORDER BY average_assistance_time ASC
LIMIT 1;
