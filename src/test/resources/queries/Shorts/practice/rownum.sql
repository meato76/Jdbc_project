/*
 - Limits the number of result displayed in the query result
 - Only works with less than (<) and less then and equals(<=)
 -Does not work with greater than and equal(=)

 */

 -- Display all information from employees who is getting first 7 highest salary


 select * from EMPLOYEES
where ROWNUM <=7;

--BAD PRACTICE EXECUTION ORDER
select * from EMPLOYEES
where ROWNUM <=7
order by SALARY desc ;

/*
 - FROM  --> Chose Table
 - Where --> Filter
 -Group By --> Aggregates data
 -Having -- Filter aggregate data
 -Select  --> Returns Data
 Order By --> Sorts Data

 */

-- Display all information from employees who is getting first 7 highest salary

--find me employees information in sorted manner based salary in des

SELECT * from EMPLOYEES
order by SALARY desc ;

-- use the table to apply rownum

select * from (SELECT * from EMPLOYEES
               order by SALARY desc )
where ROWNUM <=7;




-- Display all information from employees who is getting seventh highest salary


-- dis[lay 7th highest salar
-- y
select SALARY from EMPLOYEES order by SALARY desc;

select * from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM <=7;



select  min(SALARY) from (select * from (select distinct SALARY from EMPLOYEES order by SALARY desc)
                         where ROWNUM <=7);

--who is getting 7th highest salary

select * from EMPLOYEES
 where SALARY= (select  min(SALARY) from (select * from (select distinct SALARY from EMPLOYEES order by SALARY desc)
                                          where ROWNUM <=7));

/*

 --Display all information from employees who is getting first 7 highest salary

      MYSQL  - POSTGRESQL  ---> LIMIT

        select * from employees
        order by salary desc
        limit 7;

            MSSQL ----> TOP
            select top 7 * from employees
            order by salary desc
 */





