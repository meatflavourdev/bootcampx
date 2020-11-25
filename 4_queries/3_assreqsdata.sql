SELECT t.name AS teacher, s.name AS student, a.name AS assignment,
AGE(completed_at, started_at) as duration
FROM assistance_requests
JOIN teachers AS t ON t.id = teacher_id
JOIN students AS s ON s.id = student_id
JOIN assignments AS a ON a.id = assignment_id
ORDER BY duration;
