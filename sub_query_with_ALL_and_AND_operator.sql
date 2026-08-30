CREATE DATABASE All_emp;
use All_emp;

CREATE TABLE all_details(
    empno  int    PRIMARY KEY,
    ename    VARCHAR(20),
    job      VARCHAR(20),
    mgr      int,
    hiredate DATE,
    sal      int,
    comm     int,
    deptno   int
);


INSERT INTO all_details VALUES 
(7369, 'SMITH',  'CLERK',     7902,  '2026-04-23', 800,  NULL, 20),
 (7499, 'ALLEN',  'SALESMAN',  7698, '2000-03-13', 1600, 300,  30),
 (7521, 'WARD',   'SALESMAN',  7698, '2006-02-24', 1250, 500,  30),
 (7566, 'JONES',  'MANAGER',   7839, '2026-12-26', 2975, NULL, 20),
 (7654, 'MARTIN', 'SALESMAN',  7698, '2016-11-18', 1250, 1400, 30),
 (7698, 'BLAKE',  'MANAGER',   7839, '2006-06-30', 2850, NULL, 30),
 (7782, 'CLARK',  'MANAGER',   7839, '2006-05-18', 2450, NULL, 10),
 (7788, 'SCOTT',  'ANALYST',   7566, '2026-08-20', 3000, NULL, 20),
 (7839, 'KING',   'PRESIDENT', NULL, '2006-05-27', 5000, NULL, 10),
 (7844, 'TURNER', 'SALESMAN',  7698, '2016-02-25', 1500, 0,    30),
 (7876, 'ADAMS',  'CLERK',     7788, '2006-06-22', 1100, NULL, 20),
(7900, 'JAMES',  'CLERK',     7698, '1988-08-02', 950,  NULL, 30),
 (7902, 'FORD',   'ANALYST',   7566, '2008-02-20', 3000, NULL, 20),
 (7934, 'MILLER', 'CLERK',     7782, '2012-01-20', 1300, NULL, 10);
 
 -- This topic is ALL and IN operator 

 -- Q1 WAQTD Name of the employees earning salary more than the salesman
 
 SELECT ename
 FROM all_details
 WHERE sal >all (SELECT sal
            FROM all_details
            WHERE job ='salesman');
    
    
 -- Q2 WAQTD Details of the employee hired after all the CLERKS    

 SELECT *
 FROM all_details
 WHERE hiredate  >all (SELECT hiredate
            FROM all_details
            WHERE job ='CLERKS');
            
--  Q3 WAQTD name and salary for all the employees if they are earning less than atleast a manager

SELECT ename , sal
FROM all_details
WHERE sal < ANY (SELECT sal FROM all_details WHERE job ='manager');
	        

-- Q4 WAQTD name and hiredate of employee hired before all the managers 

SELECT ename,hiredate
FROM  all_details
WHERE hiredate <ALL (SELECT hiredate from all_details WHERE job ='manager');

-- Q5 WAQTD name of the employees hired after all the managers and earning salary more than all the clearks

SELECT ename
FROM all_details
WHERE hiredate > ALL  (SELECT hiredate FROM all_details WHERE job > 'manager') and sal >ALL (SELECT sal FROM all_details WHERE job ='clerk');

-- Q6 WAQTD detail of the employee working as a clerk and hired before atleast a salesman

SELECT * 
FROM all_details
WHERE job = 'clerk' 
and hiredate <  ANY ( SELECT hiredate FROM all_details WHERE job ='salesman');

-- Q7 WAQTD details of employee working in accounting or sales dept 

SELECT * 
FROM all_details
WHERE job = 'accounting' or deptno ='sales';

-- Q8 WAQTD department names of the employee with name smith , king and miller

