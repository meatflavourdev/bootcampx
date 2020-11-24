SELECT c.name AS cohort_name, COUNT(*) AS total_submissions
FROM cohorts AS c
JOIN students AS s
ON c.id = s.cohort_id
JOIN assignment_submissions AS asub
ON s.id = asub.student_id
GROUP BY c.name
ORDER BY total_submissions DESC;
