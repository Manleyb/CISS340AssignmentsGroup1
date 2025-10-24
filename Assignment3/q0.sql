--Display the youngest and the oldest employee currently working for the company.


(
SELECT 
    e.first_name,        
    e.last_name,       
	e.birth_date
FROM dept_emp de     
JOIN employees e 
ON de.emp_no = e.emp_no         
  
WHERE de.to_date = '9999-01-01' 



ORDER BY e.birth_date ASC    
LIMIT 1

)

UNION ALL
(
SELECT 
    e.first_name,        
    e.last_name,       
	e.birth_date
FROM dept_emp de     
JOIN employees e 
ON de.emp_no = e.emp_no         
WHERE de.to_date = '9999-01-01' 

ORDER BY e.birth_date DESC     
LIMIT 1 
)