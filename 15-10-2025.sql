show databases;

use university;

show tables;

select * from students;

select * from students order by cgpa desc;

alter table students add is_present boolean;

desc students;

select * from students;

UPDATE students
SET is_present = TRUE
WHERE student_id between 1 and 15;

UPDATE students
SET is_present = FALSE
WHERE student_id between 16 and 30;

SELECT 
    student_id,
    IF(is_present = 1, 'TRUE', 'FALSE') AS is_present
FROM students;

set sql_safe_updates = 0;
UPDATE students
SET is_present = TRUE
WHERE is_present = 1;

UPDATE students
SET is_present = FALSE
WHERE is_present = 0;

select * from students;

ALTER TABLE students
MODIFY is_present VARCHAR(5);

UPDATE students
SET is_present = 'TRUE'
WHERE is_present = '1';

UPDATE students
SET is_present = 'FALSE'
WHERE is_present = '0';

select * from students;

select * from students order by year_of_study, stipend desc;

select gender, count(*) from students
group by gender
having count(*) > 1;

select department, count(*) as total_counts
from students
group by department
having count(*) > 1;

select * from students;
select department, sum(stipend) as Each_Department_Stipend
from students
group by department;

select * from students order by stipend asc;

-- Finding all the students whose salary is between 4000 and 7000 and department is either 'Computer Science' and 'Information Technology'
select * from students
where stipend between 4000 and 7000 and (department = "Computer Science" or department = "Information Technology");

select * from students order by stipend asc;

-- Finding all the students whose salary is not in between 4000 and 7000 and department is not 'Computer Science' and 'Information Technology'
select * from students
where stipend not between 4000 and 7000 and not (department = "Computer Science" or department = "Information Technology");

select * from students;

select department, count(*)
from students 
group by department 
having count(*) > 1;

select 
       department, 
	   count(*) as total_students,
	   case
			when count(*) > 4 then "The students in the deparment are more than 4"
			when count(*) <= 4 then "The students in the deparment are less than equal to 4"
			else "Invalid Data for the students"
		end as DepartmentData
from students 
group by department;

-- JOINS in SQL
create table customers (
ID INT NOT NULL,
NAME VARCHAR(20) NOT NULL, 
AGE INT NOT NULL, 
ADDRESS CHAR(25),
SALARY DECIMAL(10, 2),
PRIMARY KEY(ID)
);

INSERT INTO customers VALUES
(1, 'Ramesh', 32, 'Ahmedabad', 20000.00 ),
(2, 'Khilan', 25, 'Delhi', 15000.00 ),
(3, 'Kaushik', 23, 'Kota', 20000.00 ),
(4, 'Chaitali', 25, 'Mumbai', 65000.00 ),
(5, 'Hardik', 27, 'Bhopal', 85000.00 ),
(6, 'Komal', 22, 'Hyderabad', 45000.00 ),
(7, 'Muffy', 24, 'Indore', 30000.00 );

create table orders (
OID INT NOT NULL, 
DATE VARCHAR(20) NOT NULL,
CUSTOMER_ID INT NOT NULL,
AMOUNT DECIMAL(10, 2)
);

INSERT INTO orders values 
(102, '2009-10-08 00:00:00', 3, 5000.00),
(100, '2009-10-08 00:00:00', 3, 4000.00),
(101, '2009-11-20 00:00:00', 2, 4000.00),
(103, '2008-05-20 00:00:00', 5, 3000.00);

select id, name, age, amount
from customers 
join orders 
on customers.id = orders.customer_id;



select id, name, amount
from customers
inner join orders
on customers.id = orders.customer_id;

-- Achieving the Full Join in MySQL
select * from customers;
select * from orders;

select id, name, amount 
from customers 
left join orders 
on customers.id = orders.customer_id
union 
select id, name, amount 
from customers 
right join orders 
on customers.id = orders.customer_id;


select id, name, amount 
from customers 
left join orders 
on customers.id = orders.customer_id
union all
select id, name, amount 
from customers 
right join orders 
on customers.id = orders.customer_id;
