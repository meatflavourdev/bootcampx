SELECT SUM(asub.duration) AS total_duration
FROM assignment_submissions AS asub
INNER JOIN students AS s
ON asub.student_id = s.id
WHERE s.name = 'Ibrahim Schimmel';
