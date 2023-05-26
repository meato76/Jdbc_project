select * from CUSTOMER_MUST c left outer join  ADDRESS_MUST a
on c.ADDRESS_ID= a.ADDRESS_ID;

select FIRST_NAME,LAST_NAME,a.ADDRESS_ID,a.PHONE
from CUSTOMER_MUST c left outer join ADDRESS_MUST a
                                        on c.ADDRESS_ID= a.ADDRESS_ID;

-- LEFT OUTER / LEFT JOIN WILL GIVE SAME RESULT