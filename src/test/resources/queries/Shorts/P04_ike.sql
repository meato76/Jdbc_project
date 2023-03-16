select *
from countries;

/*

 Like

        -Percent ( % ) for matching any sequence of characters. (0 or more)
        -Underscore ( _ ) for matching any single characters .

        - contains
        - startswich
        - endswith




 */

-- START WITH
-- Get me all countries where country_name start with 'A';


select *
from COUNTRIES
where COUNTRY_NAME like 'A%';


-- ENDS WITH
-- Get me all countries where country_name ends with 'a';

select *
from COUNTRIES
where COUNTRY_NAME like '%a';


--- START WITH  &  END WITH
-- Get me all countries where country_name starts with 'M' and ends with 'o';

select * from COUNTRIES
where COUNTRY_NAME like 'M%o';


-- Get me all countries where country_name starts with 'A' OR ends with 'a';

Select  * from COUNTRIES
where COUNTRY_NAME like  'A%' or COUNTRY_NAME like '%a';

-- CONTAINS
-- Get all country names where country names contains 'b'

select * from COUNTRIES
where COUNTRY_NAME like '%ba%';

-- Get me all countries where country names ends with 'a' and 6 letter

select  * from COUNTRIES
where COUNTRY_NAME like '_____a';

-- Get me all countries where country names 5th letter is 'a'

SELECT * from COUNTRIES

where  COUNTRY_NAME like '____a%';








