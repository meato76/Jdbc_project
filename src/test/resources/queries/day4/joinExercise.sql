--1.Display all first_name and related department name

SELECT FIRST_NAME, E.DEPARTMENT_ID, DEPARTMENT_Name
from EMPLOYEES E
         JOIN DEPARTMENTS D on E.DEPARTMENT_ID = D.DEPARTMENT_ID;

-- Order the list based on firstname asc


SELECT FIRST_NAME, E.DEPARTMENT_ID, DEPARTMENT_Name
from EMPLOYEES E
         JOIN DEPARTMENTS D on E.DEPARTMENT_ID = D.DEPARTMENT_ID
order by FIRST_NAME asc;

--2.Display all first_name and department including the employee without department

SELECT FIRST_NAME, E.DEPARTMENT_ID, DEPARTMENT_Name
from EMPLOYEES E
         LEFT JOIN DEPARTMENTS D on E.DEPARTMENT_ID = D.DEPARTMENT_ID;

SELECT FIRST_NAME, E.DEPARTMENT_ID, DEPARTMENT_Name
from DEPARTMENTS D
         Right join EMPLOYEES E on D.DEPARTMENT_ID = E.DEPARTMENT_ID;

-- 3. Display all first_name and department_name including the department without employee

SELECT FIRST_NAME, D.DEPARTMENT_ID, DEPARTMENT_NAME
from EMPLOYEES D
         right join DEPARTMENTS D2 on D2.DEPARTMENT_ID = D.DEPARTMENT_ID;


--4. How many employees we have for each department name

SELECT DEPARTMENT_NAME, count(*)
from EMPLOYEES E
         JOIN DEPARTMENTS D on E.DEPARTMENT_ID = D.DEPARTMENT_ID
GROUP BY DEPARTMENT_NAME;


--5. Display all first_name and department name including department without employees and also employees without department

SELECT FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES D
         Full join DEPARTMENTS D2 on D2.DEPARTMENT_ID = D.DEPARTMENT_ID;

--6. Display all cities and related country name

SELECT *
from LOCATIONS;
SELECT *
from COUNTRIES;


SELECT CITY, COUNTRY_NAME
from LOCATIONS
         join COUNTRIES C on C.COUNTRY_ID = LOCATIONS.COUNTRY_ID;

--7. Display all cities and related country names including countries without city.

SELECT CITY, COUNTRY_NAME
from LOCATIONS
         right join COUNTRIES C on C.COUNTRY_ID = LOCATIONS.COUNTRY_ID;


--8.Display all department name and related Street address

SELECT *
from DEPARTMENTS;
Select *
from LOCATIONS;

SELECT DEPARTMENT_NAME, Street_Address
from DEPARTMENTS
         join LOCATIONS L on DEPARTMENTS.LOCATION_ID = L.LOCATION_ID;

--9. Display first_name, last_name, department name and city for all employees

SELECT *
from EMPLOYEES;
SELECT *
from DEPARTMENTS;
Select *
from LOCATIONS;
SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, City
from EMPLOYEES
         join DEPARTMENTS D on EMPLOYEES.DEPARTMENT_ID = D.DEPARTMENT_ID
         join LOCATIONS L on D.LOCATION_ID = L.LOCATION_ID;

--10. Display first_name, last_name, department name and city and country name for all employees


SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, City, country_name, REGION_NAME
from EMPLOYEES
         join DEPARTMENTS D on EMPLOYEES.DEPARTMENT_ID = D.DEPARTMENT_ID
         join LOCATIONS L on D.LOCATION_ID = L.LOCATION_ID
         join COUNTRIES C on C.COUNTRY_ID = L.COUNTRY_ID
         join REGIONS Reggions on C.REGION_ID = Reggions.REGION_ID;

-- how many employees working for each country_name?

SELECT COUNTRY_NAME,count (*)
from EMPLOYEES
         join DEPARTMENTS D on EMPLOYEES.DEPARTMENT_ID = D.DEPARTMENT_ID
         join LOCATIONS L on D.LOCATION_ID = L.LOCATION_ID
         join COUNTRIES C on C.COUNTRY_ID = L.COUNTRY_ID
 group by COUNTRY_NAME;
















