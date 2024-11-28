# mysql>
```sql 
-- 18|11|2024 SMIT
show databases;
use mysql;
create table ED_RECORD(ID int, NAME varchar(20), JOB varchar(20), SALARY int, COMM int, DEPTNO int);
insert into ED_RECORD values(101,"SURESH","MANAGER",100000,5000,20);
select * from ED_RECORD;
insert into ED_RECORD values(102,"ROHIT","SALES",100000,5000,20);
insert into ED_RECORD values(103,"SUNITA","QUALITY",70000,3000,20);
insert into ED_RECORD values(104,"GAURI","OPERATIONS",80000,3500,20);
insert into ED_RECORD values(105,"SHRUTIKA","MANAGER",150000,4500,10);
insert into ED_RECORD values(106,"SAHIL","SALES",130000,3500,10);
insert into ED_RECORD values(107,"SHALAKA","QUALITY",64000,3500,10);
insert into ED_RECORD values(108,"MOHSIN","OPERATIONS",55000,2500,10);
insert into ED_RECORD values(109,"JEET","MANAGER",155000,4500,30);
insert into ED_RECORD values(109,"JEET","MANAGER",155000,4500,30);
insert into ED_RECORD values(110,"YOGESH","SALES",90000,3500,30);
insert into ED_RECORD values(111,"SMRUTI","QUALITY",55000,2500,30);
insert into ED_RECORD values(112,"PAYAL","OPERATIONS",72000,1500,30);
insert into ED_RECORD values(113,"SWAPNIL","MANAGER",97000,3200,40);
insert into ED_RECORD values(114,"SHIRIN","SALES",50000,1500,40);
insert into ED_RECORD values(115,"SOHAIL","QUALITY",50000,2540,40);
insert into ED_RECORD values(116,"SURAJ","OPERATIONS",83000,2700,40);
insert into ED_RECORD values(117,"GILL","SALES",34000,NULL,50);
insert into ED_RECORD values(118,"SAURABH","OPERATIONS",41200,0,50);
insert into ED_RECORD values(119,"ASHISH","MANAGER",53470,3700,60);
```

<!-- Add Clause in sql -->


<!-- Add operators in sql -->

```sql
-- 21|11|24 SMIT
use mysql;
select lpad("code",8,'@');
select lpad("max",8,'*');
select rpad ( lpad("apple",9,'$'),12,'#');
select rpad ( lpad("bye",6,'*'),10,'$');
select rpad ( lpad("data",7,'#'),10,'&');
select rpad ( lpad("code",8,'@'),10,'$');
select * from ED_RECORD;
select rpad(name,10,'$') from ED_RECORD;
select rpad(name,10,'#'), lpad(job,10,'@') from ED_RECORD;
select lower("ABCD") from dual;
select upper("ABCD") from dual;
select upper("name") from dual;
select lower(name), lower(job) from ED_RECORD;
select length("VISHAKHPATTANAM") from dual;
select length(name), length(job) from ED_RECORD;    
select length ("name")/2;
select round (2.8) from dual;
select round (2.3) from dual;
select round (-2.3) from dual;
select round (-2.8) from dual;
select avg(SALARY) from ED_RECORD;
select round(avg(SALARY)) from ED_RECORD;
select ceil(2.1);
select ceil(2.8);
select floor(2.8);
select floor(2.9);
select ceil(-2.9);
select ceil(-9.9);
select floor(-9.9);
select reverse("coding");
select reverse("coding");
select substr("vishkhapattanum",1);
select substr("vishkhapattanum",-1);
select substr("vishkhapattanum",1,5);
select substr("vishkhapattanum",1,length("vishakhapattanum")/2);
select substr("Pratik",1,length("Pratik")/2);
select substr("Pratik",-length("Pratik")/2);
select substr("Pratik",length("Pratik")/2);
select substr("Pratik",length("Pratik")/2+1);
select substr(name,length(name)/2+1), substr(job,-length(job)/2) from ED_RECORD;
select substr(name,length(name)/2), substr(job,-length(job)/2) from ED_RECORD;
select name from ED_RECORD where name like "A%";
select name from ED_RECORD where name like "S%";
select name from ED_RECORD where name like "%A";
select name from ED_RECORD where name like "____";
select name from ED_RECORD where name like "_H";
select name from ED_RECORD where name like "%EE%";
<!-- escape charecters (they dosen't print on terminal) = % & __ -->
```

