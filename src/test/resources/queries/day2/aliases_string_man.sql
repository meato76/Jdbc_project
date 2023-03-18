select *
from employees;


/*

 1. Column aliases --> it is temporary name to show in display

 2. Table aliases --> which we will learn later
    Employees -->E


 */
-- the query below second column is "ROUND(AVG(SALARY))" which is not nice

SELECT DEPARTMENT_ID, round(avg(SALARY)) as "Average salary"
from EMPLOYEES
where DEPARTMENT_ID is not null -- to remove null department id from the result
group by DEPARTMENT_ID
having avg(SALARY) > 6000
order by 2 asc;



SELECT DEPARTMENT_ID, round(avg(SALARY)) as Average_salary
from EMPLOYEES
where DEPARTMENT_ID is not null -- to remove null department id from the result
group by DEPARTMENT_ID
having avg(SALARY) > 6000
order by 2 asc;

-- manager is asking displaying annual salary for all employees as annual_salary

SELECT FIRST_NAME, SALARY * 12 as annual_salary
from EMPLOYEES;

-- NOT --> we are just displaying and nothing will change in Data base


-----------------------------------STRING MANIPULATION____________________________________

/*
            CONCAT
            -- Java --> + first_name+" "+last_name
            -- SQL --> || first_name||' '||last_name
 */

-- I want to get full name column where we have firstname +' ' +lastname

SELECT FIRST_NAME || ' ' || LAST_NAME as full_name
from EMPLOYEES;

--add@cydeo.com to all the emails in the employee table

select EMAIL || '@cydeo.com'
from EMPLOYEES;

select concat(EMAIL, '@cydeo.com')
from EMPLOYEES;

--Lowercase

select lower(EMAIL || '@cydeo.com')
from EMPLOYEES;

--Uppercase

select upper(EMAIL || '@cydeo.com')
from EMPLOYEES;

--IINITCAT

--it makes first letter uppercase

select initcap(EMAIL || '@cydeo.com')
from EMPLOYEES;

--LENGHT

SELECT EMAIL, LENGTH(EMAIL) as email_lenth
FROM EMPLOYEES;

-- display all employees where firstname length equal 6

select FIRST_NAME from  EMPLOYEES
where  length(FIRST_NAME) = 6;

-- another solution

select FIRST_NAME from EMPLOYEES
where  FIRST_NAME like '______';


--how many question??

select count(*)  from EMPLOYEES
where  FIRST_NAME like '______';

--display initial from firstname and lastname --> SK..  __ N.K

--SUBSTR (columnName,beginningIndex,numberOfChar)

select * from EMPLOYEES;
select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.'as inisial from EMPLOYEES;
select substr(FIRST_NAME,1,1)||'.'||substr(LAST_NAME,1,1)||'.'as inisial from EMPLOYEES;

select FIRST_NAME,substr(FIRST_NAME,-2,2) from EMPLOYEES;

select FIRST_NAME,substr(FIRST_NAME,-3) from EMPLOYEES;

/*
 -if beginning index is 0, it is traded as 1
 -if the beginning index negative,it will start from backwards
 -if we dont specify number of char it will work till the end

 */





