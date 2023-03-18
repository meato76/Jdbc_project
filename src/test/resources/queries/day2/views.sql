select * from employees;

select  substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.'as inisial,
   FIRST_NAME||' '|| LAST_NAME as full_name from EMPLOYEES;

create view EmployeesInfo as
select  substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.'as inisial,
        FIRST_NAME||' '|| LAST_NAME as full_name from EMPLOYEES;


select * from EMPLOYEESINFO;

select inisial from EMPLOYEESINFO;


-- Drop view

drop  view EmployeesInfo;