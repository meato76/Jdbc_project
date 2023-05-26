/*

 SUBQUERY --> INNER QUERY  --> NESTED QUERY

 __> A subquery allows us to use multiple SELECT statements, where we basically have a query within a query


 */

 -- who is getting highest salary?

SELECT * FROM EMPLOYEES
 order by SALARY desc;

--find max salary from employees

SELECT  max(SALARY) from EMPLOYEES;


-- who is getting max salary from employees

SELECT FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
where SALARY = (SELECT  max(SALARY) from EMPLOYEES);

-----------------------------------------
-- Get me all employees firstname, lastname who is working currently in IT DEPARTMENT

select * from EMPLOYEES;
SELECT * from DEPARTMENTS;

select DEPARTMENT_ID from DEPARTMENTS where DEPARTMENT_NAME ='IT';

--RESULT
SELECT  FIRST_NAME,LAST_NAME, DEPARTMENT_ID FROM EMPLOYEES
WHERE DEPARTMENT_ID =(select DEPARTMENT_ID from DEPARTMENTS where DEPARTMENT_NAME ='IT');


-- Get me all employees firstname, lastname who is working currently in EXECUTIVE DEPARTMENT

SELECT  FIRST_NAME,LAST_NAME, DEPARTMENT_ID FROM EMPLOYEES
WHERE DEPARTMENT_ID =(select DEPARTMENT_ID from DEPARTMENTS where DEPARTMENT_NAME ='Executive');