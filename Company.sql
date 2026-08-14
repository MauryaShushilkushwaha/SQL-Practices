CREATE DATABASE Company;

use Company;

CREATE TABLE Employee(
id INT PRIMARY KEY,
name VARCHAR(50) ,
Salary Double NOT NULL
);

INSERT INTO Employee (id, name, Salary)
VALUES(1, 'Adan', 25000),
(2,"bob",30000),
(3,"obey",40000);

SELECT * 
FROM Employee;

SELECT id
FROM Employee;

SELECT name
FROM Employee;

