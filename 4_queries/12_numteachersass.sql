SELECT DISTINCT t.name AS teacher, c.name AS cohort
FROM teachers AS t
JOIN assistance_requests AS ar ON ar.teacher_id = t.id
JOIN students AS s ON s.id = ar.student_id
JOIN cohorts AS c ON c.id = s.cohort_id
WHERE c.name LIKE 'JUL02'
ORDER BY t.name;
