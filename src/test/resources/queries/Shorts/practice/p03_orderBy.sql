

select * from COUNTRIES;

/*
 ORDER BY ---> used for sorting result


 -AS A DEFAULT it will sort data in ASC (0-9, A-Z)

 - DESC will order data (9-0, Z-A)


 */
----ASC
 select * from COUNTRIES
order by REGION_ID;


select * from COUNTRIES
order by REGION_ID asc ;


-- DESC


select * from COUNTRIES
order by REGION_ID desc ;


--- can we use in here where clause too

--Yes

select * from COUNTRIES
where REGION_ID=3
order by COUNTRY_NAME;