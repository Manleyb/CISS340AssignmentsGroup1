--You will need two queries for this one. It can be done in one but it will require too much copying.
--Using the previous query, create a view (this will help you from copy pasting it) and display the ratio of women to men for each department. Display department and ratio rounded in 2 decimals points.
--For the view use: CREATE OR REPLACE VIEW
--Otherwise scripts will fail if a view exists
CREATE OR REPLACE VIEW RATIO AS
SELECT d.dept_name, gender, COUNT(gender)
FROM employees e
LEFT JOIN dept_emp de ON e.emp_no = de.emp_no
LEFT JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = ANY (SELECT dept_name FROM departments)
GROUP BY dept_name, gender;

SELECT dept_name, 
	 --gets the sum of female employees in a dept and
	 --divides it by total # of employees in dept 
	ROUND(SUM(CASE WHEN gender = 'F' THEN count ELSE 0 END)/
	SUM(count), 2) AS female_percent,
	--gets the sum of male employees in a dept and
	 --divides it by total # of employees in dept
	ROUND(SUM(CASE WHEN gender = 'M' THEN count ELSE 0 END)/
	SUM(count),2) AS male_percent
FROM RATIO
GROUP BY dept_name;
