SELECT
  first_name,
  last_name,
  ROUND((CURRENT_DATE - hire_date) / 365.25) AS years_worked
FROM
  employees
ORDER BY
  years_worked DESC;