select *
from EMPLOYEES;

/*
    create table syntax:
        create table tableName(
    colName1 DataType Constraints,
    colName2 DataType Constraints(optional)
    colName3 DataType Constraints,
    ...
    );

 */

--- CREATE Table ---

CREATE TABLE scrumteam
(
    emp_id     Integer PRIMARY KEY,
    first_name varchar(30) not null,
    last_name  varchar(20) not null,
    job_title  varchar(20),
    salary     Integer
);
select *
from scrumteam;

CREATE TABLE scrumteam_mustapha
(
    emp_id     Integer PRIMARY KEY,
    first_name varchar(30) not null,
    last_name  varchar(20) not null,
    job_title  varchar(20),
    salary     Integer
);
select *
from scrumteam;

/*

 INSERT INTO tableName (column1, column2,...)
 VALUES (value1, value2, value3...)

 */

 INSERT INTO SCRUMTEAM (emp_id, first_name, last_name, job_title, salary)
VALUES (1,'Severus', 'Snap','Tester', 130000);

INSERT INTO SCRUMTEAM (emp_id, first_name, last_name, job_title, salary)
VALUES (2,'Mustapha', 'Laachir','Scrum Master', 100000);

INSERT INTO SCRUMTEAM (emp_id, first_name, last_name, job_title, salary)
VALUES (3,'Phoebe', 'Buffey','Developer', 120000);

INSERT INTO SCRUMTEAM (emp_id, first_name, last_name, job_title, salary)
VALUES (4,'Micheal', 'Scofield','PO', 130000);



--save changes so that other people, connections can get the updates.
commit work ;

/*
 UPDATE table_name
 SET column1 = value1,
 column2 = value2, ...
 where condition;

 */


 Update SCRUMTEAM
Set SALARY = salary+5000;



Update SCRUMTEAM
Set SALARY = 110000
where EMP_ID=3;

select * from scrumteam;

/*

 DELETE from table_name
 WHERE condition

 */

delete scrumteam
where EMP_ID=2;

commit;

--CRUD
--CREATE (INSERT)
--READ (SELECT)
--UPDATE (UPDATE)
-- DELETE (DELETE)

--ALERT

-- ADD NEW COLUMN
ALTER  TABLE SCRUMTEAM ADD gender varchar(10);

select * from scrumteam;

UPDATE scrumteam
set gender = 'Male'
where EMP_ID=1;


UPDATE scrumteam
set gender = 'Male'
where EMP_ID=2;

--RENAME THE COLUMN

ALTER TABLE SCRUMTEAM RENAME COLUMN salary TO annual_salary;

--ALTER Column

ALTER TABLE scrumteam Drop Column gender;

-- RENAME TABLE

ALTER  TABLE SCRUMTEAM RENAME  TO agileteam;

select * from agileteam;

--TRUNCATE

TRUNCATE TABLE agileteam;

-- DROP TABLE

DROP TABLE agileteam;

commit;

/*
 IQ--> what is the difference between TRUNCATE and DROP
 TRUNCATE --> it will delete table content, but keep the table
 DROP -- it will delete content and table itself

 */




