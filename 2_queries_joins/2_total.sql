SELECT SUM(asub.duration) AS total_duration
FROM assignment_submissions AS asub
INNER JOIN students AS s
ON asub.student_id = s.id
INNER JOIN cohorts AS c
ON s.cohort_id = c.id
WHERE c.name = 'FEB12';
