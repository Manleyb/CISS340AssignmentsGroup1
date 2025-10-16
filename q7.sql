--Display two columns: sex, and sex counts. For all employees that work in the company.

--Displays all employees (current and former)
SELECT gender AS sex, 
       COUNT(*) AS sex_count
FROM employees
GROUP BY gender;



--Displays only current employees (based on their to_date).
SELECT e.gender AS sex,
       COUNT(*) AS sex_count
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
WHERE de.to_date > CURRENT_DATE
GROUP BY e.gender;