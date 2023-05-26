select * from EMPLOYEES;

create table Developers1(
                           Id_Number Integer primary key,
                           Names varchar(30),
                           Salary Integer
);

select * from DEVELOPERS1;

create table Testers1(
                        Id_Number Integer primary key,
                        Names varchar(30),
                        Salary Integer
);
select * from Testers1;

insert into Developers1 values (1, 'Mike', 155000);
insert into Developers1 values (2, 'John', 142000);
insert into Developers1 values (3, 'Steven', 850000);
insert into Developers1 values (4, 'Maria', 120000);
insert into Testers1 values (1, 'Steven', 110000);
insert into Testers1 values(2, 'Adam', 105000);
insert into testers1 values (3, 'Lex', 100000);

commit work;

select * from Developers1;

select * from Testers1;

/*
 UNION

  -will remove DUPLICATE ROWS
  -will sort data in asc order

 */

select Names from developers1
union
select Names from testers1;

/*
 UNION ALL

  -will NOT remove DUPLICATE ROWS
  -will NOT sort data
 */

select Names from developers1
union all
select Names from testers1;

-- MINUS
--Returns records from first query that is not presented in second query
--Order of the queries is important


select Names from developers1
minus
select Names from testers1;

select Names from Testers1
minus
select Names from Developers1;

--INTERSECT




select Names from Developers1
intersect
select Names from Testers1;


