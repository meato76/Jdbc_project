select EMPLOYEE_ID,FIRST_NAME,LAST_NAME,MANAGER_ID from EMPLOYEES;



select workers.FIRST_NAME,workers.LAST_NAME,managers.FIRST_NAME,managers.LAST_NAME
from EMPLOYEES workers inner join  EMPLOYEES managers
on workers.MANAGER_ID=managers.EMPLOYEE_ID;