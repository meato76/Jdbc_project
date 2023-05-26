
select * from CUSTOMER_MUST c right outer join ADDRESS_MUST a
on c.ADDRESS_ID= a. ADDRESS_ID;


select c.FIRST_NAME, c.FIRST_NAME, a.ADDRESS, a.PHONE
                               from CUSTOMER_MUST c right outer join ADDRESS_MUST a
                                                                     on c.ADDRESS_ID= a. ADDRESS_ID;


select c.FIRST_NAME, c.FIRST_NAME, a.ADDRESS, a.PHONE
from CUSTOMER_MUST c right join ADDRESS_MUST a
                                      on c.ADDRESS_ID= a. ADDRESS_ID;

select c.FIRST_NAME, c.FIRST_NAME, a.ADDRESS, a.PHONE
from ADDRESS_MUST a left join CUSTOMER_MUST c on a.ADDRESS_ID= c.address_id;
