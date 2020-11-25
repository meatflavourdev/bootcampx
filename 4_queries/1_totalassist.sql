SELECT COUNT(*) AS total_assistances, name
FROM teachers
JOIN assistance_requests
ON teacher_id = teachers.id
WHERE teachers.name LIKE 'Waylon Boehm'
GROUP BY teachers.name;
