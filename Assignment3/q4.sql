--How many women and how many men are working on each department. Display three columns: dept name, gender and number of people working
SELECT d.dept_name, gender, COUNT(gender)
FROM employees e
LEFT JOIN dept_emp de ON e.emp_no = de.emp_no
LEFT JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = ANY (SELECT dept_name FROM departments)
GROUP BY dept_name, gender;