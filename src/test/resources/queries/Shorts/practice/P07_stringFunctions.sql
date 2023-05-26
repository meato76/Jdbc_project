   /*
    only used for display,  does not modify table

    */

    /*

     concatenation operator : ||
     firstName lastName
     Steven King

     Java --> firstName + "" + lastName --> Steven King
     SQL --> firstName||' ' || lastName -- Sten King

     */



SELECT FIRST_NAME ||' '|| LAST_NAME from  EMPLOYEES;

-- display employees email with gmail domain only
-- SKING@gmail.com

SELECT EMAIL|| '@gmail.com' from EMPLOYEES;

-- CONCAT (value1,value2);
-- Steven King
SELECT concat(concat(FIRST_NAME,' '),LAST_NAME) from EMPLOYEES;

-- SKING@gmail.com

SELECT concat(EMAIL, 'gmail.com') from EMPLOYEES;


-- UPPER (value);
SELECt upper(FIRST_NAME) from EMPLOYEES;


---- LOWER (value);

SELECT  LOWER(FIRST_NAME) from  EMPLOYEES;

--INITCAP (value); --> first letter is UPPERCASE and rest of them will be LOWERCASE

Select initcap(EMAIL) from EMPLOYEES;


--LENGHT(value);

select FIRST_NAME, length(FIRST_NAME) from EMPLOYEES;

/* SUBSTR (columnName, beginningIndex, numberOfChar)
   - if beginning index 0 , it is treated as 1

 */


   -- Steven King --> S>K --> Initials

 select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.'  from EMPLOYEES;

