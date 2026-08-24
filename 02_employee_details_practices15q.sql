CREATE DATABASE Emp_details;
use Emp_details;

CREATE TABLE emp_details(
id int  Primary key,
name varchar(50),
sal int,
depNo int,
job varchar(50),
hiredate DATE,
commition int
);

INSERT INTO emp_details VALUE 
(1, 'Shushil', 4000, 10 , 'clerk', '2026-05-01', 100),
(2, 'Ritik', 5000, 20 , 'Saleman', '2026-04-01', 200),
(3, 'Shreya', 6000, 30 , 'software Engineer', '2026-03-01', 300),
(4, 'Anant', 7000, 40 , 'senior developer', '2026-02-01', 400),
(5, 'Sandeep', 8000, 50 , 'junior developer', '2026-01-01', 500),
(6, 'Durganand', 9000, 60 , 'Teacher', '2026-05-10', 600),
(7, 'Harsh', 10000, 70 , 'Proffesor', '2026-05-15', 700);


-- Show details of the all employees  in the table list 
SELECT *
from emp_details;

-- Q1 WAQTD Number of employees getting salary less than 2000 in department 10

SELECT name,  sal
FROM emp_details
WHERE sal <2000;

SELECT name
FROM emp_details
WHERE sal >2000;

-- Q2 WAQTD Total salary needed to  pay employees working as clerk

 SELECT sum(sal)
 FROM emp_details
 WHERE job = 'clerk';
 
 -- Q3 WAQTD Average salary needed to pay all employees
 
 SELECT AVG(sal)
 FROM emp_details;
 
 -- Q4 WAQTD Number of employees Having 'A' as their first character
 
 SELECT name, COUNT(*)
 FROM emp_details
 WHERE name like 'A%';
 
-- Q5 WAQTD Number of employee working as cleark or mannager

SELECT COUNT(*)
FROM emp_details
WHERE job = 'clerk' or job = 'mannager';

-- Q6 WAQRD total salary needed to pay employee hired in feb

SELECT sum(sal)
FROM emp_details
WHERE  month(hiredate) = 2;

-- - Q7 WAQRD number of employee reporing to 7839 (MGR)

SELECT COUNT(*)
FROM emp_details
WHERE sal = 7839;

-- Q8 WAQRD number of  employee Getting commission in department no 30

SELECT sal
FROM  emp_details
WHERE depNo = 30;

-- Q9 WAQTD AVG salary Total salary number of employee and maximum salary given to employees working as persident

SELECT AVG(sal) , SUM(sal) , max(sal)
FROM emp_details;

-- Q10 WAQTD number of employee having 'a' their name

SELECT name
FROM emp_details
WHERE name like '%A%';

-- Q11 WAQTD number of employee and total salary needed to pay 

SELECT COUNT(*),sum(sal)
FROM emp_details;

-- Q12 WAQTD Number of department present in employee table

SELECT COUNT( DISTINCT depNo)
FROM emp_details;

-- Q13 WAQTD total salary given to employee working as cleark in dept 30 

SELECT sum(sal)
FROM emp_details
WHERE job = 'clerk' and depNo = 30;

-- Q16 WAQTD maximam salary given to the employee working as analyst 

SELECT max(sal)
FROM emp_details
WHERE job='analyst';

-- Q17 WAQTD number of distinct salaries present in the employee table

SELECT DISTINCT (sal)
FROM emp_details;

-- Q 18 WAQTD number of jobs present in employee table

SELECT count(job)
FROM emp_details;

-- Q19 WAQTD AVG salary given to the clerk

SELECT AVG(sal)
FROM emp_details
WHERE job='clerk';

-- Q20 WAQTD minimum salary given to the  employees who work in dept10 as manager or A clerk

SELECT MIN(sal) 
FROM emp_details
WHERE depNo = 10 
AND (job = 'manager' or job = 'clerk');