```sql 
-- 25|11|24 SMIT
select sysdate();
2024-11-25 16:32:47
select date("2024-11-25");
2024-11-25
select month("2024-11-25");
11
select year("2024-11-25");
2024
select quarter("2024-11-2");
1
select microsecond("2024-2-25 11:12:33.54321");
543210
select dayofmonth("2024-2-25");
25
select dayname("2024-11-25");
Monday
select dayofweek("2024-11-25");
2 - Monday
select dayofyear("2024-11-25");
330
select week("2024-11-25");
47
select yearweek("2024-11-25");
202447
select last_day("2024-11-25");
2024-11-30
select extract(year_month from ("2024-11-25"));
202411
select extract(week from ("2024-11-25"));
47
select extract(month from ("2024-11-25"));
11
select extract(month from ("2024-11-2"));
11
select extract(month from ("2024-1-2"));
1
select extract(month from ("2024-11-25"));
11
select extract(year from ("2024-11-25"));
2024
select extract(hour from ("2024-11-25 12:23:22"));
12
select extract(day from ("2024-11-25"));
25
select extract(minute from ("2024-11-25 12:23:22"));
23
select extract(second from ("2024-11-25 12:23:22"));
22
select extract(microsecond from ("2024-11-25 12:23:22.999999"));
999999
select curtime();
17:06:09
select curtime(4);
17:06:12.3775
select curtime(6);
17:06:18.044820
select DEPTNO from ED_RECORD;
| DEPTNO |
+--------+
|     20 |
|     20 |
|     20 |
|     20 |
|     10 |
|     10 |
|     10 |
|     10 |
|     30 |
|     30 |
|     30 |
|     30 |
|     30 |
|     40 |
|     40 |
|     40 |
|     40 |
|     50 |
|     50 |
|     60 |
select DEPTNO from ED_RECORD group by DEPTNO;
| DEPTNO |
+--------+
|     20 |
|     10 |
|     30 |
|     40 |
|     50 |
|     60 |
select JOB from ED_RECORD group by JOB;
| JOB        |
+------------+
| MANAGER    |
| SALES      |
| QUALITY    |
| OPERATIONS |
select * from ED_RECORD;
| ID   | NAME     | JOB        | SALARY | COMM | DEPTNO |
+------+----------+------------+--------+------+--------+
|  101 | SURESH   | MANAGER    | 100000 | 5000 |     20 |
|  102 | ROHIT    | SALES      | 100000 | 5000 |     20 |
|  103 | SUNITA   | QUALITY    |  70000 | 3000 |     20 |
|  104 | GAURI    | OPERATIONS |  80000 | 3500 |     20 |
|  105 | SHRUTIKA | MANAGER    | 150000 | 4500 |     10 |
|  106 | SAHIL    | SALES      | 130000 | 3500 |     10 |
|  107 | SHALAKA  | QUALITY    |  64000 | 3500 |     10 |
|  108 | MOHSIN   | OPERATIONS |  55000 | 2500 |     10 |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |
|  110 | YOGESH   | SALES      |  90000 | 3500 |     30 |
|  111 | SMRUTI   | QUALITY    |  55000 | 2500 |     30 |
|  112 | PAYAL    | OPERATIONS |  72000 | 1500 |     30 |
|  113 | SWAPNIL  | MANAGER    |  97000 | 3200 |     40 |
|  114 | SHIRIN   | SALES      |  50000 | 1500 |     40 |
|  115 | SOHAIL   | QUALITY    |  50000 | 2540 |     40 |
|  116 | SURAJ    | OPERATIONS |  83000 | 2700 |     40 |
|  117 | GILL     | SALES      |  34000 | NULL |     50 |
|  118 | SAURABH  | OPERATIONS |  41200 |    0 |     50 |
|  119 | ASHISH   | MANAGER    |  53470 | 3700 |     60 |
select count(ID), DEPTNO from ED_RECORD group by DEPTNO;
| count(ID) | DEPTNO |
+-----------+--------+
|         4 |     20 |
|         4 |     10 |
|         5 |     30 |
|         4 |     40 |
|         2 |     50 |
|         1 |     60 |
 select max(SALARY), DEPTNO from ED_RECORD group by DEPTNO;
 | max(SALARY) | DEPTNO |
+-------------+--------+
|      100000 |     20 |
|      150000 |     10 |
|      155000 |     30 |
|       97000 |     40 |
|       41200 |     50 |
|       53470 |     60 |
select min(COMM), DEPTNO from ED_RECORD group by DEPTNO;
| min(COMM) | DEPTNO |
+-----------+--------+
|      3000 |     20 |
|      2500 |     10 |
|      1500 |     30 |
|      1500 |     40 |
|         0 |     50 |
|      3700 |     60 |
select * from ED_RECORD;
| ID   | NAME     | JOB        | SALARY | COMM | DEPTNO |
+------+----------+------------+--------+------+--------+
|  101 | SURESH   | MANAGER    | 100000 | 5000 |     20 |
|  102 | ROHIT    | SALES      | 100000 | 5000 |     20 |
|  103 | SUNITA   | QUALITY    |  70000 | 3000 |     20 |
|  104 | GAURI    | OPERATIONS |  80000 | 3500 |     20 |
|  105 | SHRUTIKA | MANAGER    | 150000 | 4500 |     10 |
|  106 | SAHIL    | SALES      | 130000 | 3500 |     10 |
|  107 | SHALAKA  | QUALITY    |  64000 | 3500 |     10 |
|  108 | MOHSIN   | OPERATIONS |  55000 | 2500 |     10 |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |
|  110 | YOGESH   | SALES      |  90000 | 3500 |     30 |
|  111 | SMRUTI   | QUALITY    |  55000 | 2500 |     30 |
|  112 | PAYAL    | OPERATIONS |  72000 | 1500 |     30 |
|  113 | SWAPNIL  | MANAGER    |  97000 | 3200 |     40 |
|  114 | SHIRIN   | SALES      |  50000 | 1500 |     40 |
|  115 | SOHAIL   | QUALITY    |  50000 | 2540 |     40 |
|  116 | SURAJ    | OPERATIONS |  83000 | 2700 |     40 |
|  117 | GILL     | SALES      |  34000 | NULL |     50 |
|  118 | SAURABH  | OPERATIONS |  41200 |    0 |     50 |
|  119 | ASHISH   | MANAGER    |  53470 | 3700 |     60 |
select count(JOB), DEPTNO from ED_RECORD group by DEPTNO;
| count(JOB) | DEPTNO |
+------------+--------+
|          4 |     20 |
|          4 |     10 |
|          5 |     30 |
|          4 |     40 |
|          2 |     50 |
|          1 |     60 |
select count(SALARY), DEPTNO from ED_RECORD group by DEPTNO;
| count(SALARY) | DEPTNO |
+---------------+--------+
|             4 |     20 |
|             4 |     10 |
|             5 |     30 |
|             4 |     40 |
|             2 |     50 |
|             1 |     60 |
select count(DEPTNO), JOB from ED_RECORD group by JOB;
| count(DEPTNO) | JOB        |
+---------------+------------+
|             6 | MANAGER    |
|             5 | SALES      |
|             4 | QUALITY    |
|             5 | OPERATIONS |

```

