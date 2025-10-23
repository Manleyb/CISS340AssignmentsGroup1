--Display the youngest and the oldest employee currently working for the company.


SELECT 
    e.first_name,        -- Manager's first name
    e.last_name        -- Manager's last name
FROM dept_emp de     -- 'dm' is an alias for the dept_manager table
JOIN employees e 
ON de.emp_no = e.emp_no         
  
WHERE de.to_date = '9999-01-01' -

ORDER BY e.birth_date ASC    
LIMIT 1;



UNION ALL

SELECT 
    e.first_name,        -- Manager's first name
    e.last_name        -- Manager's last name
FROM dept_emp de     -- 'dm' is an alias for the dept_manager table
JOIN employees e 
ON de.emp_no = e.emp_no         -- Match each manager with their employee record
   -- Match each manager's department number with its name
WHERE de.to_date = '9999-01-01' -- Only include current (active) managers

ORDER BY e.birth_date DESC     -- Sort results by salary in descending order (highest first)
LIMIT 1; 