#SQL
```sql
show databases;
use mysql;
create table data3(id int, name varchar(20), loc varchar(20));
insert into data3 values(1, "rakesh", "pune");
insert into data3 values(2, "Mukesh", "Mumbai");
insert into data3 values(3, "Rupali", "banglore");
select * from data3;
update data3 set name = "sohan" where id = 1;
select * from data3;
update data3 set loc = "channai" where name = "mukesh";
select * from data3;
delete from data3 where id = 1;
select * from data3;
delete from data3 where id = "mukesh";
delete from data3 where id = 3;
select * from data3;
set autocommit = 0;
start transaction;
insert into data3 values (3, "gauri", "channai");
insert into data3 values (4, "shruti", "pune");
select * from data3;
rollback;
insert into data3 values (4, "shruti", "pune");
insert into data3 values (3, "gauri", "channai");
select * from data3;
commit;
select * from data3;
rollback;
select * from data3;
insert into data3 values (5, "Pratik", "Pune");
insert into data3 values (6, "Samarth", "Pune");
select * from data3;
savepoint p1;
insert into data3 values (7, "Rahul", "Pune");
insert into data3 values (8, "Lokesh", "Pune");
select * from data3;
savepoint p2;
select * from data3;
insert into data3 values (9, "yash", "Pune");
insert into data3 values (10, "Bhim", "Kanpur");
select * from data3;
rollback to p2;
select * from data3;
rollback to p1;
select * from data3;
create user pandu@localhost identified by "jimmi";
grant select on data3 to pandu@localhost;
grant update on data3 to pandu@localhost;
grant delete on data3 to pandu@localhost;
revoke update on data3 from pandu@localhost;
revoke update on data3 from pandu@localhost;
revoke delete on data3 from pandu@localhost;
grant all on data3 to pandu@localhost;
revoke all on data3 from pandu@localhost;




C:\Users\majag>cd C:\Program Files\MySQL\MySQL Server 8.0\bin
C:\Program Files\MySQL\MySQL Server 8.0\bin>mysql -u pandu -p
mysql -u pandu -p
use mysql;
show databases;
show tables;
select * from data3;
update data3 set name = "sohan" where id = 1;
select * from data3;
update data3 set name = "sohan" where id = 2;
select * from data3;
delete from data3 where id = 1;
delete from data3 where id = 2;
select * from data3;
```





