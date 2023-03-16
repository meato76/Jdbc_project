 ---select * from employees;

 /*

  it show different values from query result based provided column


  */

-- it returns 107
select FIRST_NAME from EMPLOYEES;


-- it removed duplicates and returned 91 result
select distinct FIRST_NAME from EMPLOYEES;



-- it will check each row to filter different column --> * --> all columns
select distinct * from EMPLOYEES;

select  * from jobs;
-- since primary key cannot be duplicate it give the same result
select  job_id from JOBS;

