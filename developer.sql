-- Create the Database

create database if not exists university;
use university;

-- Create the Table

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    email VARCHAR(100),
    phone VARCHAR(15),
    department VARCHAR(50),
    course VARCHAR(50),
    year_of_study INT,
    cgpa DECIMAL(3,2),
    admission_date DATE
);

-- Insert into the table data

INSERT INTO students 
(student_id, first_name, last_name, gender, date_of_birth, email, phone, department, course, year_of_study, cgpa, admission_date)
VALUES
(1, 'Aarav', 'Sharma', 'Male', '2003-05-12', 'aarav.sharma@univ.edu', '9876543210', 'Computer Science', 'B.Tech CS', 3, 8.5, '2021-08-10'),
(2, 'Isha', 'Patel', 'Female', '2004-01-22', 'isha.patel@univ.edu', '9876543211', 'Information Technology', 'B.Tech IT', 2, 8.2, '2022-08-15'),
(3, 'Rohan', 'Gupta', 'Male', '2002-09-09', 'rohan.gupta@univ.edu', '9876543212', 'Mechanical', 'B.Tech Mech', 4, 7.8, '2020-07-20'),
(4, 'Priya', 'Nair', 'Female', '2003-03-15', 'priya.nair@univ.edu', '9876543213', 'Civil', 'B.Tech Civil', 3, 8.1, '2021-08-01'),
(5, 'Karan', 'Verma', 'Male', '2003-12-01', 'karan.verma@univ.edu', '9876543214', 'Electrical', 'B.Tech EE', 3, 7.9, '2021-08-10'),
(6, 'Neha', 'Reddy', 'Female', '2004-02-10', 'neha.reddy@univ.edu', '9876543215', 'Computer Science', 'B.Tech CS', 2, 9.1, '2022-08-05'),
(7, 'Vikram', 'Singh', 'Male', '2001-11-11', 'vikram.singh@univ.edu', '9876543216', 'Mechanical', 'B.Tech Mech', 4, 8.0, '2020-07-30'),
(8, 'Simran', 'Kaur', 'Female', '2003-07-14', 'simran.kaur@univ.edu', '9876543217', 'Electronics', 'B.Tech ECE', 3, 8.6, '2021-08-10'),
(9, 'Arjun', 'Mehta', 'Male', '2004-04-20', 'arjun.mehta@univ.edu', '9876543218', 'Information Technology', 'B.Tech IT', 2, 8.9, '2022-08-10'),
(10, 'Diya', 'Chopra', 'Female', '2003-08-25', 'diya.chopra@univ.edu', '9876543219', 'Computer Science', 'B.Tech CS', 3, 9.2, '2021-08-08'),
(11, 'Nikhil', 'Joshi', 'Male', '2002-02-05', 'nikhil.joshi@univ.edu', '9876543220', 'Civil', 'B.Tech Civil', 4, 7.5, '2020-07-25'),
(12, 'Tanya', 'Bansal', 'Female', '2004-09-19', 'tanya.bansal@univ.edu', '9876543221', 'Electrical', 'B.Tech EE', 2, 8.3, '2022-08-05'),
(13, 'Aditya', 'Deshmukh', 'Male', '2003-05-30', 'aditya.deshmukh@univ.edu', '9876543222', 'Mechanical', 'B.Tech Mech', 3, 7.7, '2021-08-12'),
(14, 'Sneha', 'Mishra', 'Female', '2003-10-16', 'sneha.mishra@univ.edu', '9876543223', 'Computer Science', 'B.Tech CS', 3, 9.4, '2021-08-06'),
(15, 'Rahul', 'Yadav', 'Male', '2002-03-27', 'rahul.yadav@univ.edu', '9876543224', 'Electronics', 'B.Tech ECE', 4, 8.2, '2020-07-30'),
(16, 'Meera', 'Ghosh', 'Female', '2004-06-09', 'meera.ghosh@univ.edu', '9876543225', 'Information Technology', 'B.Tech IT', 2, 8.7, '2022-08-15'),
(17, 'Dev', 'Kapoor', 'Male', '2003-11-01', 'dev.kapoor@univ.edu', '9876543226', 'Electrical', 'B.Tech EE', 3, 8.1, '2021-08-01'),
(18, 'Ananya', 'Iyer', 'Female', '2004-12-11', 'ananya.iyer@univ.edu', '9876543227', 'Computer Science', 'B.Tech CS', 2, 9.0, '2022-08-12'),
(19, 'Sahil', 'Rana', 'Male', '2002-05-09', 'sahil.rana@univ.edu', '9876543228', 'Mechanical', 'B.Tech Mech', 4, 8.4, '2020-07-28'),
(20, 'Riya', 'Agarwal', 'Female', '2003-07-22', 'riya.agarwal@univ.edu', '9876543229', 'Civil', 'B.Tech Civil', 3, 8.0, '2021-08-09'),
(21, 'Harsh', 'Chatterjee', 'Male', '2003-02-02', 'harsh.chatterjee@univ.edu', '9876543230', 'Computer Science', 'B.Tech CS', 3, 8.8, '2021-08-07'),
(22, 'Anjali', 'Rao', 'Female', '2004-10-03', 'anjali.rao@univ.edu', '9876543231', 'Information Technology', 'B.Tech IT', 2, 8.9, '2022-08-13'),
(23, 'Yash', 'Thakur', 'Male', '2002-08-08', 'yash.thakur@univ.edu', '9876543232', 'Mechanical', 'B.Tech Mech', 4, 7.6, '2020-07-26'),
(24, 'Pooja', 'Pandey', 'Female', '2003-11-12', 'pooja.pandey@univ.edu', '9876543233', 'Civil', 'B.Tech Civil', 3, 8.5, '2021-08-02'),
(25, 'Manav', 'Bhatia', 'Male', '2003-04-04', 'manav.bhatia@univ.edu', '9876543234', 'Electrical', 'B.Tech EE', 3, 8.2, '2021-08-05'),
(26, 'Kavya', 'Pillai', 'Female', '2004-01-09', 'kavya.pillai@univ.edu', '9876543235', 'Computer Science', 'B.Tech CS', 2, 9.3, '2022-08-07'),
(27, 'Rudra', 'Saxena', 'Male', '2003-06-16', 'rudra.saxena@univ.edu', '9876543236', 'Electronics', 'B.Tech ECE', 3, 8.4, '2021-08-04'),
(28, 'Shruti', 'Bose', 'Female', '2003-09-24', 'shruti.bose@univ.edu', '9876543237', 'Information Technology', 'B.Tech IT', 3, 8.7, '2021-08-11'),
(29, 'Parth', 'Malhotra', 'Male', '2002-07-18', 'parth.malhotra@univ.edu', '9876543238', 'Mechanical', 'B.Tech Mech', 4, 7.9, '2020-07-27'),
(30, 'Naina', 'Kulkarni', 'Female', '2004-03-19', 'naina.kulkarni@univ.edu', '9876543239', 'Computer Science', 'B.Tech CS', 2, 9.1, '2022-08-09');

