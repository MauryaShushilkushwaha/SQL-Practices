CREATE DATABASE college;
use college;

CREATE TABLE Student(
Roll_no INT PRIMARY KEY,
name VARCHAR(50)
);



INSERT INTO Student(Roll_no , name)
VALUES(101, "shushil");

INSERT INTO Student(Roll_no , name)
VALUES (102, "RAM");



SELECT * FROM Student;

CREATE TABLE tamp(
Id INT ,
name VARCHAR (50),
city VARCHAR(10),

PRIMARY KEY (Id,city) 

 
);


INSERT INTO tamp VALUES (110, "Shushil" ,"Patna");

SELECT * FROM tamp; 

CREATE TABLE temp(
Id INT,
Salary INT  DEFAULT 2500 
);


INSERT INTO temp  (Id) VALUES(101);

SELECT  *FROM  temp;




