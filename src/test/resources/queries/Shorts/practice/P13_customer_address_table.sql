
select * from employees;

CREATE TABLE address_Must(
                        address_id Integer PRIMARY KEY,
                        address VARCHAR(50) NOT NULL,
                        phone Integer NOT NULL
);

INSERT INTO address_Must (address_id, address, phone) VALUES (5,'1913 Hanoi Way',  28303384);
INSERT INTO address_Must (address_id, address, phone) VALUES (7,'692 Joliet Street',  44847719);
INSERT INTO address_Must (address_id, address, phone) VALUES (8,'1566 Inegl Manor',  70581400);
INSERT INTO address_Must (address_id, address, phone) VALUES (10,'1795 Santiago',  86045262);
INSERT INTO address_Must (address_id, address, phone) VALUES (11,'900 Santiago',  16571220);

select * from address_Must;

CREATE TABLE customer_Must(
                         customer_id Integer PRIMARY KEY,
                         first_name VARCHAR(50) NOT NULL,
                         last_name VARCHAR(50)NOT NULL,
                         address_id Integer REFERENCES address_Must (address_id)
);

INSERT INTO customer_Must (customer_id, first_name, last_name,address_id) VALUES (1, 'Mary' ,  'Smith',  5);
INSERT INTO customer_Must (customer_id, first_name, last_name,address_id) VALUES (2,  'Patricia' ,  'Johnson' ,  NULl);
INSERT INTO customer_Must (customer_id, first_name, last_name,address_id) VALUES (3,  'Linda' ,  'Williams' ,  7);
INSERT INTO customer_Must (customer_id, first_name, last_name,address_id) VALUES (4, 'Barbara' ,  'Jones' , 8);
INSERT INTO customer_Must(customer_id, first_name, last_name,address_id) VALUES (5,  'Elizabeth' ,  'Brown' ,  NULL);
select * from customer_Must;



commit work;


