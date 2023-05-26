select  * from employees;

/*
 MAC ----> CMD + ENTER
 WINDOWS ---> CTRL + ENTER

 */

 select * from departments;

-- each SQL statement needs to end-with semi-colon
select * from employees;

select department_name from departments;

---SQL language is case insensitive

SELECT department_name FROM departments;
SELECT department_name FrOm DEPARTMENTS;



---if you wanna get multiple column names we should use coma
select department_id,department_name from departments;

select * from DEPARTMENTS,EMPLOYEES;

select EMPLOYEES.FIRST_NAME,DEPARTMENTS.DEPARTMENT_NAME from DEPARTMENTS,EMPLOYEES;


/*


 DISTINCT ---> Display only different values from result. original data still stays in database
 */

 select FIRST_NAME from  EMPLOYEES;
select  distinct (FIRST_NAME) from EMPLOYEES;

select SALARY from  EMPLOYEES;

select  distinct  (SALARY) from EMPLOYEES;

