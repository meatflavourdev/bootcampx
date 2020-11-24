SELECT s.name AS student, AVG(asub.duration) AS average_assignment_duration
FROM assignment_submissions AS asub
JOIN students AS s
ON asub.student_id = s.id
WHERE s.end_date IS NULL
GROUP BY s.name
ORDER BY average_assignment_duration DESC;
