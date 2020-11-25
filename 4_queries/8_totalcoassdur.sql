SELECT c.name AS cohort, SUM(started_at - completed_at) AS total_duration
FROM assistance_requests
JOIN students AS s ON s.id = student_id
JOIN cohorts AS c ON c.id = s.cohort_id
GROUP BY c.name
ORDER BY total_duration DESC;
