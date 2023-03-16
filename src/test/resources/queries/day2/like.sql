/*

 - Percent %    --> for matching any sequences of characters. 0 or more
 - underscore _ -->  for matching any single character

- contains
 -startwith
 -endwith
 */

--  display all employees where first_name startwith B

select  * from EMPLOYEES
where FIRST_NAME like 'B%';

-- display all employees where first name startwith B and lent of it 5 character

select * from  EMPLOYEES
where FIRST_NAME like 'B____';

-- display 5 letter firstname from employees where middle character is z

select  * from EMPLOYEES
where FIRST_NAME like '__z__';

-- display first name endwith 'e';

select * from EMPLOYEES
where FIRST_NAME like '%e';

-- display all employees where job id contains IT

select * from EMPLOYEES
where JOB_ID like '%IT%';

-- display all information where firstname startwith H and ending with l

select * from EMPLOYEES
where FIRST_NAME like 'H%' and FIRST_NAME like '%l';