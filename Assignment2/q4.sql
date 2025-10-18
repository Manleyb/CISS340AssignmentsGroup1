SELECT first_name, last_name, birth_date
FROM employees
WHERE first_name = 'Elvis'
ORDER BY birth_date ASC
LIMIT 1;