-- Display the number of employees whose first name is Elvis
SELECT first_name, COUNT(first_name)
FROM employees
-- WHERE first_name = 'Elvis'
GROUP BY first_name;
