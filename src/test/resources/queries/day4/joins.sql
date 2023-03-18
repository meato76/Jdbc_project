select *
from customer;

select *
from address;

select FIRST_NAME, LAST_NAME, ADDRESS, PHONE
from CUSTOMER
         join ADDRESS
              on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

-- Q What if I want to see customer table address_id information too


select FIRST_NAME, LAST_NAME, CUSTOMER.ADDRESS_ID, ADDRESS.ADDRESS_ID, ADDRESS, PHONE
from CUSTOMER
         join ADDRESS
              on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

--Table Aliases
-- CUSTOMER --Cus
-- EMPLOYEES -E
--ADDRESS --A

select FIRST_NAME, LAST_NAME, C.ADDRESS_ID, A.ADDRESS_ID, ADDRESS, PHONE
from CUSTOMER C
         join ADDRESS A
              on C.ADDRESS_ID = A.ADDRESS_ID;

/*

 LEFT OUTER / LEFT JOIN
 --it will give matching part between tables + unique for LEFT table
 --the order of the table is important

 */

select FIRST_NAME, LAST_NAME, C.ADDRESS_ID, A.ADDRESS_ID, ADDRESS, PHONE
from CUSTOMER C
         Left outer join ADDRESS A
                         on C.ADDRESS_ID = A.ADDRESS_ID;
/*

RIGHT OUTER / LEFT JOIN
 --it will give matching part between tables + unique for RIGHT table
 --the order of the table is important



 */
select FIRST_NAME, LAST_NAME, C.ADDRESS_ID, A.ADDRESS_ID, ADDRESS, PHONE
from CUSTOMER C
right outer join ADDRESS A
on C.ADDRESS_ID = A.ADDRESS_ID;


--FULL OUTER JOIN


select FIRST_NAME, LAST_NAME, C.ADDRESS_ID, A.ADDRESS_ID, ADDRESS, PHONE
from CUSTOMER C
full outer join ADDRESS A
  on C.ADDRESS_ID = A.ADDRESS_ID;