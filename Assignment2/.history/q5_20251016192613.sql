
-- Display the first name, last name and rounded years worked of all employees sorted in a desceding order based on the rounded years


SELECT
  first_name,
  last_name,
  ROUND((CURRENT_DATE - hire_date)) AS years_worked
WHERE to_date > CURRENT_DATE;
FROM
  employees
ORDER BY
  years_worked DESC;

 SELECT * FROM EMPLOYEES


--WHERE d.to_date >CURRENT_DATE