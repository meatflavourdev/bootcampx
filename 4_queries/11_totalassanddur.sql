SELECT day, COUNT(*) as number_of_assignments, SUM(duration) as duration
FROM assignments AS a
GROUP BY day
ORDER BY day ASC;
