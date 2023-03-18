select *
from employees;

-- Task: how many locations we have for each country?

select *
from LOCATIONS;

select COUNTRY_ID, count(*)
from LOCATIONS
group by COUNTRY_ID;

--order them based country_id asc

select COUNTRY_ID, count(*)
from LOCATIONS
group by COUNTRY_ID
order by COUNTRY_ID asc;

-- what if I want to see only US,UK and CA

select COUNTRY_ID, count(*)
from LOCATIONS
where COUNTRY_ID in ('US', 'UK', 'CA')
group by COUNTRY_ID
order by COUNTRY_ID asc;

-- display where location count is bigger than 2

select COUNTRY_ID, count(*)
from LOCATIONS
where COUNTRY_ID in ('US', 'UK', 'CA')
group by COUNTRY_ID
having count(*)>2
order by COUNTRY_ID asc;


-- Task2: Display all employees salary in following format as column name Employees_salary
        --Ex:
            -- Steven makes 24000
            -- Neena makes 17000

select * from EMPLOYEES;

select FIRST_NAME||' makes '||SALARY as Emplaoyes_salary
from EMPLOYEES;




