select * from employees;

/*

 it limits rows based on provided number
 */

select * from EMPLOYEES
where ROWNUM<11;

-- display all information from employees who is getting first 5 highest salary
-- Bad Practice
-- It is getting data before order them based on salary
-- and cut the line 6 then it tries to order them between first 5 rows
select * from EMPLOYEES
where ROWNUM <6
order by SALARY desc;


---


SELECT * from EMPLOYEES order by SALARY desc;

-- correct answer
-- using ordered by salary desc employees table as an input,
-- after FROM keyword then cutting first 5 with rownum

select *
from (SELECT * from EMPLOYEES order by SALARY desc)
where ROWNUM <6;

-- display all information who is getting 5th highest salary

select distinct salary from EMPLOYEES order by SALARY DESC;


-- first we need to find what is 5th highest salary
select SALARY from ((select distinct salary from EMPLOYEES order by SALARY DESC))
where rownum <6;

-- who is making highest salary

select * from EMPLOYEES
    where SALARY = (select min (SALARY) from (select SALARY from ((select distinct salary from EMPLOYEES order by SALARY DESC))
                          where rownum <6));


-- IQ how do you find who is making 37th highest salary?

-- for the Nth highest salary formula rownum <+1
-- for the 37th highest salary rownum <37+1 =38
select * from EMPLOYEES
where salary = (select min (SALARY) from (select SALARY from ((select distinct salary from EMPLOYEES order by SALARY DESC))
                          where rownum <38));









