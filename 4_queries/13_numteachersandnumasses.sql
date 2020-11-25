SELECT t.name AS teacher, c.name AS cohort, COUNT(t.name) AS total_assistances
FROM teachers AS t
JOIN assistance_requests AS ar ON ar.teacher_id = t.id
JOIN students AS s ON s.id = ar.student_id
JOIN cohorts AS c ON c.id = s.cohort_id
WHERE c.name LIKE 'JUL02'
GROUP BY t.name, c.name
ORDER BY t.name;
