/*

 VIW

 -> It is like virtual table that contains data from one or multiple table
 -> It does not hold any data and does not exist physically in the database
 -> A view also has rows and columns as the are in real table in the database

 SYNTAX
 CREATE VIEW tableName AS
 Type Query Here

 CREAT OR REPLACE VIEW tableName AS
 Type Query Here


 */

CREATE  VIEW PERSONAL_INFO AS

    select  FIRST_NAME||''||LAST_NAME as "Fall Name" from EMPLOYEES;

drop view PERSONAL_INFO;

CREATE  VIEW PERSONAL_INFO AS

select  FIRST_NAME||''||LAST_NAME as "Fall Name" from EMPLOYEES;

create  or replace  view PERSONAL_INFO as
    select "Fall Name" from PERSONAL_INFO;
