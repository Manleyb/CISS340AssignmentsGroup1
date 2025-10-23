# Display the first_name, last_name, latest salary of the 10 higher salaried employees still actively working in the company

-- Select the first name, last name, and salary of employees
SELECT 
    e.first_name,          -- Employee's first name
    e.last_name,           -- Employee's last name
    s.salary               -- Employee's latest salary
FROM employees e           -- 'e' is an alias for the employees table
JOIN salaries s            -- Join the salaries table to get salary info
  ON e.emp_no = s.emp_no   -- Match employees to their salary records
WHERE s.to_date = '9999-01-01'  -- Include only employees still working (active salary)
ORDER BY s.salary DESC     -- Sort results by salary in descending order (highest first)
LIMIT 10;                  -- Show only the top 10 highest-paid active employees
