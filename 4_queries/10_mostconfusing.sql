SELECT a.id, name, day, chapter, count(*) AS total_requests
FROM assignments AS a
JOIN assistance_requests AS assreq ON assreq.assignment_id = a.id
GROUP BY a.id
ORDER BY total_requests DESC;
