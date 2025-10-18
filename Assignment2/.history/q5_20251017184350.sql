
-- Display the first name, last name and rounded years worked of all employees sorted in a desceding order based on the rounded years


SELECT
  first_name,
  last_name,
  ROUND((CURRENT_DATE - hire_date/365.25)) AS years_worked
JOIN dept_emp ON employees.em_no =dept_emp.emp_no
WHERE dept_emp.to_date > CURRENT_DATE
FROM
  employees
ORDER BY
  years_worked DESC;



--WHERE d.to_date >CURRENT_DATE  
-- need to check if current employee 

 --SELECT * FROM EMPLOYEES

