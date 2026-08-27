CREATE DATABASE emps;
use emps;

CREATE TABLE emp_details(
id int primary key,
Ename varchar(50),
job varchar(50),
mgr int ,
Hiredate DATE,
sal int,
depNo int
);

INSERT INTO emp_details value
(10, 'smith', 'clerk',1000,'2025-04-04', 8200 , 01),
(11, 'allen', 'salesman',2000,'2024-04-04', 9800 , 02),
(12, 'Ward', 'manager',3000,'2023-04-04', 8700 , 03),
(13, 'jones', 'analyst',5000,'2022-04-04', 4800 , 04),
(14, 'blake', 'clerk',7000,'2021-04-04', 2800 , 05),
(15, 'scott', 'president',8000,'2020-04-04', 1800 , 06);



-- Q1 WAQTD DNO and number of emp working in each dept if there are atleast 2 clerk in each dept 

SELECT Ename ,DepNo, count(*)
FROM emp_details
WHERE job = 'clerk'
GROUP BY depNo ,Ename
HAVING depNO >= 2;


-- Q2 WAQTD DNO and total salaryneeded to pay all emp in each dept if there are atleast 4 emp in each dept

SELECT depNo ,sum(sal)
FROM emp_details
GROUP BY depNo
HAVING count(*) >= 4;


-- Q3 WAQTD number of emp earning sal more than 1200 in each job and the total sal needed to pay emp of 



 --     sub query question practices
 
 
 -- Q1 WAQTD name of the employees earning more than adams 
 
 SELECT ENAME 
 FROM emp_details
 WHERE sal > (select sal FROM emp_details WHERE Ename = 'Smith');
 
 -- Q2 WAQTD name and salary of the employees earning less than king
 
 SELECT ENAME , sal
 FROM emp_details
 WHERE sal< (SELECT sal FROM emp_details WHERE name = 'king');
 
 -- Q3 WAQTD name and depno of the employee if they are working in the same dept as jones
 
SELECT ENAME, depNo
FROM emp_details
WHERE depNo IN (SELECT depNo FROM emp_details WHERE Ename = 'jones');

-- Q4 WAQTD name and job of all the employees working in the same designation as james 

 SELECT Ename , job 
 FROM emp_details
 WHERE job = (SELECT job WHERE Ename ='james');
 
 -- Q5 WAQTD empno and ename along with annual salary of all the employee if their annual salary is greater than wards annual salary
 
 SELECT *
 FROM emp_details
 WHERE sal = sal * 12 > (SELECT sal WHERE Ename = 'ward'); 
 
 -- Q6 WAQTD name and hiredate of the employee if they are hired before scott
 
 SELECT Ename , Hiredate
 FROM emp_details
 WHERE Hiredate > ( SELECT Hiredate FROM emp_details WHERE Ename = 'scott');
 
 -- Q7 WAQTD name and hiredate of the employees if they are hired after the president
 
 SELECT name,Hiredate 
 FROM emp_details
 WHERE Hiredate > (SELECT Hiredate FROM emp_details WHERE job = 'president');
 
 -- Q8 WAQTD name and sal of the employee if they are earning sal less than the employee whos empno is 7839 
 
 SELECT Ename , sal 
 FROM emp_details
 WHERE sal < ANY (SELECT sal FROM emp_details WHERE depNo =06);
 
 -- Q9 WAQTD all the details of the employees if the employees are hired before miller
 
 SELECT *
 FROM emp_details
 WHERE Hiredate < (SELECT Hiredate FROM emp_details WHERE Hiredate = 'scott');
 
 -- Q10 WAQTD Ename and empno of the employee if employees are earning more than allen
 
SELECT * 
FROM emp_details
WHERE Hiredate < (SELECT Hiredate FROM emp_details WHERE Ename = 'scott');

-- Q11 WAQTD Ename and salary of all the employee who are earning more than miller but less than allen

SELECT Ename , sal 
FROM emp_details
WHERE sal > (SELECT sal FROM emp_details WHERE Ename = 'allen');

-- Q12 WAQTD all the detail of the employee working in the dept 20 and working in the same designation as smith 

SELECT * 
FROM emp_details
WHERE depNo = 20 and job = (SELECT job FROM emp_details WHERE Ename = 'smith');

-- Q13 WAQTD all the details of the employees working as manager inthe same dept as turner

SELECT *
FROM emp_details
WHERE job = 'manager' 
and job = (SELECT depNo FROM emp_details WHERE Ename ='turner');

-- Q14 WAQTD name and hiredate of the employees hired after 1980 and before king 

SELECT Ename , Hiredate 
FROM emp_details
WHERE Hiredate > '1980-01-01' and Hiredate = ( SELECT Ename FROM emp_details WHERE Ename = 'king');

-- Q15 WAQTD name and sal along with annual sal for all employees whos sal is less than blake and more than 3500

SELECT  Ename , sal ,sal*12 as anualsalry
FROM emp_details
WHERE sal = sal*12 < ( SELECT sal FROM emp_details WHERE Ename = 'blak') and sal >3500 ;

-- Q16 WAQTD all the detail of employee who earn more than scott but less than king

SELECT *
FROM emp_details 
WHERE sal > (SELECT Ename FROM emp_details WHERE Ename = 'scott')
 AND sal < (SELECT Ename FROM emp_details WHERE Ename = 'king');
 
 -- Q17 WAQTD name of the employee whos name starts with a and works in the same dept as blake 
 
 SELECT name 
 FROM emp_details 
 WHERE Ename  like  'A%'
and depNo = ( SELECT depNo FROM emp_details WHERE Ename = 'blake'); 

