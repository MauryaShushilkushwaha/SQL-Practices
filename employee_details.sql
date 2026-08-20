CREATE DATABASE E_employee;
use E_employee;

CREATE TABLE emp_detail(
id int  Primary key,
name varchar(50),
sal int,
depNo int,
job varchar(50),
hiredate DATE,
commition int
);

INSERT INTO emp_detail VALUE 
(1, 'Shushil', 4000, 10 , 'SDE', '2026-05-01', 100),
(2, 'Ritik', 5000, 20 , 'SQLE', '2026-04-01', 200),
(3, 'Shreya', 6000, 30 , 'DSE', '2026-03-01', 300),
(4, 'Anant', 7000, 40 , 'DAE', '2026-02-01', 400),
(5, 'Sandeep', 8000, 50 , 'TSE', '2026-01-01', 500),
(6, 'Durganand', 9000, 60 , 'CSE', '2026-05-10', 600),
(7, 'Harsh', 10000, 70 , 'DSE', '2026-05-15', 700);

-- Q1 WAQTD Detail of employees working in Department 10 or 30

SELECT depNo,name
FROM emp_detail
WHERE  depNo = 10 or depNo =30; 

-- Q2 WAQTD name of employees hired during 26

SELECT name ,hiredate
FROM emp_detail
WHERE YEAR(hiredate) = 2026;

-- Q4 WAQTD name and salary Given to the employees earning commission

SELECT name , sal
FROM emp_detail; 

-- Q5 WAQTD detail of the employees working as cse in the department 10 or 30 Having character 'a' in therir names

SELECT name 
FROM emp_detail
WHERE depNo in (10,30) and  name like '%A';

-- Q6 WAQTD  Name of the employees Having CHAR 's' ans their LAST CHARACTER 

SELECT name
FROM emp_detail
WHERE name like '%s';

-- Q7 WAQTD details of employees working as analyst and earning 4 digit salary

SELECT *
FROM emp_detail
WHERE job = 'SDE'  and sal like '____';


-- Q8 WAQTD Names of the Employee Hired in the first month

SELECT name ,hiredate
FROM emp_detail
WHERE  DATE(hiredate) BETWEEN  '2026-01-01' and '2026-02-01';

-- Q9 WAQTD Details of the employees working as cse and dosent earn any commission

SELECT *
FROM emp_detail
WHERE job = 'cse' and commition IS NULL;

-- Q10 WAQTD name and salary given to the employees hired during 1999 int dept 10 or 40

SELECT name, sal
FROM emp_detail
WHERE YEAR(hiredate) = 1999 and depNO IN (10,40);

-- Q11 WAQTD details of employees Having TWO L's present in the names and works as cse

SELECT *
FROM emp_detail
WHERE name like '%ll%'  and  job = 'cse';

-- Q12 WAQTD NAME of employee  WHO EARN commission BUT NOT SALARY 

SELECT * 
FROM emp_detail
WHERE commition IS NOT NULL
and sal is NULL;

-- Q13 WAQTD names of the employees if name starts with 'A' or 's' or 'j'

SELECT * 
FROM emp_detail
WHERE name like 'A%'
OR  name like 'S%'
 OR name like 'j%';
 
 -- Q14 WAWTD LIST ALL  employee name except for the employees WHO 'S' name have 'A' as the 3rd charater
 
 SELECT name
 FROM emp_detail
 WHERE name NOT like '___A%';
 
 -- Q15 WAQTD List the detail of the employeew working as cse's and hired after 1984 and has a name which ends with S
 
 SELECT *
 FROM emp_detail
 WHERE job = 'cse'
 and hiredate > '1984-01-01'
 and name like '%s';