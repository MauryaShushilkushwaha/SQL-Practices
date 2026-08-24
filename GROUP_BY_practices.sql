CREATE DATABASE C_details;
use C_details;


CREATE TABLE Com_details(
id int  Primary key,
name varchar(50),
sal int,
depNo int,
job varchar(50),
hiredate DATE,
commition int
);

INSERT INTO Com_details VALUE 
(1, 'Shushil', 4000, 10 , 'clerk', '2026-05-01', 100),
(2, 'Ritik', 5000, 20 , 'Saleman', '2026-04-01', 200),
(3, 'Shreya', 6000, 30 , 'software Engineer', '2026-03-01', 300),
(4, 'Anant', 7000, 40 , 'senior developer', '2026-02-01', 400),
(5, 'Sandeep', 8000, 50 , 'junior developer', '2026-01-01', 500),
(6, 'Durganand', 9000, 60 , 'Teacher', '2026-05-10', 600),
(7, 'Harsh', 10000, 70 , 'Proffesor', '2026-05-15', 700);



-- Q1 WAQTD number of employees working in each department except president

SELECT COUNT(*),depNO
FROM Com_details
WHERE job != 'persident'
GROUP BY depNO;

-- Q2 WAQTD Total salary needed to pay all the employees in each job 

SELECT sum(sal) AS total_salary
FROM Com_details
GROUP BY job;

-- Q3 WAQTD Number of employees working as manager in each department
 
SELECT depNo , Count(*) AS manager
FROM Com_details
WHERE job = 'manager'
Group by depNo;

-- Q4 WAQTD AVG salary needed to pay all the employees in each department excluding the employees of depNo 20

SELECT depNO , AVG(sal) as avg_salary
FROM Com_details
WHERE depNo != 20
GROUP BY depNo ;

-- Q5 WAQTD Number of employee having character 'a' in their name in each job

SELECT  name,job,Count(*) as name_employee
FROM Com_details
WHERE name like '%A%'
GROUP BY job,name;

-- Q6 WAQTD Number of employee and avg salary needed to pay the employee who salary in greater than 2000 in each depatment 

SELECT count(*) AS num_employee  ,avg(sal) As pay_employee_sal
FROM Com_details
WHERE  sal >2000
GROUP BY depNo;

-- Q7 WAQTD Total salary needed to pay and number of salesman in each job 
 
 SELECT job ,count(*) AS no_employee , sum(sal) AS number_salesman
 FROM Com_details
 GROUP BY job;
 
 -- Q8 WAQTD Number of employee with their maximum salaries in each job
 
 SELECT name ,COUNT(*) , MAX(sal)
 WHERE Com_details
 GROUP BY job;
 
 -- Q9 WAQTD Maximum salaries given to an  employee working in each job

SELECT max(sal)
FROM Com_details
GROUP BY job;

-- Q10 WAQTD Number of times the salesman have been repeated in employee table

SELECT job, COUNT(*) as repeated_employe
FROM Com_details
WHERE job ='saleman'
GROUP BY job;
