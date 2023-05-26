select  * from CUSTOMER_MUST c full outer join ADDRESS_MUST a
on c.ADDRESS_ID=a.ADDRESS_ID;


select  c.FIRST_NAME, c.LAST_NAME, a.ADDRESS, a.PHONE
from CUSTOMER_MUST c full outer join ADDRESS_MUST a
                                               on c.ADDRESS_ID=a.ADDRESS_ID;