```sql
-- 27|11|24 - FG
-- DDL
-- create database
create database sqlsession;

-- use database
use sqlsession;

-- create table student
create table student(
id int primary key,
name varchar(20) not null,
location varchar(20) default 'pune',
age int check(age>=18),
contact bigint,
dob date
);

-- show database
show databases;

-- show tables
show tables;

-- desc table
desc student;

-- describe table
describe result;

-- create table result
create table result(
rid int,
rmarks int,
ispass char,
id int,
constraint student_fk foreign key(id) references student(id)
);

-- alter  
-- add col
alter table result add rname varchar(20); 
alter table result add rname int;

-- drop col
alter table result drop column rname;

-- modify datatype
alter table result modify rname varchar(20);

-- add constraint
alter table result add constraint primary key(id);
use mydb;
insert into student(name, age, marks) values("Pratik", 23, 95.5);
select * from student;  
DELETE FROM student
WHERE id = 2;

CREATE TABLE department (
    department_id DECIMAL(10, 0) PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

drop table department;

CREATE TABLE employee (
    emp_id DECIMAL(10, 0) PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    phone_no VARCHAR(42),
    hire_date DATE NOT NULL,
    job_id VARCHAR(20),
    salary DECIMAL(10, 0),
    comm DECIMAL(10, 0),
    manager_id DECIMAL(10, 0),
    department_id DECIMAL(10, 0),
    CONSTRAINT emp_manager_fk FOREIGN KEY (manager_id) REFERENCES employee(emp_id),
    CONSTRAINT department_fk FOREIGN KEY (department_id) REFERENCES department(department_id)
);

desc employee;

use mydb;
select * from student;

create database lenden;

use lenden;

create table if not exists accounts(
id int,
account_no int auto_increment primary key,
name varchar(255) not null,
balance double default 1000.0
);

insert into accounts(id, account_no, name) values(1, 101, "Ankit");
insert into accounts(id, account_no, name) values(2, 102, "Trisha");

select * from accounts;
truncate table accounts;

drop table accounts;

-- alter table accounts add constraint primary key(account_no);

use sqlsession;
create database student;
drop database student;

create database employee;

use employee;
create table products(id int, name varchar(50));
show create table products;
  
-- drop primary key
alter table products drop primary key;

-- drop constraint
alter table products drop constraint product_fk1;

-- describe✅
desc product;

-- rename✅
rename table products to product;

-- rename column✅
alter table products rename column pame to product_name;

-- DML
use sqlsession;
show tables;
insert into student(id, name, location, age, contact, dob) values(1, "Pratik", "Pune", 22, 1234567890, '12-01-01');
insert into student(id, name, location, age, contact, dob) values(2, "Rohan", "Pune", 22, 1234567890, '12-01-01');
insert into student(id, name, age, contact, dob) values(3, "Rohan", 22, 1234567890, '12-01-01');
rename table student to students;
alter table students rename column location to loc;

-- insert into __ values
insert into students
(id, name, loc, age, contact, dob)
values
(4, "neha", "khed", 22, 1234567890, '12-12-12'),
(5, "reva", "khed", 22, 1234567890, '12-12-12');

insert into students
(id, name, loc, age, contact, dob)
values
(6, "sham", "khed", 22, 1234567890, '12-12-12'),
(7, "ram", "khed", 22, 1234567890, '12-12-12'),
(8, "raju", "khed", 22, 1234567890, '12-12-12'),
(9, "bhim", "khed", 22, 1234567890, '12-12-12');

insert into students
(id, name, loc, age, contact, dob)
values
(10, "khushi", "khed", 22, 1234567890, '12-12-12'),
(11, "vicky", "khed", 22, 1234567890, '12-12-12'),
(12, "pritty", "khed", 22, 1234567890, '12-12-12'),
(13, "sweety", "khed", 22, 1234567890, '12-12-12');

insert into students
(id, name, loc, age, contact, dob)
values
(14, "payal", "khed", 22, 1234567890, '12-12-12'),
(15, "bhsma", "khed", 22, 1234567890, '12-12-12'),
(16, "sahil", "khed", 22, 1234567890, '12-12-12'),
(17, "samarth", "khed", 22, 1234567890, '12-12-12'),
(18, "pallavi", "khed", 22, 1234567890, '12-12-12'),
(19, "pragati", "khed", 22, 1234567890, '12-12-12'),
(20, "sahil", "khed", 22, 1234567890, '12-12-12');

-- auto_increment

-- update
update students set name="krishna" where id=20;
update students set name="krishna", loc="mumbai" where id=20;


insert into students
(id, name, loc, age, contact, dob)
values
(21, "trisha", "khed", 22, 1234567890, '12-12-12');

-- delete from
delete from students where id=21;

-- truncate
truncate table student;

select * from students;

desc students;

-- DQL

use sqlsession;

-- Insert 20 rows into the employee table
INSERT INTO employee 
(emp_id, first_name, last_name, email, phone_no, hire_date, job_id, salary, comm, manager_id, department_id)
VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '1234567890', '2020-01-15', 'DEV001', 50000, NULL, NULL, 10),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '1234567891', '2020-02-20', 'DEV002', 60000, 5000, 1, 20),
(3, 'Michael', 'Brown', 'michael.brown@example.com', '1234567892', '2020-03-10', 'DEV003', 55000, 2000, 1, 30),
(4, 'Emily', 'Davis', 'emily.davis@example.com', '1234567893', '2020-04-25', 'DEV004', 62000, NULL, 2, 20),
(5, 'James', 'Wilson', 'james.wilson@example.com', '1234567894', '2020-05-30', 'DEV005', 48000, 1500, 2, 10),
(6, 'Linda', 'Taylor', 'linda.taylor@example.com', '1234567895', '2020-06-15', 'DEV006', 75000, 3000, 3, 30),
(7, 'Robert', 'Miller', 'robert.miller@example.com', '1234567896', '2020-07-10', 'DEV007', 68000, NULL, 3, 10),
(8, 'Susan', 'Moore', 'susan.moore@example.com', '1234567897', '2020-08-05', 'DEV008', 54000, 1200, 4, 20),
(9, 'Karen', 'Jackson', 'karen.jackson@example.com', '1234567898', '2020-09-20', 'DEV009', 63000, NULL, 5, 30),
(10, 'Mark', 'Anderson', 'mark.anderson@example.com', '1234567899', '2020-10-01', 'DEV010', 47000, 1800, 5, 20),
(11, 'Sarah', 'Thomas', 'sarah.thomas@example.com', '1234567800', '2020-11-12', 'DEV011', 51000, 1000, 6, 10),
(12, 'Chris', 'Martin', 'chris.martin@example.com', '1234567801', '2021-01-15', 'DEV012', 58000, 2500, 6, 20),
(13, 'Patricia', 'Harris', 'patricia.harris@example.com', '1234567802', '2021-02-20', 'DEV013', 49000, 900, 7, 30),
(14, 'Daniel', 'Clark', 'daniel.clark@example.com', '1234567803', '2021-03-10', 'DEV014', 67000, 4000, 8, 10),
(15, 'Barbara', 'Lewis', 'barbara.lewis@example.com', '1234567804', '2021-04-25', 'DEV015', 72000, NULL, 8, 20),
(16, 'Steven', 'Walker', 'steven.walker@example.com', '1234567805', '2021-05-30', 'DEV016', 46000, 300, 9, 30),
(17, 'Jessica', 'Allen', 'jessica.allen@example.com', '1234567806', '2021-06-15', 'DEV017', 61000, NULL, 10, 20),
(18, 'Andrew', 'Young', 'andrew.young@example.com', '1234567807', '2021-07-10', 'DEV018', 49000, 800, 10, 10),
(19, 'Nancy', 'King', 'nancy.king@example.com', '1234567808', '2021-08-05', 'DEV019', 56000, NULL, 11, 30),
(20, 'Joshua', 'Wright', 'joshua.wright@example.com', '1234567809', '2021-09-20', 'DEV020', 53000, 1700, 11, 20);

INSERT INTO department (department_id, department_name)
VALUES
(10, 'HR'),
(20, 'Finance'),
(30, 'IT');

SELECT * FROM department;
SELECT * FROM employee;

create table autoincrementdemo(id int primary key auto_increment, name varchar(50));
insert into autoincrementdemo (name) values 
("Pratik"),
("Ramesh"),
("Archana"),
("Nidhi");
select * from autoincrementdemo;
```

```sql
-- 28|11|24 SMIT
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
-- 28|11|24 APC
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

```
