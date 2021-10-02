SELECT cohorts.name as cohorts_name, COUNT(students.cohort_id)
FROM cohorts
INNER JOIN students ON students.cohort_id = cohorts.id
GROUP BY cohorts_name
HAVING COUNT(students.cohort_id) >= 18
ORDER BY COUNT(students.cohort_id) ASC;