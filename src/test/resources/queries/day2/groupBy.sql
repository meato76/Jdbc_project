-- your manager is asking all jobs and their average salary.

select distinct job_id from employees;

-- get me average salary for IT_PROG
select  avg(SALARY)from EMPLOYEES
where  JOB_ID = 'IT_PROG';

-- get me average salary for IT_PROG
select  avg(SALARY)from EMPLOYEES
where  JOB_ID = 'AD_ASST';

-- get me average salary for AC_ACCOUNT
select  avg(SALARY)from EMPLOYEES
where  JOB_ID = 'AC_ACCOUNT';

-----------------------------------

select JOB_ID, avg(SALARY), count(*) , sum(SALARY), min(SALARY), max(SALARY)
from EMPLOYEES
group by JOB_ID;

--

--Display how many departments we have in each locations

select * from LOCATIONS;
select  location_id, count(*) from DEPARTMENTS
group by location_id;

--order result based on departments in desc
select LOCATION_ID, count(*) from DEPARTMENTS
group by LOCATION_ID
order by count(*) DESC;

select LOCATION_ID, count(*) from DEPARTMENTS
group by LOCATION_ID
order by  2 DESC; -- sort by column




-- Display how many countries we have in the regions

SELECT REGION_ID,count(*) from COUNTRIES
Group by REGION_ID
order by 2 desc ;-- sort by des


--------------

--Get me total salary for each department from employees table.

select DEPARTMENT_ID, sum(SALARY), count (*) from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID;

--- display jobids where their avg salary more than 5k

select JOB_ID,avg(salary)
from EMPLOYEES
group by JOB_ID
having avg(SALARY)>5000;


-- display department where their average salary is more than 6k

SELECT DEPARTMENT_ID,round(avg(SALARY))
from EMPLOYEES
where DEPARTMENT_ID is not null -- to remove null department id from the result
group by DEPARTMENT_ID
having  avg(SALARY)> 6000
order by 2 asc;

--Interview Q --> display duplicate (more than one) firstname from employees table
select FIRST_NAME, count(*) from EMPLOYEES
group by FIRST_NAME
having count(*)>2

--display department id where employees count is bigger than 5

select DEPARTMENT_ID, count(*)
from EMPLOYEES
group by DEPARTMENT_ID
having count(*) >5
order by 2 desc;







