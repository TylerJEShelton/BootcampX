SELECT
  day,
  COUNT(name) as number_of_assignments,
  SUM(duration) as duration
FROM
  assignments
GROUP BY
  day
ORDER BY
  day ASC;