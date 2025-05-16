
create database student_information;
use student_information;
show tables;
select * from cereals_data;
select* from cereals_data where cereals_data = name;


drop database if exists imarticus;
create database imarticus;
use imarticus;
create table student_information(
name  varchar(40),
age int,
phone_no int,
gender varchar(40));

# create TABLE FOR EMPLOYEES

CREATE table EMPLOYEE(
EMP_NAME varchar(30),
PHONE_NO INT);

SHOW TABLES;
describe student_information;

-- drop THE TABLE EMPLOYEE

DROP TABLE EMPLOYEE;

SHOW tables;
-- ALTER TO ADD COLUMN
SELECT * from EMPLOYEE;
ALTER TABLE EMPLOYEE ADD column SALARY INT;
alter TABLE EMPLOYEE ADD column AGE INT AFTER EMP_NAME;
ALTER table EMPLOYEE ADD column SL_NO INT FIRST;
SHOW TABLES;
describe EMPLOYEE;
ALTER table EMPLOYEE DROP column PHONE_NO;
ALTER TABLE EMPLOYEE modify EMP_NAME varchar(60);
ALTER table EMPLOYEE change EMP_NAME EMP_WORKER_NAME VARCHAR (60);
# RENAME THE TABLE TO EMPLOYEE TO EMPLOYEES
ALTER TABLE EMPLOYEE RENAME EMPLOYEES;

DESC EMPLOYEES;

select * from cereals_data;
truncate table cereals_data;

-- DML

USE imarticus;
SHOW tables;
desc EMPLOYEES;

INSERT INTO EMPLOYEES
VALUES(01,'PARAMA',24,20000);

INSERT INTO EMPLOYEES
VALUES(02,'PRIME',21,20000),
(03,'SELVA',21,30000),
(04,'MATHIN',23,40000);
select * FROM EMPLOYEES;



INSERT INTO EMPLOYEES(EMP_WORKER_NAME,SL_N0,AGE,SALARY)
VALUES ('SIVA',05,34,20000);
select* FROM EMPLOYEES;

truncate table EMPLOYEES;
INSERT INTO EMPLOYEES
VALUES (06,'DEV',24,NULL);
SELECT * FROM EMPLOYEES;

INSERT INTO EMPLOYEES(SL_NO,EMP_WORKER_NAME,AGE)
VALUES (07,'SUKESH',25),
 (08,'THARANEESH',26);

UPDATE EMPLOYEES
SET SALARY = 50000 WHERE SALARY IS NULL;

UPDATE EMPLOYEES 
SET SALARY = 33000 WHERE SL_NO = 01;
delete FROM EMPLOYEES
WHERE SL_NO = 01;

delete FROM EMPLOYEES
WHERE SALARY <=10000;

# EXTRACT EMPLOYEES WITH SL_NO 4 TO 9
select * FROM EMPLOYEES
WHERE SL_NO >=3 AND SL_NO <=6;

select * FROM EMPLOYEES
WHERE SL_NO BETWEEN 5 AND 7;

ALTER TABLE EMPLOYEES ADD column SALARY_RANGE varchar(30);
UPDATE EMPLOYEES SET SALARY_RANGE ='LOW'
where SALARY < 30000;

UPDATE EMPLOYEES SET SALARY_RANGE ='HIGH'
where SALARY > 30000;

UPDATE EMPLOYEES SET SALARY_RANGE =
CASE WHEN SALARY < 30000 THEN 'LOW SALARY' ELSE 'HIGH SALARY'END;
SELECT * FROM EMPLOYEES;

select count(*) from cereals_data;
select avg(rating) as avg_rating from cereals_data;
select round(avg(rating),0) as avg_rating from cereals_data;

select count(rating) as No_rating , min(rating) as Min_rating, max(rating) as Max_rating, sum(rating) as Sum_rating,
avg(rating) as AVG_rating
from cereals_data;

-- without changing the table we can use this
select *,case when rating < 42 then'low' else 'high' end as rating_status
from cereals_data;

-- to clone and its creates new table are clone the table
create table clone_table(
select *,case when rating < 42 then'low' else 'high' end as rating_status
from cereals_data);

-- only structure of the table to clone
create table clone_structure like cereals_data;
select * from clone_structure;


-- altering the table
alter table cereals_data add column rating_status varchar(30);
update cereals set rating_status = case when rating <=42 then 'low'else'high'end;

alter table cereals_data add column rating_status varchar(30);
update cereals set rating_status = case when rating <=42 then 'low' else'high'end;

update cereals_data set rating_status = case when rating <=42 then 'low_rating' else ' high_rating' end;

select * from cereals_data;

select * ,case when calories <= 70 then 'low' when calories >70 and  calorie <= 100 then 'medium' else 'high' end as caloris_values from cereals_data;

select count(*) calories from cereals_data
where calories >100;

alter table cereals_data add column calories_status varchar(30) after calories;

update cereals_data set calories_status= case when calories <= 70 then 'low' when calories between 70 and 100 then 'medium' else 'high' end;
select * from cereals_data;

select calories_status, count(calories_status) as counts_info
from cereals_data group by calories_status;

-- sub query
select * from cereals_data where calories <
(select calories from cereals_data where name = 'all-bran');

select *, case when rating <= ( select avg(rating) from cereals_data) then 'low'
when rating >(select avg(rating) from cereals_data) then 'medium' else 'high' end as rating_sub from cereals_data;








