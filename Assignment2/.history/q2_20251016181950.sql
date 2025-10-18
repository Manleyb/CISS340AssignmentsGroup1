-- Display the number of employees whose first name is Elvis
SELECT DISTINCT COUNT(emp_no)
FROM employees
-- WHERE first_name = 'Elvis'
GROUP BY first_name;
