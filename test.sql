/* SELECT AVG(total_students) as avg_students
FROM (
  SELECT count(students) AS total_students
  FROM students
  JOIN cohorts on cohorts.id = cohort_id
  GROUP BY cohorts
) as totals_table;
 */

SELECT assignments.name
FROM assignments
WHERE id NOT IN
(
  SELECT assignment_id
  FROM assignment_submissions
  JOIN students ON students.id = student_id
  WHERE students.name = 'Ibrahim Schimmel'
);
