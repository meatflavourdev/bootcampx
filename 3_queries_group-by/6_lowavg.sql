SELECT s.name AS student, AVG(asub.duration) AS average_assignment_duration, AVG(a.duration) AS average_estimated_duration
FROM students AS s
JOIN assignment_submissions AS asub
ON asub.student_id = s.id
JOIN assignments AS a
ON a.id = asub.assignment_id
WHERE s.end_date IS NULL
GROUP BY student
HAVING AVG(asub.duration) < AVG(a.duration)
ORDER BY average_assignment_duration DESC;
