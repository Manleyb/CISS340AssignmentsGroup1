
SELECT date_part('year', age(now(), MIN(birth_date)))
from employees;

--account for leap year use 365.25