-- Q3: Which employee got the largest salary increase since they started working in the company? 
--(display emp_no, salary increase in percentage rounded in 2 decimal places, e.g., 100%)


--selects employee number
SELECT s1.emp_no,

--Salary increase percentage: (latest salary - first salary) / first salary * 100
ROUND(((s2.salary - s1.salary) / s1.salary) * 100, 2) AS salary_increase_percent

-- Self-join to connect the first salary record (s1) with the latest salary record (s2)
FROM salaries s1
JOIN salaries s2 ON s1.emp_no = s2.emp_no
WHERE 
    --s1: first (oldest) salary record for the employee
    s1.from_date = (
        SELECT MIN(from_date)
        FROM salaries
        WHERE emp_no = s1.emp_no
    )

    --s2: most recent salary record for the employee
    AND s2.from_date = (
        SELECT MAX(from_date)
        FROM salaries
        WHERE emp_no = s1.emp_no
    )

-- Sort so the biggest percentage increase comes first
ORDER BY salary_increase_percent DESC

-- Show only the top employee with the largest increase
LIMIT 1;