-- Display the data
show tables;

drop table students;

select * from students;

rename table students to mere_bacche;

rename table mere_bacche to students;

show tables;

create table students select * from mere_bacche;

select * from students;

drop table students;

create table students like mere_bacche;

alter table mere_bacche add column stipend int(5);

select * from mere_bacche;

ALTER TABLE students MODIFY student_id INT AUTO_INCREMENT;
ALTER TABLE students ADD COLUMN stipend INT(5);

select * from students;

-- Delete the Data
delete from students where student_id between 31 and 90;
delete from students where student_id between 91 and 120;

-- Update the Data
update students set stipend = 5000 where student_id = 1;
update students set stipend = 4000 where student_id = 2;
update students set stipend = 6000 where student_id = 3;
update students set stipend = 4000 where student_id = 4;
update students set stipend = 5000 where student_id = 5;
update students set stipend = 7000 where student_id = 6;
update students set stipend = 4000 where student_id = 7;
update students set stipend = 4500 where student_id = 8;
update students set stipend = 5500 where student_id = 9;
update students set stipend = 5200 where student_id = 10;
update students set stipend = 5300 where student_id = 11;
update students set stipend = 5400 where student_id = 12;
update students set stipend = 5800 where student_id = 13;
update students set stipend = 5600 where student_id = 14;
update students set stipend = 5900 where student_id = 15;
update students set stipend = 7100 where student_id = 16;
update students set stipend = 7200 where student_id = 17;
update students set stipend = 3000 where student_id = 18;
update students set stipend = 7800 where student_id = 19;
update students set stipend = 7600 where student_id = 20;
update students set stipend = 7400 where student_id = 21;
update students set stipend = 8000 where student_id = 22;
update students set stipend = 8100 where student_id = 23;
update students set stipend = 7900 where student_id = 24;
update students set stipend = 6500 where student_id = 25;
update students set stipend = 6300 where student_id = 26;
update students set stipend = 5000 where student_id = 27;
update students set stipend = 5500 where student_id = 28;
update students set stipend = 5400 where student_id = 29;
update students set stipend = 5900 where student_id = 30;

select * from students;
create view std_view as select first_name, gender, year_of_study from students where year_of_study >= 3;

select * from std_view;

select * from students;

set sql_safe_updates = 0;

update std_view set year_of_study = 5 where first_name = "Aarav";

select * from std_view;

select * from students;

select * from students order by stipend asc;
select * from students order by stipend desc;