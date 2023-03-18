select *
from Employees;

--Display all information who is making max salary

--max salary

SELECT max(SALARY)
from EMPLOYEES;
--24000

--if we know max salary can we find who is making it?

select *
from EMPLOYEES
where SALARY = 24000;


--if the steven King salary changes we cant find person who is getting max salary with query above

--Dynamic result

select *
from EMPLOYEES
where SALARY = (SELECT max(SALARY) from EMPLOYEES);

-- TASK : Give me all information who is getting min salary

--min salary?

SELECT min(SALARY)
from EMPLOYEES;

-- who is making min salary?

select *
from EMPLOYEES
where SALARY = 21000;

-- dynamic query
select *
from EMPLOYEES
where SALARY = (SELECT min(SALARY) from EMPLOYEES);

---"Interview question"

--display all information who is getting second highest salary ?

-- find max salary
SELECT max(SALARY)
from EMPLOYEES;

-- second max salary
select max(SALARY)
from EMPLOYEES
where SALARY < 24000;

--who is making 17000

select *
from EMPLOYEES
where SALARY = 17000;

--make it dynamic

select *
from EMPLOYEES
where SALARY = (select max(SALARY)
                from EMPLOYEES
                where SALARY < (select max(SALARY)
                                from EMPLOYEES));


-- TASK: display all information who is getting more than AVG?

-- find average salary

SELECT round(avg(salary))from EMPLOYEES;-- 6462

-- who is making more than average salary?

SELECT * from EMPLOYEES
where SALARY > (SELECT avg(salary)from EMPLOYEES);




