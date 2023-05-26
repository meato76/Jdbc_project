--- AGGREGATE FUNCTIONS


-- count() -> give count of result

select count(*) from employees;

select count(*) from EMPLOYEES
where JOB_ID = 'IT_PROG';

select count(*) from COUNTRIES
where COUNTRY_NAME like 'B%';


-- max ()  -> gives max value of column


select max(SALARY) from employees;

-- min ()  -> gives  min value of column

select min(SALARY) from EMPLOYEES;

-- sum () -> give total value of column

select * from EMPLOYEES;
select sum(SALARY) from EMPLOYEES;


-- Total salary for IT_PROG

select sum(SALARY) from EMPLOYEES
where JOB_ID='IT_PROG';

--- avg () -> gives avg value of column

select avg(SALARY) from  EMPLOYEES;


--ROUND is NOT an AGGREGATE FUNC
--round -> gives  rounded version of number

select round(avg(salary)) from EMPLOYEES; --- if we don't have have second parameter to round it will give integer

select round(avg(salary),1) from EMPLOYEES; --. Gives 1 decimal

select round(avg(salary),2) from EMPLOYEES; --. Gives 2 decimal

select round(avg(salary),3) from EMPLOYEES; --. Gives 3 decimal

