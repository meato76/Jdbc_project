select * from EMPLOYEES;


/*

 Creat table syntax:

 creat table TableName(
    colName1 DataType Constrains,
    colName2 DataType Constrains (optional)
    colName3 DataType Constrains,
        ....

        );

 NOTE : --> Constrains are NOT mandatory

 */

 create table students (
     studentID INTEGER PRIMARY KEY ,
     FIRSTNAME VARCHAR(50) NOT NULL ,
     email varchar(50) UNIQUE ,
     age Integer CHECK ( age>18 ),
     status varchar(50) default  'Active'

 );

select * from students;

/*
 INSERT INTO tableName (column1, column2,...)
 VALUES (value1, value2 ...)
 */

 insert into students (studentID, FIRSTNAME, email, age)  values (1,'Mike','mike@gmail.com',20);


 insert into students (studentID, FIRSTNAME, email, age,status)  values (2,'Yulia','yulia@gmail.com',22,'ACTIVE');


 insert into students (studentID, FIRSTNAME, email, age)  values (3,'John','john@gmail.com',22);

 insert into students (studentID, FIRSTNAME, email, age)  values (4,'Bryan','bryan@gmail.com',30);


--to save changes in database we need to use commit or commit work;

commit ;

/*
 UPDATE table_name
 SET column1 = value1,
 column2= value2,
 WHERE condition;

 */

 update students
set status = 'ACTIVE';

update students
set status = 'INACTIVE'
where studentID=1;

commit ;

/*
 DELETE FROM table_name
 WHERE condition;
 */

 delete  from students
where studentID=1;


select * from  students;

-- ALTER --> alter table students

 --ADD NEW COLUMN  --.add columnNameType
        alter table students add gender varchar(20);
--update John gender as Male

update students set gender = 'Male'
where studentID=3;

        --RENAME COLUMN -- rename column to newColumn

   alter table students rename column  email to emailAddress;

--DROP COLUMN   --> column columnName

    alter table students drop column gender;

--RENAME TO    --> rename to newTable

alter table students rename  to friends;
commit;

--TRUNCATE    --> remove the table content
        -- truncate table tableName

truncate table friends;

--DROP
-- drop tableName

drop table friends;


select * from  friends;




