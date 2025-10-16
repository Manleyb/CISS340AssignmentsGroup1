
SELECT date_part('year', age(now(), MIN(birth_date)))
from employees;