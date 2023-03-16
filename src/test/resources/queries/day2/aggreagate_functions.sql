select *
from employees;

/*

AGGREAGATE FUNCTIONS - WILL ROWS - GROUP FUNCTIONS

-count ---> it will count rows
- max --> it will max value
- min --> it will min value
- sum --> it will give total value
- avg --> it will give average value

 Aggregate functions takes multi row and return one result

 */

--how many department we have
select *
from DEPARTMENTS;
select count(*)
from DEPARTMENTS;

-- how many locations we have
select *
from LOCATIONS;
SELECT count(*)
from LOCATIONS;

select * from EMPLOYEES;

select COUnt(DEPARTMENT_ID) from EMPLOYEES;

--Task :
--How many different first name we have?
select count (distinct FIRST_NAME) from  EMPLOYEES;

--How many employees working in the IT_PROG or SA_REP

select  count(*) from EMPLOYEES
where JOB_ID in ('IT_PROG','SA_REP');


--MAX salary

SELECT max(SALARY) from EMPLOYEES;

-- MIN salary

SELECT min(SALARY) from  EMPLOYEES;

-- AVG

select  avg  (SALARY) from EMPLOYEES;

select  round(avg (SALARY) ,1)from EMPLOYEES;
select  round(avg (SALARY) ,2)from EMPLOYEES;
select  round(avg (SALARY) ,3)from EMPLOYEES;
select  round(avg (SALARY) ,4)from EMPLOYEES;
select  round(avg (SALARY) ,5)from EMPLOYEES;

-- SUM SALARY

SELECT sum(SALARY) from EMPLOYEES;




