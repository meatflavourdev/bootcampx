SELECT COUNT(*) AS total_assistances, name
FROM students
JOIN assistance_requests
ON student_id = students.id
WHERE students.name LIKE 'Elliot Dickinson'
GROUP BY students.name;
