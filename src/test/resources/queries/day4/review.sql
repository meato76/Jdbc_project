--display all information who is getting 3th lower salary

select *
from EMPLOYEES;

select distinct SALARY
from EMPLOYEES
order by salary ASC;

-- 3rd min salary is 2400

-- get 3rd  min salary dynamic

select max(SALARY)
from (select distinct SALARY
      from EMPLOYEES
      order by salary ASC)
where ROWNUM < 4;

select *
from EMPLOYEES
where SALARY = (select max(SALARY)
                from (select distinct SALARY
                      from EMPLOYEES
                      order by salary ASC)
                where ROWNUM < 4);

--who is making 46th min salary dynamically?

select *
from EMPLOYEES
where SALARY = (select max(SALARY)
                from (select distinct SALARY
                      from EMPLOYEES
                      order by salary ASC)
                where ROWNUM < 47);



select * from EMPLOYEES;

select  * from DEPARTMENTS;





