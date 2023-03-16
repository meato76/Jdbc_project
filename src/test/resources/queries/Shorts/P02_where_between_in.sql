select  * from employees;

/*


 WHERE Clause : used to filter result

 select columName(s) from Table(S)
where condition;

 Operators


 */


--- Display firstname, lastname ana salary information whew firstname is James
select  FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES
where  FIRST_NAME='James';
-- ' ' is sensitive

-- Display firstname ana salary information who is making less than 5000

select FIRST_NAME,SALARY from EMPLOYEES
where  SALARY<5000;

--- Display all information who is making less than 5000 and manager id is 114

select  * from EMPLOYEES
where  SALARY<5000 and MANAGER_ID=114;


-- Display firstname, lastname information who is making less than and equal 5000 and more than equal 3000

select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES
where SALARY<=5000 and SALARY>=3000;



----Display firstname, lastname, salary where firstname is 'David' or 'Peter'

select FIRST_NAME,LAST_NAME,SALARY from  EMPLOYEES
    where FIRST_NAME='David' or FIRST_NAME='Peter' or FIRST_NAME='James';



/*

 BETWEEN  ----> Used for filtering result with range

                BETWEEN lowest and highest
                lowest/highest boundries are INCLUDED


 */

------Display firstname, lastname information who is making less than and equal 5000 and more than equal 3000


select  FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES
where SALARY between  3000 and 5000;


/*

 IN STATEMENT  --< it works same logic with OR for multiple conditions

 */



select FIRST_NAME,LAST_NAME,SALARY from  EMPLOYEES
where FIRST_NAME in ('David', 'James', 'Peter');