```sql
-- select: use to select data from the database
select * from data;
select name marks from student;
select distinct city from student;
-- clauses: condition
-- where clause: to define some conditions
select * from student where marks > 80;
select * from student where city = "Mumbai";
select * from student where marks > 80 and city = "Mumbai";
-- operators: using operators in where
-- arithmatic: +  -  *  /  %  
-- comparison: =  !=  <  >  <=  >=
-- logical: and or not in between all like any 
-- bitwise: & |
select * from student where marks > 30; 
select * from student where name = "Pratik";
-- and: to check for both conditions to be true 
select * from student where marks > 80 and city = "Mumbai";
-- or: to check for one of the condition to be true
select * from student where marks > 90 or city = "Mumbai";
-- between: select for a given range: inclusive values: also 80 marks and 90 marks members included
select * from student where marks between 80 and 90;
-- in: matches any value in the list
select * from student where city in ("Delhi","Mumbai");
-- not: to negate condition
select * from student where city not in ("Delhi","Mumbai"); 
-- limit: sets an upper limit on number of (tuples) rows to be returned
select * from student where marks > 90 limit 3;
-- order by: to sort in assending(asc) order or decending(desc) order
select * from student order by city desc;
select * from student order by city desc limit 3;
-- aggregate functions: aggreate functions perform a calculations on a set of values, and return a single value.
-- count(): count numbers
select count(name) from student; 
-- max(): get maximum values
select max(marks) from student;
-- min(): get minimum values
select min(marks) from student;
-- sum: get sum of values
select sum(marks) from student;
-- avg(): get average of values
select avg(marks) from student;
-- group by clause
select city, count(rollno) from student group by city;
select city, name, count(rollno) from student group by city, name;
select city, avg(marks) from student group by city order by city, ;
select city, avg(marks) from student group by city order by avg(marks);
select city, avg(marks) from student group by city order by avg(marks) desc;
select mode, count(customer) from payment group  by mode;
select grade, count(rollno) from student group by grade order by grade;
-- having clause: simmilar to where i.e. applies some condition on rows.
-- used when we we want to apply any *condition after grouping*. 
-- where: rows
-- having: groups
select city, count(rollno) from student group by city having max(marks)>90;

-- general order:
select columns
from table
where condition
group by columns
having condition 
order by columns asc;
select city from student where grade = "A" group by city having max(marks) >= 90 order by marks asc;

-- table related Queries:
-- update: to update existing rows
update student set grade = "0" where grade = "A";
set sql_safe_updates = 0;
update student set marks = 80 where rollno = 105;       
update student set grade = "B" where marks = 80 between 90; 
update student set marks = marks+1;
-- delete: to delete some existing rows
delete from student where marks < 33; 
delete from student; all data removed.

-- foreign key:
constraint std_fk1 foreign key(id) references stident(id);

-- 01|12|24
-- APC
use mydb;
show tables;
select * from student;

create table dept(
id int primary key,
name varchar(20)
);

insert into dept
(id, name)
values
(101, "english"),
(102, "IT");

select * from dept;

update dept 
set id = 103
where id = 102;


create table teacher(
id int primary key,
name varchar(20),
deptid int,
foreign key (deptid) references dept(id)
);

insert into teacher
(id, name, deptid)
values
(1001, "Adam", 101),
(1002, "BOb", 102);

select * from teacher;

update teacher 
set name = "Bob"
where id = "1002";

drop table teacher;

create table teacher(
id int primary key,
name varchar(20),
deptid int,
foreign key (deptid) references dept(id)
on update cascade
on delete cascade
);

desc dept;
desc teacher;

-- cascading for foreign key

-- on update cascade
-- when we create a foreign key using this option, it deleteshe referenceing row  in the child table when the referenced row is deleted in the parent table which has a primary key.

-- on delete cascade
-- when we create  a foreign key using update cascade the referencing rows are updated in the child table when the reference row is updated in the parent table which has a primary key.

-- table related queries: 
-- Alter(to change  the schema | design ):

-- ADD column:
-- alter table table_name add column column_name datatype constraint;

-- Drop Column:
-- alter table table_name drop column column_name;

-- RENAME column:
-- alter table table_name rename to new table_name;

-- CHANGE column (rename):
-- alter table table_name change column new_name new_datatye new_constraints;

-- MODIFY Column:
 -- alter table table_name modify col_name new _datatype new_constraints;

select * from student;

alter table student
add column grade varchar(20) not null default "C";  

alter table student
drop column  grade;

alter table student
rename to grades;

alter table grades
rename to student;	

alter table student
change column grade grd varchar(20);
 
 alter table student 
 modify grd char not null;
 
 desc student;
 
 -- table related queries:
 -- Truncate (to delete table's data)
 
 -- truncate table table_name;
 truncate table student;
 
 update student 
 set grd = "A"
 where grd = "C";
 -- Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.

-- Practice Questions:
select * from student;
-- a. Change the name of column "name" to "full_name".
alter table student
change column name full_name varchar(20);
-- b. delete all the student who scored marks less than 80.alter
delete from student 
where marks<30;
-- Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.
-- c. delete the column for garade.
alter table student 
drop column grd;

-- joins in sql:
-- joins used to combine rows from two or more tables, based on a related columns between them.

-- Inner join 
-- Outer join - Left join, Right join, Full join
 
-- Inner join:
-- Returns record that have matching values in both tables.
-- select columns from tableA inner join tableB on tableA.col_name = tableB.col_name;

create database collage;
use collage;

create table student(
id int primary key,
name varchar(20)
);

insert into student
(id, name)
values
(101, "Adam"),
(102, "Bob"),
(103, "Casey");

create table course(
id int primary key,
course varchar(20)
);

insert into  course
(id, course)
values 
(102, "English"),
(105, "Math"),
(103, "Science"),
(107, "Computer Science");

select * from student;
select * from course;

select * from student
inner join course
on student.id = course.id;

select * from student as s
inner join course as c
on s.id = c.id;

-- Left Join:
-- Returns all records from the left table, and the matching record from the right tabe
-- select columns from tableA left join tableB on tableA.col_name = tableB.col_name;
select * from student left join course on student.id = course.id; 

-- Right Join:
-- Returns all record from the right table, and the matching record from the right table
-- select columns from tableA right join tableB on tableA.col_name = tableB.col_name;
select * from student right join course on student.id = course.id;

-- Full Join | Full Outer join | Union : Full join not present in mysql it uses union, but present in oracle and postgrey.
-- Returns all record when there is a match in either left or right table.
select * from student as a left join course as b on a.id = b.id union select * from student as a right join course as b on a.id = b.id;

-- Think & Ans:
-- Right Exclusive join:
select * from student right join course on  student.id = course.id where student.id is null;
-- Left Exclusive join:
select * from student left join course on  student.id = course.id where course.id is null;

-- Self Join:
-- It is regular join but the table is joined with itself.alter
-- select columns from tableA as a join tableA as b on a.col_name = b.col_name;
select a.name as manager_name, b.name from employee as a join employee as b on a.id = b.manager_id;

create table employee(
id int primary key,
name varchar(20),
manager_id int
);

insert into employee (id, name, manager_id)
values
(101, "adam", 103),
(102, "bob", 104),
(103, "casey", null),
(104, "donald", 103);
-- Error Code: 1062. Duplicate entry '101' for key 'employee.PRIMARY'

select * from employee; 

select * from employee as a join employee as b on a.id = b.manager_id; 
select a.name, b.name from employee as a join employee as b on a.id = b.manager_id; 
select a.name as manager_name, b.name from employee as a join employee as b on a.id = b.manager_id; 

-- 02|11|24
-- Union | Mosty use to perform Full Join:
-- It is used to complete the result-set of two or more select statement. Gives Unique records.alter

-- To use it:
-- every select should have same no. of columns
-- columns must have similar data types
-- columns in every sellect should be in same order.

-- select column(s) from tableA union select column(s) from tableB

-- SubQueries |InnerQueries | NestedQueries
-- A subqueries oe inner queries or a nested queries is a query within another sql query.
-- It involves 2 select statement.
-- Query - SubQuery - Query depend on subquery 
-- select column(s) from table_name where col_name operator (subquery);

-- SQL Sub Queries
-- Example
-- Get names of all students who scored more than class average.
-- step1: find the avg of class.
-- step2: find the names of student with marks > avg.

use mydb;
select * from student;
select marks from student;
select avg(marks) from student; 
select full_name, marks from student where marks > 73.33;
select full_name, marks from student where marks > (select avg(marks) from student);

--  find the name of all students with even roll no.
-- step1: Find the even roll numbers.
-- step2: Find the names of student with even roll no.

select * from student;
select * from student where id%2 = 0;
select full_name from student where id in (select id from student where id % 2 = 0);

-- SQL Sub Queries:
-- Example with From
-- Find  the max marks from the student of Delhi
-- step1: Find the student of Delhi.
-- step2: Find the max marks using the sublist in step 1.
select * from student;
alter table student add column city varchar(20) not null default "Delhi";
select * from student where city = "Delhi";
select max(marks) from (select * from student where city = "Delhi") as temp;

-- SQL Sub Queries:
-- Example with select
select (select max(marks) from student), full_name from student;

-- MySql Views:
-- A view is a virtual table based on the result-set of an sql statement.
-- A view always shows up to date data. the database engine recreates the view, every time a user queries it.
-- table - real - real data - operations.
-- view - virtual 
create view view1 as select id, full_name from student;
select * from view1;
select * from view1 where id = 8;
drop view view1;
```