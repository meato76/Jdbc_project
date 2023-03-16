select * from EMPLOYEES;


/*

 ORDERBY

 - It allows us to sort data based on provided column
 - As a Default it will order the result ASCENDING ORDER (A-Z, 0-9)
 - If you want to sort it DESCENDING order we need to specify right after column name

 */

 --display all employees based on salary in asc order

select * from EMPLOYEES
order by SALARY;

---same query


select * from EMPLOYEES
order by SALARY ASC;

--display all employees based on salary in DESC order

select * from EMPLOYEES
order by SALARY DESC;


--- display all employees based on their firstname desc

select * from EMPLOYEES
order by FIRST_NAME desc ;

-- display all info where emp id is less than 120 and order them based on salary desc

select * from employees
where EMPLOYEE_ID < 120
order By SALARY DESC ;

-- display all information from employees and order them based on firstname asc and last name desc

select * from EMPLOYEES
order by FIRST_NAME ASC, LAST_NAME DESC;


