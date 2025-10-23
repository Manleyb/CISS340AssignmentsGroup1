# Display the first name and last name as well as department name of all current department managers. SORT by department name, last name, first name

-- Display the first name, last name, and department name of all current department managers
SELECT 
    e.first_name,        -- Manager's first name
    e.last_name,         -- Manager's last name
    d.dept_name          -- Name of the department they manage
FROM dept_manager dm     -- 'dm' is an alias for the dept_manager table
JOIN employees e ON dm.emp_no = e.emp_no         -- Match each manager with their employee record
JOIN departments d ON dm.dept_no = d.dept_no     -- Match each manager's department number with its name
WHERE dm.to_date = '9999-01-01' -- Only include current (active) managers
ORDER BY 
    d.dept_name,         -- Sort first by department name alphabetically
    e.last_name,         -- Then by manager's last name
    e.first_name;        -- Finally by manager's first name
