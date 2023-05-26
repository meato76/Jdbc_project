/*Aliases

 Used to give temporary name to table and columns
  column Aliases -> we use as keyword to give temporary columnName
  -> select columnName as "name" from Table;

  table Aliases -> given with a space

  --> select column from TableName Name;

  NOTE --> We are just displaying and noting will change in DB


 */

 -- Column Aliases
 select FIRST_NAME || ' '|| LAST_NAME as "Full Nmae" from EMPLOYEES;
 select concat(EMAIL,'@gmail.com') as "Email Addresses" from EMPLOYEES;

-- Table Aliases

select E.FIRST_NAME,E.LAST_NAME, D.DEPARTMENT_NAME from EMPLOYEES E,DEPARTMENTS D ;

select * from COUNTRIES
where REGION_ID=1 and COUNTRY_NAME<>'Germany';
