-- Common Table Expressions (CTE)
show databases;
use Parks_and_Recreation;
with cte_example as 
(
select gender, avg(salary) avg_sal, 
max(salary) max_sal, 
min(salary) min_sal, 
count(salary) count_sal
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id
group by gender
)
select avg(avg_sal)
from cte_example;

-- CTE query vs SubQueries
select avg(avg_sal) as average_salary
from (select gender, avg(salary) avg_sal, 
max(salary) max_sal, 
min(salary) min_sal, 
count(salary) count_sal
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id group by gender) 
as cte_example;

-- Nested CTE's in SQL
with cte_example as 
(
select employee_id, gender, birth_date
from employee_demographics
where birth_date > '1985-01-01'
),
cte_example2 as 
(
select employee_id, salary
from employee_salary 
where salary > 50000 
)
select * 
from cte_example
join cte_example2
on cte_example.employee_id = cte_example2.employee_id;