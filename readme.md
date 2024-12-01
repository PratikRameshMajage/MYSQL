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
select name from ED_RECORD where name like "_H%";
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
```sql
-- 28|11|24 FG
create database test;
drop database test;
use test;

use sqlsession;
select * from students;
select * from result;
insert into result values(101, 80, "p", 1);
delete from result where id=101;

desc students;
desc result;

-- 28|11|24
-- cascading: give delete permissioons on table on parent child relationship
-- on cascade delete
-- on cascade set null
drop table test1;
drop table test2;

create table test2(
id int,
name varchar(20),
constraint fk1 foreign key (id) references test1(id)
-- on delete cascade
on delete set null
);

create table test1(
id int primary key,
name varchar(20)
);

insert into test2 values(1,"p");
insert into test2 values(2,"ramesh");
insert into test2 values(3,"archana");
insert into test2 values(4,"pragati");

delete from test1 where id=1;

select * from test1;
select * from test2;

desc test1;
desc test2;

-- projection select all data
-- selection use where clause
-- distict unique values

select distict name from data1;
select distict name, branch from data;

-- alias: as
select 10+5 as addition;
select first_name as fn from data1;
select first_name fn from data1;

-- order by: asc desc
select * from employees order by salary desc;
-- limit
select * from data1 limit 3;
-- offset: skip starting values
select * from employee limit 10 offset 5;
select * from data1 limit 5,10;
-- highest sallary top3 values
select salary from employee order by salary desc limit 5;
-- 2nd highest vallue
select salary from employee order by salary desc limit 1,1;
select salary from employee order by salary desc limit 2,1;
select salary from employee order by salary desc limit 4,1;

```

```sql SMIT
-- 28|11|24
use mysql;
create table dept(deptno int, dname varchar(20), loc varchar(20));
insert into dept(deptno, dname, loc) values(10, "mechanical", "mumbai");
insert into dept(deptno, dname, loc) values(20, "computer", "pune");
insert into dept(deptno, dname, loc) values(20, "computer", "pune");
insert into dept(deptno, dname, loc) values(30, "civil", "banglore");
insert into dept(deptno, dname, loc) values(40, "entc", "chennai");
insert into dept(deptno, dname, loc) values(60, "electric", "tamil_nadu");
insert into dept(deptno, dname, loc) values(70, "chemical", "panjabi");
insert into dept(deptno, dname, loc) values(80, "education", "karnataka");
insert into dept(deptno, dname, loc) values(90, "art", "rajasthan");
select * from dept;
+--------+------------+------------+
| deptno | dname      | loc        |
+--------+------------+------------+
|     10 | mechanical | mumbai     |
|     10 | mechanical | mumbai     |
|     20 | computer   | pune       |
|     20 | computer   | pune       |
|     30 | civil      | banglore   |
|     40 | entc       | chennai    |
|     50 | it         | mp         |
|     60 | electric   | tamil_nadu |
|     70 | chemical   | panjabi    |
|     80 | education  | karnataka  |
|     90 | art        | rajasthan  |
+--------+------------+------------+



```sql
select * from ed_record where salary = (select max(salary) from ed_record where deptno in (select deptno from dept wher dname="computer");
select name from ed_record where deptno in (select deptno from dept where dname in (select deptno from ed_record where name ="shalaka")));
```

```sql
28|11|24
use mysql;
create table dept(deptno int, dname varchar(20), loc varchar(20));
insert into dept(deptno, dname, loc) values(10, "mechanical", "mumbai");
insert into dept(deptno, dname, loc) values(10, "mechanical", "mumbai");
insert into dept(deptno, dname, loc) values(20, "computer", "pune");
insert into dept(deptno, dname, loc) values(50, "it", "mp");
insert into dept(deptno, dname, loc) values(60, "electric", "tamil_nadu");
insert into dept(deptno, dname, loc) values(70, "chemical", "panjabi");
insert into dept(deptno, dname, loc) values(80, "education", "karnataka");
insert into dept(deptno, dname, loc) values(90, "art", "rajasthan");
select * from dept;
+--------+------------+------------+
| deptno | dname      | loc        |
+--------+------------+------------+
|     10 | mechanical | mumbai     |
|     10 | mechanical | mumbai     |
|     20 | computer   | pune       |
|     20 | computer   | pune       |
|     30 | civil      | banglore   |
|     40 | entc       | chennai    |
|     50 | it         | mp         |
|     60 | electric   | tamil_nadu |
|     70 | chemical   | panjabi    |
|     80 | education  | karnataka  |
|     90 | art        | rajasthan  |
+--------+------------+------------+
select * from ed_record;
select name from ed_record where deptno in (select deptno from dept where dname like "%c");
select deptno from ed_record where name = "swapnil";
select deptno from ed_record where name = "shirin";
select * from dept;
select name from ed_record where deptno in (select deptno from dept where dname like "C%");
select deptno from ed_record where name = "suresh";
select name from ed_record where deptno in (select deptno from dept where dname like "%l");
select name from ed_record where deptno in (select deptno from dept where dname like "l%");
select * from dept;
select * from ed_record;
select max(salary) from ed_record;
select min(comm) from ed_record;
select deptno from ed_record where comm=0;
select dname from dept where deptno in (select deptno from ed_record where comm=(select min(comm) from ed_record));
select dname from dept where deptno in (select deptno from ed_record where salary=(select min(salary) from ed_record));
select select * from dept;
select name from ed_record where deptno in (select deptno from dept where dname = "mechanical");
select name from ed_record where name = "gill";
select * from ed_record where deptno in (select deptno from dept where loc in (select loc from dept where deptno in (select deptno from ed_record where name="gill")));
```
# Assignment_1:
```sql FG
-- 29|11|24
-- DDL Operations:
-- Q.1. Create the above tables with appropriate data types and constraints (primary keys, foreign keys, not null, etc.).
-- Drop database and tables:
drop database library_management;
drop table Books;
drop table Members;
drop table Borrowed_Books;

-- Create database:
create database library_management;

-- Use database:
use library_management;

-- Create table:
-- Books:
create table Books(
book_id int primary key,
title varchar(20),
author varchar(20),
publication_year date,
genre varchar(20),
available_copies int
);

-- Members:
create table Members(
member_id int primary key auto_increment,
name varchar(20),
address varchar(100),
phone_number bigint,
membership_start_date date,
membership_end_date date
);

-- Borrowed_Books:
create table Borrowed_Books(
borrow_id int primary key,
book_id int,
constraint book_id_fk foreign key (book_id) references Books(book_id),
member_id int,
constraint member_id_fk foreign key (member_id) references Members(member_id),
borrow_date date,
due_date date,
return_date date 
);

-- Describe table:
desc Books;
desc Members;
desc Borrowed_Books;

-- Q.2. Alter the Books table to add a new column publisher.
-- Reference: alter table result add rname int;
alter table Books add publisher varchar(20);

-- Q.3. Drop the Borrowed_Books table.
drop table Borrowed_Books;

-- DML Operations:
-- Q.1. Insert 5 records into the Books table.
insert into Books
(book_id, title, author, publication_year, genre, available_copies)
values
(101, "Kill a Mockingbird", "Harper Lee", '1960-12-12',"Fiction",5),
(102,"1984","George Orwell", '1949-12-12',"Dystopian",3),
(103,"The Great Gatsby", "F. Scott Fitzgerald",'1925-12-12',"Fiction",4),
(104,"PridePrejudice","Jane Austen",'1813-12-12',"Romance",7),
(105,"Catcher the Rye","J.D. Salinger",'1951-12-12',"Fiction",2);

-- Q.2. Insert 3 records into the Members table.
insert into Members
(member_id, name, address, phone_number, membership_start_date, membership_end_date)
values	
(201, "John Doe", "123 Main St, Springfield", 555-123-4567, '2023-01-01', '2024-01-01'),
(202, "Jane Smith", "456 Oak St, Metropolis", 555-987-6543, '2023-03-15', '2024-03-15'),
(203, "Alice Johnson", "789 Pine St, Gotham City", 555-456-7890, '2022-11-10', '2023-11-10');

-- Q.3. Insert 4 records into the Borrowed_Books table.
-- Create Borrowed_Books table:
create table Borrowed_Books(
borrow_id int primary key,
book_id int,
constraint book_id_fk foreign key (book_id) references Books(book_id),
member_id int,
constraint member_id_fk foreign key (member_id) references Members(member_id),
borrow_date date,
due_date date,
return_date date 
);

-- Insert values in Borrowed_Books table:
insert into Borrowed_Books
(borrow_id, book_id, member_id, borrow_date, due_date, return_date)
values
(301, 101, 201, '2024-11-01', '2024-11-15', '2024-11-14'),
(302, 102, 202, '2024-11-02', '2024-11-16', '2024-11-20'),
(303, 103, 203, '2024-11-03', '2024-11-17', '2024-11-17'),
(304, 104, 201, '2024-11-04', '2024-11-18', '2024-11-18');

-- Errors:
-- Error Code: 1292. Incorrect date value: 'NULL' for column 'return_date' at row 3: colno-3 error: ✅
-- Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`library_management`.`borrowed_books`, CONSTRAINT `member_id_fk` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`)): colno-4 error: ✅

-- Q.4. Update the publication_year of a specific book.
-- update students set name="krishna" where id=20;
update Books set publication_year = '1970-12-12' where book_id = 101;


-- Q.5. Delete a member from the Members table.
delete from Members where member_id = 201;
-- Error Code: 1451. Cannot delete or update a parent row: a foreign key constraint fails (`library_management`.`borrowed_books`, CONSTRAINT `member_id_fk` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`)) ❌->

-- To fix this:
-- step 1: drop table
drop table Borrowed_Books;

-- step 2: crete with on delete cascade
create table Borrowed_Books(
borrow_id int primary key,
book_id int,
constraint book_id_fk foreign key (book_id) references Books(book_id),
member_id int,
constraint member_id_fk foreign key (member_id) references Members(member_id) on delete cascade,
borrow_date date,
due_date date,
return_date date
);

-- step 3: insert values in Borrowed_Books table:
insert into Borrowed_Books
(borrow_id, book_id, member_id, borrow_date, due_date, return_date)
values
(301, 101, 201, '2024-11-01', '2024-11-15', '2024-11-14'),
(302, 102, 202, '2024-11-02', '2024-11-16', '2024-11-20'),
(303, 103, 203, '2024-11-03', '2024-11-17', '2024-11-17'),
(304, 104, 201, '2024-11-04', '2024-11-18', '2024-11-18');

-- step 4: delete Members
delete from Members where member_id = 201;

-- Cascading Constraints:
-- Q.1. Implement a cascading delete constraint on the Borrowed_Books table so that when a book is deleted, all related borrow records are also deleted automatically.

-- step 1: drop table
drop table Borrowed_Books;

-- step 2: crete with on delete cascade
create table Borrowed_Books(
borrow_id int primary key,
book_id int,
constraint book_id_fk foreign key (book_id) references Books(book_id) on delete cascade,
member_id int,
constraint member_id_fk foreign key (member_id) references Members(member_id),
borrow_date date,
due_date date,
return_date date
);

-- Q.3. Demonstrate the effect of this constraint by deleting a book.
-- step 1: insert values in Borrowed_Books table:
insert into Borrowed_Books
(borrow_id, book_id, member_id, borrow_date, due_date, return_date)
values
(301, 101, 201, '2024-11-01', '2024-11-15', '2024-11-14'),
(302, 102, 202, '2024-11-02', '2024-11-16', '2024-11-20'),
(303, 103, 203, '2024-11-03', '2024-11-17', '2024-11-17'),
(304, 104, 201, '2024-11-04', '2024-11-18', '2024-11-18');

-- step 2: delete book
delete from Books where book_id = 101;

-- step 3: additonal work to cross check:
insert into Books
(book_id, title, author, publication_year, genre, available_copies)
values
(101, "Kill a Mockingbird", "Harper Lee", '1960-12-12',"Fiction",5);

-- Retrive data:
select * from Books;
select * from Members;
select * from Borrowed_Books;

-- Final Output:
show databases;
+--------------------+
| Database           |
+--------------------+
| employee           |
| information_schema |
| lenden             |
| library_management |
| mydb               |
| mysql              |
| performance_schema |
| sakila             |
| sqlsession         |
| sys                |
| world              |
+--------------------+
use library_management;
show tables;
+------------------------------+
| Tables_in_library_management |
+------------------------------+
| books                        |
| borrowed_books               |
| members                      |
+------------------------------+
select * from books;
+---------+------------------+---------------------+------------------+-----------+------------------+-----------+
| book_id | title            | author              | publication_year | genre     | available_copies | publisher |
+---------+------------------+---------------------+------------------+-----------+------------------+-----------+
|     102 | 1984             | George Orwell       | 1949-12-12       | Dystopian |                3 | NULL      |
|     103 | The Great Gatsby | F. Scott Fitzgerald | 1925-12-12       | Fiction   |                4 | NULL      |
|     104 | PridePrejudice   | Jane Austen         | 1813-12-12       | Romance   |                7 | NULL      |
|     105 | Catcher the Rye  | J.D. Salinger       | 1951-12-12       | Fiction   |                2 | NULL      |
+---------+------------------+---------------------+------------------+-----------+------------------+-----------+
select * from members;
+-----------+---------------+--------------------------+--------------+-----------------------+---------------------+
| member_id | name          | address                  | phone_number | membership_start_date | membership_end_date |
+-----------+---------------+--------------------------+--------------+-----------------------+---------------------+
|       201 | John Doe      | 123 Main St, Springfield |        -4135 | 2023-01-01            | 2024-01-01          |
|       202 | Jane Smith    | 456 Oak St, Metropolis   |        -6975 | 2023-03-15            | 2024-03-15          |
|       203 | Alice Johnson | 789 Pine St, Gotham City |        -7791 | 2022-11-10            | 2023-11-10          |
+-----------+---------------+--------------------------+--------------+-----------------------+---------------------+
select * from borrowed_books;
+-----------+---------+-----------+-------------+------------+-------------+
| borrow_id | book_id | member_id | borrow_date | due_date   | return_date |
+-----------+---------+-----------+-------------+------------+-------------+
|       302 |     102 |       202 | 2024-11-02  | 2024-11-16 | 2024-11-20  |
|       303 |     103 |       203 | 2024-11-03  | 2024-11-17 | 2024-11-17  |
|       304 |     104 |       201 | 2024-11-04  | 2024-11-18 | 2024-11-18  |
+-----------+---------+-----------+-------------+------------+-------------+
```

```sql
-- 29|11|24
show databases; 
+--------------------+
| Database           |
+--------------------+
| employee           |
| information_schema |
| lenden             |
| library_management |
| mydb               |
| mysql              |
| performance_schema |
| sakila             |
| sqlsession         |
| sys                |
| world              |
+--------------------+
use mysql;
show tables;
+------------------------------------------------------+
| Tables_in_mysql                                      |
+------------------------------------------------------+
| columns_priv                                         |
| component                                            |
| data3                                                |
| db                                                   |
| default_roles                                        |
| dept                                                 |
| ed_record                                            |
| engine_cost                                          |
| func                                                 |
| general_log                                          |
| global_grants                                        |
| gtid_executed                                        |
| help_category                                        |
| help_keyword                                         |
| help_relation                                        |
| help_topic                                           |
| innodb_index_stats                                   |
| innodb_table_stats                                   |
| ndb_binlog_index                                     |
| password_history                                     |
| plugin                                               |
| procs_priv                                           |
| proxies_priv                                         |
| replication_asynchronous_connection_failover         |
| replication_asynchronous_connection_failover_managed |
| replication_group_configuration_version              |
| replication_group_member_actions                     |
| role_edges                                           |
| server_cost                                          |
| servers                                              |
| slave_master_info                                    |
| slave_relay_log_info                                 |
| slave_worker_info                                    |
| slow_log                                             |
| tables_priv                                          |
| time_zone                                            |
| time_zone_leap_second                                |
| time_zone_name                                       |
| time_zone_transition                                 |
| time_zone_transition_type                            |
| user                                                 |
+------------------------------------------------------+
select * from ed_record;
+------+----------+------------+--------+------+--------+
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
+------+----------+------------+--------+------+--------+
select * from dept;
+--------+------------+------------+
| deptno | dname      | loc        |
+--------+------------+------------+
|     10 | mechanical | mumbai     |
|     10 | mechanical | mumbai     |
|     20 | computer   | pune       |
|     20 | computer   | pune       |
|     30 | civil      | banglore   |
|     40 | entc       | chennai    |
|     50 | it         | mp         |
|     60 | electric   | tamil_nadu |
|     70 | chemical   | panjabi    |
|     80 | education  | karnataka  |
|     90 | art        | rajasthan  |
+--------+------------+------------+
select * from ed_record where deptno = "10";
+------+----------+------------+--------+------+--------+
| ID   | NAME     | JOB        | SALARY | COMM | DEPTNO |
+------+----------+------------+--------+------+--------+
|  105 | SHRUTIKA | MANAGER    | 150000 | 4500 |     10 |
|  106 | SAHIL    | SALES      | 130000 | 3500 |     10 |
|  107 | SHALAKA  | QUALITY    |  64000 | 3500 |     10 |
|  108 | MOHSIN   | OPERATIONS |  55000 | 2500 |     10 |
+------+----------+------------+--------+------+--------+
select deptno from ed_record where name = "shrutika";
+--------+
| deptno |
+--------+
|     10 |
+--------+
select loc from dept where deptno in(select deptno from ed_record where name = "shrutika");
+--------+
| loc    |
+--------+
| mumbai |
| mumbai |
+--------+
select loc from dept where deptno in(select deptno from ed_record where name = "shrutika");
+--------+
| loc    |
+--------+
| mumbai |
| mumbai |
+--------+
select deptno from dept where loc in(select loc from dept where deptno in(select deptno from ed_record where name = "shrutika"));
+--------+
| deptno |
+--------+
|     10 |
|     10 |
+--------+
select * from ed_record where deptno in (select deptno from dept where loc in(select loc from dept where deptno in(select deptno from ed_record where name = "shrutika")));
+------+----------+------------+--------+------+--------+
| ID   | NAME     | JOB        | SALARY | COMM | DEPTNO |
+------+----------+------------+--------+------+--------+
|  105 | SHRUTIKA | MANAGER    | 150000 | 4500 |     10 |
|  106 | SAHIL    | SALES      | 130000 | 3500 |     10 |
|  107 | SHALAKA  | QUALITY    |  64000 | 3500 |     10 |
|  108 | MOHSIN   | OPERATIONS |  55000 | 2500 |     10 |
+------+----------+------------+--------+------+--------+
select * from ed_record where deptno in (select deptno from dept where loc in(select loc from dept where deptno in(select deptno from ed_record where name = "shrutika")));
+------+----------+------------+--------+------+--------+
| ID   | NAME     | JOB        | SALARY | COMM | DEPTNO |
+------+----------+------------+--------+------+--------+
|  105 | SHRUTIKA | MANAGER    | 150000 | 4500 |     10 |
|  106 | SAHIL    | SALES      | 130000 | 3500 |     10 |
|  107 | SHALAKA  | QUALITY    |  64000 | 3500 |     10 |
|  108 | MOHSIN   | OPERATIONS |  55000 | 2500 |     10 |
+------+----------+------------+--------+------+--------+
select * from ed_record where name = "smruti";
+------+--------+---------+--------+------+--------+
| ID   | NAME   | JOB     | SALARY | COMM | DEPTNO |
+------+--------+---------+--------+------+--------+
|  111 | SMRUTI | QUALITY |  55000 | 2500 |     30 |
+------+--------+---------+--------+------+--------+
select * from ed_record where job != (select job from ed_record where name = "smruti") and salary > (select salary from ed_record where name = "rohit");
+------+----------+---------+--------+------+--------+
| ID   | NAME     | JOB     | SALARY | COMM | DEPTNO |
+------+----------+---------+--------+------+--------+
|  105 | SHRUTIKA | MANAGER | 150000 | 4500 |     10 |
|  106 | SAHIL    | SALES   | 130000 | 3500 |     10 |
|  109 | JEET     | MANAGER | 155000 | 4500 |     30 |
|  109 | JEET     | MANAGER | 155000 | 4500 |     30 |
+------+----------+---------+--------+------+--------+
(select salary from ed_record where name = "saurabh");
+--------+
| salary |
+--------+
|  41200 |
+--------+
select * from ed_record where name = "gauri";
+------+-------+------------+--------+------+--------+
| ID   | NAME  | JOB        | SALARY | COMM | DEPTNO |
+------+-------+------------+--------+------+--------+
|  104 | GAURI | OPERATIONS |  80000 | 3500 |     20 |
+------+-------+------------+--------+------+--------+
select deptno from ed_record where deptno in (select deptno from ed_record where name = "gauri");
+--------+
| deptno |
+--------+
|     20 |
|     20 |
|     20 |
|     20 |
+--------+
select * from dept where dname = "computer";
+--------+----------+------+
| deptno | dname    | loc  |
+--------+----------+------+
|     20 | computer | pune |
|     20 | computer | pune |
+--------+----------+------+
select * from dept where dname = "mechanical";
+--------+------------+--------+
| deptno | dname      | loc    |
+--------+------------+--------+
|     10 | mechanical | mumbai |
|     10 | mechanical | mumbai |
+--------+------------+--------+
select * from ed_record where deptno in (select deptno from dept where dname in ("computer", "mechanical"));
+------+----------+------------+--------+------+--------+
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
+------+----------+------------+--------+------+--------+
select * from ed_record where name = "jeet";
+------+------+---------+--------+------+--------+
| ID   | NAME | JOB     | SALARY | COMM | DEPTNO |
+------+------+---------+--------+------+--------+
|  109 | JEET | MANAGER | 155000 | 4500 |     30 |
|  109 | JEET | MANAGER | 155000 | 4500 |     30 |
+------+------+---------+--------+------+--------+
select * from ed_record where deptno in (select deptno from ed_record where name = "jeet");
+------+--------+------------+--------+------+--------+
| ID   | NAME   | JOB        | SALARY | COMM | DEPTNO |
+------+--------+------------+--------+------+--------+
|  109 | JEET   | MANAGER    | 155000 | 4500 |     30 |
|  109 | JEET   | MANAGER    | 155000 | 4500 |     30 |
|  110 | YOGESH | SALES      |  90000 | 3500 |     30 |
|  111 | SMRUTI | QUALITY    |  55000 | 2500 |     30 |
|  112 | PAYAL  | OPERATIONS |  72000 | 1500 |     30 |
+------+--------+------------+--------+------+--------+
select * from ed_record where deptno in (select deptno from dept where dname in ("computer", "mechanical"));
+------+----------+------------+--------+------+--------+
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
+------+----------+------------+--------+------+--------+
select * from ed_record where deptno in (select deptno from ed_record where name = "jeet");
+------+--------+------------+--------+------+--------+
| ID   | NAME   | JOB        | SALARY | COMM | DEPTNO |
+------+--------+------------+--------+------+--------+
|  109 | JEET   | MANAGER    | 155000 | 4500 |     30 |
|  109 | JEET   | MANAGER    | 155000 | 4500 |     30 |
|  110 | YOGESH | SALES      |  90000 | 3500 |     30 |
|  111 | SMRUTI | QUALITY    |  55000 | 2500 |     30 |
|  112 | PAYAL  | OPERATIONS |  72000 | 1500 |     30 |
+------+--------+------------+--------+------+--------+
select deptno from dept where dname = "entc";
+--------+
| deptno |
+--------+
|     40 |
+--------+
select deptno from dept where deptno in (select deptno from dept where dname = "entc");
+--------+
| deptno |
+--------+
|     40 |
+--------+
select max(salary) deptno from ed_record where deptno in (select deptno from dept where deptno in (select deptno from dept where dname = "entc"));
+--------+
| deptno |
+--------+
|  97000 |
+--------+
select max(salary) from ed_record where deptno in (select deptno from dept where dname = "entc");
+-------------+
| max(salary) |
+-------------+
|       97000 |
+-------------+
select min(salary) from ed_record where deptno in (select deptno from dept where dname = "entc");
+-------------+
| min(salary) |
+-------------+
|       50000 |
+-------------+
select min(salary) from ed_record where deptno in (select deptno from dept where dname = "entc");
+-------------+
| min(salary) |
+-------------+
|       50000 |
+-------------+
select * from  ed_record where salary in (select min(salary) from ed_record where deptno in (select deptno from dept where dname = "entc"));
+------+--------+---------+--------+------+--------+
| ID   | NAME   | JOB     | SALARY | COMM | DEPTNO |
+------+--------+---------+--------+------+--------+
|  114 | SHIRIN | SALES   |  50000 | 1500 |     40 |
|  115 | SOHAIL | QUALITY |  50000 | 2540 |     40 |
+------+--------+---------+--------+------+--------+
```

```sql
-- 30|11|24
-- ED_RECORD QUESTIONS-ANSWERS:
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

select * from ed_record;
+------+----------+------------+--------+------+--------+
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
+------+----------+------------+--------+------+--------+
20 rows in set (0.02 sec)

-- Q1: DISPLAY ALL THE RECORDS OF THE TABLE?
select * from ed_record;
+------+----------+------------+--------+------+--------+
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
+------+----------+------------+--------+------+--------+
20 rows in set (0.02 sec)

-- Q2.DISPLAY NAMES OF EMPLOYEES WORKING IN THE COMPANY?
select name from ed_record;
+----------+
| name     |
+----------+
| SURESH   |
| ROHIT    |
| SUNITA   |
| GAURI    |
| SHRUTIKA |
| SAHIL    |
| SHALAKA  |
| MOHSIN   |
| JEET     |
| JEET     |
| YOGESH   |
| SMRUTI   |
| PAYAL    |
| SWAPNIL  |
| SHIRIN   |
| SOHAIL   |
| SURAJ    |
| GILL     |
| SAURABH  |
| ASHISH   |
+----------+
20 rows in set (0.02 sec)

select name from ed_record where salary > 0;
+----------+
| name     |
+----------+
| SURESH   |
| ROHIT    |
| SUNITA   |
| GAURI    |
| SHRUTIKA |
| SAHIL    |
| SHALAKA  |
| MOHSIN   |
| JEET     |
| JEET     |
| YOGESH   |
| SMRUTI   |
| PAYAL    |
| SWAPNIL  |
| SHIRIN   |
| SOHAIL   |
| SURAJ    |
| GILL     |
| SAURABH  |
| ASHISH   |
+----------+

-- Q3.DISPLAY NAME OF EMPLOYEES HAVING SALARY 34000?
select name from ed_record where salary = 34000;
+------+
| name |
+------+
| GILL |
+------+
1 row in set (0.00 sec)

-- Q4.DISPLAY NAME OF EMPLOYEES WHO ARE WORKING AS MANAGER?
select name from ed_record where job = "manager";
+----------+
| name     |
+----------+
| SURESH   |
| SHRUTIKA |
| JEET     |
| JEET     |
| SWAPNIL  |
| ASHISH   |
+----------+
6 rows in set (0.00 sec)

-- Q5.DISPLAY ALL THE JOBS IN THE TABLE?
select DISTINCT job from ed_record;
+------------+
| job        |
+------------+
| MANAGER    |
| SALES      |
| QUALITY    |
| OPERATIONS |
+------------+

select job from ed_record;
+------------+
| job        |
+------------+
| MANAGER    |
| SALES      |
| QUALITY    |
| OPERATIONS |
| MANAGER    |
| SALES      |
| QUALITY    |
| OPERATIONS |
| MANAGER    |
| MANAGER    |
| SALES      |
| QUALITY    |
| OPERATIONS |
| MANAGER    |
| SALES      |
| QUALITY    |
| OPERATIONS |
| SALES      |
| OPERATIONS |
| MANAGER    |
+------------+

-- Q6.DISPLAY ALL THE SALARIES IN THE TABLE?
select DISTINCT salary from ed_record;
+--------+
| salary |
+--------+
| 100000 |
|  70000 |
|  80000 |
| 150000 |
| 130000 |
|  64000 |
|  55000 |
| 155000 |
|  90000 |
|  72000 |
|  97000 |
|  50000 |
|  83000 |
|  34000 |
|  41200 |
|  53470 |
+--------+
16 rows in set (0.01 sec)

select salary from ed_record;
+--------+
| salary |
+--------+
| 100000 |
| 100000 |
|  70000 |
|  80000 |
| 150000 |
| 130000 |
|  64000 |
|  55000 |
| 155000 |
| 155000 |
|  90000 |
|  55000 |
|  72000 |
|  97000 |
|  50000 |
|  50000 |
|  83000 |
|  34000 |
|  41200 |
|  53470 |
+--------+
20 rows in set (0.00 sec)

-- Q7.DISPLAY ALL THE EMPLOYEES DETAILS WORKING IN DEPTNO 20?
select * from ed_record where deptno = 20;
+------+--------+------------+--------+------+--------+
| ID   | NAME   | JOB        | SALARY | COMM | DEPTNO |
+------+--------+------------+--------+------+--------+
|  101 | SURESH | MANAGER    | 100000 | 5000 |     20 |
|  102 | ROHIT  | SALES      | 100000 | 5000 |     20 |
|  103 | SUNITA | QUALITY    |  70000 | 3000 |     20 |
|  104 | GAURI  | OPERATIONS |  80000 | 3500 |     20 |
+------+--------+------------+--------+------+--------+
4 rows in set (0.00 sec)

-- Q8.DISPLAY DETAILS OF EMPLOYEE WITH ID=116?
select * from ed_record where id = 116;
+------+-------+------------+--------+------+--------+
| ID   | NAME  | JOB        | SALARY | COMM | DEPTNO |
+------+-------+------------+--------+------+--------+
|  116 | SURAJ | OPERATIONS |  83000 | 2700 |     40 |
+------+-------+------------+--------+------+--------+
1 row in set (0.00 sec)

-- Q9.DISPLAY NAME, SALARY AND JOB OF EMPLOYEE HAVING ID=109?
select name, salary, job from ed_record where id = 109;
+------+--------+---------+
| name | salary | job     |
+------+--------+---------+
| JEET | 155000 | MANAGER |
| JEET | 155000 | MANAGER |
+------+--------+---------+
2 rows in set (0.00 sec)

-- Q10.DISPLAY NAMES,JOB AND SALARY OF EMPLOYEES WHO ARE WORKING AS SALES?
select name, salary , job from ed_record where job = "sales";
+--------+--------+-------+
| name   | salary | job   |
+--------+--------+-------+
| ROHIT  | 100000 | SALES |
| SAHIL  | 130000 | SALES |
| YOGESH |  90000 | SALES |
| SHIRIN |  50000 | SALES |
| GILL   |  34000 | SALES |
+--------+--------+-------+
5 rows in set (0.00 sec)

-- Q11.DISPLAY ALL DETAILS OF EMPLOYEE WHO EARNS COMMISION 1500?
select * from ed_record where comm = 1500;
+------+--------+------------+--------+------+--------+
| ID   | NAME   | JOB        | SALARY | COMM | DEPTNO |
+------+--------+------------+--------+------+--------+
|  112 | PAYAL  | OPERATIONS |  72000 | 1500 |     30 |
|  114 | SHIRIN | SALES      |  50000 | 1500 |     40 |
+------+--------+------------+--------+------+--------+
2 rows in set (0.00 sec)

-- Q12.DISPLAY THE SALARY AND JOB OF SMRUTI?
select salary, job from ed_record where name = "smruti";
+--------+---------+
| salary | job     |
+--------+---------+
|  55000 | QUALITY |
+--------+---------+
1 row in set (0.00 sec)

-- Q13.DISPLAY THE MAXIMUM SALARY FROM THE TABLE?
select max(salary) from ed_record;
+-------------+
| max(salary) |
+-------------+
|      155000 |
+-------------+
1 row in set (0.02 sec)

-- Q14.DISPLAY THE MINIMUM SALARY FROM THE TABLE?
select min(salary) from ed_record;
+-------------+
| min(salary) |
+-------------+
|       34000 |
+-------------+
1 row in set (0.01 sec)

-- Q15.DISPLAY THE NAME OF THE EMPLOYEE WHO EARNS MAXIMUM SALARY?
select name from ed_record where salary = (select max(salary) from ed_record);
+------+
| name |
+------+
| JEET |
| JEET |
+------+
2 rows in set (0.02 sec)

select name from ed_record order by salary desc limit 1;
+------+
| name |
+------+
| JEET |
+------+
1 row in set (0.00 sec)

select * from ed_record order by salary desc limit 1;
+------+------+---------+--------+------+--------+
| ID   | NAME | JOB     | SALARY | COMM | DEPTNO |
+------+------+---------+--------+------+--------+
|  109 | JEET | MANAGER | 155000 | 4500 |     30 |
+------+------+---------+--------+------+--------+
1 row in set (0.00 sec)

-- Q16.DISPLAY THE NAME OF THE EMPLOYEE WHO EARNS MINIMUM SALARY?
select name from ed_record where salary = (select min(salary) from ed_record);
+------+
| name |
+------+
| GILL |
+------+
1 row in set (0.00 sec)

select name from ed_record order by salary limit 1;
+------+
| name |
+------+
| GILL |
+------+
1 row in set (0.00 sec)

select * from ed_record order by salary limit 1;
+------+------+-------+--------+------+--------+
| ID   | NAME | JOB   | SALARY | COMM | DEPTNO |
+------+------+-------+--------+------+--------+
|  117 | GILL | SALES |  34000 | NULL |     50 |
+------+------+-------+--------+------+--------+
1 row in set (0.01 sec)

-- Q17.DISPLAY THE AVERAGE SALARY OF ALL THE EMPLOYEES?
select avg(salary) from ed_record;
+-------------+
| avg(salary) |
+-------------+
|  84233.5000 |
+-------------+
1 row in set (0.01 sec)
select id, avg(salary) from ed_record where salary group by id;
+------+-------------+
| id   | avg(salary) |
+------+-------------+
|  101 | 100000.0000 |
|  102 | 100000.0000 |
|  103 |  70000.0000 |
|  104 |  80000.0000 |
|  105 | 150000.0000 |
|  106 | 130000.0000 |
|  107 |  64000.0000 |
|  108 |  55000.0000 |
|  109 | 155000.0000 |
|  110 |  90000.0000 |
|  111 |  55000.0000 |
|  112 |  72000.0000 |
|  113 |  97000.0000 |
|  114 |  50000.0000 |
|  115 |  50000.0000 |
|  116 |  83000.0000 |
|  117 |  34000.0000 |
|  118 |  41200.0000 |
|  119 |  53470.0000 |
+------+-------------+
19 rows in set (0.00 sec)

-- Q18.DISPPLAY THE TOTAL COSTING RQUIRED FOR THE COMPANY WITH REFERENCE TO SALARY?
select sum(salary) as TOTAL_COSTING_RQUIRED_FOR_THE_COMPANY from ed_record;
+---------------------------------------+
| TOTAL_COSTING_RQUIRED_FOR_THE_COMPANY |
+---------------------------------------+
|                               1684670 |
+---------------------------------------+
1 row in set (0.00 sec)

-- Q19.DISPLAY THE TOTAL NUMBER OF EMPLOYEES WORKING IN THE COMPANY?
select count(id) as TOTAL_EMP from ed_record;
+-----------+
| TOTAL_EMP |
+-----------+
|        20 |
+-----------+
1 row in set (0.00 sec)

-- Q20.CREATE A TABLE WITH ONE PRIMARY KEY, 2 UNIQUE KEYS, 1 UNIQUE KEY WITH NOTNULL AND 1 NOT NULL.
create table chini(id int primary key, fname varchar(20) unique, lname varchar(20) unique, mobile bigint unique not null, email varchar(25) not null); 
show tables;
+------------------------------------------------------+
| Tables_in_mysql                                      |
+------------------------------------------------------+
| chini                                                |
+------------------------------------------------------+
desc chini;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int         | NO   | PRI | NULL    |       |
| fname  | varchar(20) | YES  | UNI | NULL    |       |
| lname  | varchar(20) | YES  | UNI | NULL    |       |
| mobile | bigint      | NO   | UNI | NULL    |       |
| email  | varchar(25) | NO   |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
5 rows in set (0.02 sec)
```

```sql
-- 30|11|24
-- Group Function: Aggregate Function: MultiRow Function.
-- Clause:-Rules
-- 1.Where-->Condition
-- 2.Group By-->Grouping and Returns result as per group.

select * from ed_record;
+------+----------+------------+--------+------+--------+
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
+------+----------+------------+--------+------+--------+
20 rows in set (0.00 sec)

-- Q:Display Number of employee working in deptno=20?
SELECT COUNT(DEPTNO), deptno FROM ED_RECORD WHERE DEPTNO=20;
+---------------+--------+
| COUNT(DEPTNO) | deptno |
+---------------+--------+
|             4 |     20 |
+---------------+--------+
1 row in set (0.00 sec)

-- Q:Display Number of employee working in deptno=10?
SELECT COUNT(DEPTNO), deptno FROM ED_RECORD WHERE DEPTNO=10;
+---------------+--------+
| COUNT(DEPTNO) | deptno |
+---------------+--------+
|             4 |     10 |
+---------------+--------+
1 row in set (0.00 sec)

-- Q:Display number of Employees working in each deptno?
SELECT COUNT(DEPTNO), deptno FROM ED_RECORD group by DEPTNO;
+---------------+--------+
| COUNT(DEPTNO) | deptno |
+---------------+--------+
|             4 |     20 |
|             4 |     10 |
|             5 |     30 |
|             4 |     40 |
|             2 |     50 |
|             1 |     60 |
+---------------+--------+
6 rows in set (0.00 sec)

-- Q:Display jobs available in each deptno?
SELECT COUNT(JOB),DEPTNO FROM ED_RECORD GROUP BY DEPTNO;
+------------+--------+
| COUNT(JOB) | DEPTNO |
+------------+--------+
|          4 |     20 |
|          4 |     10 |
|          5 |     30 |
|          4 |     40 |
|          2 |     50 |
|          1 |     60 |
+------------+--------+
6 rows in set (0.00 sec)

-- Q:Display Total Salary of each department?
SELECT SUM(SALARY),DEPTNO FROM ED_RECORD GROUP BY DEPTNO;
+-------------+--------+
| SUM(SALARY) | DEPTNO |
+-------------+--------+
|      350000 |     20 |
|      399000 |     10 |
|      527000 |     30 |
|      280000 |     40 |
|       75200 |     50 |
|       53470 |     60 |
+-------------+--------+
6 rows in set (0.00 sec)

-- Q: Display the maximum salary given in each department number?
SELECT MAX(SALARY),DEPTNO FROM ED_RECORD GROUP BY DEPTNO;
+-------------+--------+
| MAX(SALARY) | DEPTNO |
+-------------+--------+
|      100000 |     20 |
|      150000 |     10 |
|      155000 |     30 |
|       97000 |     40 |
|       41200 |     50 |
|       53470 |     60 |
+-------------+--------+

-- Q:Display the name of the employee who is earning the maximum salary in each deptno?


-- Q:Display the average salary in each deptno?
SELECT AVG(SALARY),DEPTNO FROM ED_RECORD GROUP BY DEPTNO;
+-------------+--------+
| AVG(SALARY) | DEPTNO |
+-------------+--------+
|  87500.0000 |     20 |
|  99750.0000 |     10 |
| 105400.0000 |     30 |
|  70000.0000 |     40 |
|  37600.0000 |     50 |
|  53470.0000 |     60 |
+-------------+--------+
6 rows in set (0.00 sec)

-- Q:Display Number of employee working as Manager?
SELECT COUNT(ID),JOB FROM ED_RECORD WHERE JOB='MANAGER';
+-----------+---------+
| COUNT(ID) | JOB     |
+-----------+---------+
|         6 | MANAGER |
+-----------+---------+
1 row in set (0.00 sec)

-- Q:Display Number of employee working as QUALITY?
SELECT COUNT(ID),JOB FROM ED_RECORD WHERE JOB='QUALITY';
+-----------+---------+
| COUNT(ID) | JOB     |
+-----------+---------+
|         4 | QUALITY |
+-----------+---------+
1 row in set (0.00 sec)

-- Q:Display number of employee working in each job designation?
SELECT COUNT(ID),JOB FROM ED_RECORD GROUP BY JOB;
+-----------+------------+
| COUNT(ID) | JOB        |
+-----------+------------+
|         6 | MANAGER    |
|         5 | SALES      |
|         4 | QUALITY    |
|         5 | OPERATIONS |
+-----------+------------+
4 rows in set (0.00 sec)

-- Q:Display number of employee in each deptno earning salary >=100000?
SELECT COUNT(ID),DEPTNO FROM ED_RECORD WHERE SALARY >=100000 GROUP BY DEPTNO;
+-----------+--------+
| COUNT(ID) | DEPTNO |
+-----------+--------+
|         2 |     20 |
|         2 |     10 |
|         2 |     30 |
+-----------+--------+
3 rows in set (0.00 sec)

-- Q:Display number of employee in each deptno earning salary <100000?
SELECT COUNT(ID),DEPTNO FROM ED_RECORD WHERE SALARY<100000 GROUP BY DEPTNO;
+-----------+--------+
| COUNT(ID) | DEPTNO |
+-----------+--------+
|         2 |     20 |
|         2 |     10 |
|         3 |     30 |
|         4 |     40 |
|         2 |     50 |
|         1 |     60 |
+-----------+--------+
6 rows in set (0.00 sec)

-- Q:Display the count of employees earning >=100000 in each job designation?
SELECT COUNT(ID),JOB FROM ED_RECORD WHERE SALARY>100000 GROUP BY JOB;
+-----------+---------+
| COUNT(ID) | JOB     |
+-----------+---------+
|         3 | MANAGER |
|         1 | SALES   |
+-----------+---------+
2 rows in set (0.00 sec)

SELECT COUNT(ID),JOB FROM ED_RECORD WHERE SALARY>=100000 GROUP BY JOB;
+-----------+---------+
| COUNT(ID) | JOB     |
+-----------+---------+
|         4 | MANAGER |
|         2 | SALES   |
+-----------+---------+
2 rows in set (0.00 sec) 
```
```sql
-- 30|11|24
use mysql;
select * from ed_record, dept;
select * from ed_record cross join dept;
+------+----------+------------+--------+------+--------+--------+------------+------------+
| ID   | NAME     | JOB        | SALARY | COMM | DEPTNO | deptno | dname      | loc        |
+------+----------+------------+--------+------+--------+--------+------------+------------+
|  101 | SURESH   | MANAGER    | 100000 | 5000 |     20 |     90 | art        | rajasthan  |
|  101 | SURESH   | MANAGER    | 100000 | 5000 |     20 |     80 | education  | karnataka  |
|  101 | SURESH   | MANAGER    | 100000 | 5000 |     20 |     70 | chemical   | panjabi    |
|  101 | SURESH   | MANAGER    | 100000 | 5000 |     20 |     60 | electric   | tamil_nadu |
|  101 | SURESH   | MANAGER    | 100000 | 5000 |     20 |     50 | it         | mp         |
|  101 | SURESH   | MANAGER    | 100000 | 5000 |     20 |     40 | entc       | chennai    |
|  101 | SURESH   | MANAGER    | 100000 | 5000 |     20 |     30 | civil      | banglore   |
|  101 | SURESH   | MANAGER    | 100000 | 5000 |     20 |     20 | computer   | pune       |
|  101 | SURESH   | MANAGER    | 100000 | 5000 |     20 |     20 | computer   | pune       |
|  101 | SURESH   | MANAGER    | 100000 | 5000 |     20 |     10 | mechanical | mumbai     |
|  101 | SURESH   | MANAGER    | 100000 | 5000 |     20 |     10 | mechanical | mumbai     |
|  102 | ROHIT    | SALES      | 100000 | 5000 |     20 |     90 | art        | rajasthan  |
|  102 | ROHIT    | SALES      | 100000 | 5000 |     20 |     80 | education  | karnataka  |
|  102 | ROHIT    | SALES      | 100000 | 5000 |     20 |     70 | chemical   | panjabi    |
|  102 | ROHIT    | SALES      | 100000 | 5000 |     20 |     60 | electric   | tamil_nadu |
|  102 | ROHIT    | SALES      | 100000 | 5000 |     20 |     50 | it         | mp         |
|  102 | ROHIT    | SALES      | 100000 | 5000 |     20 |     40 | entc       | chennai    |
|  102 | ROHIT    | SALES      | 100000 | 5000 |     20 |     30 | civil      | banglore   |
|  102 | ROHIT    | SALES      | 100000 | 5000 |     20 |     20 | computer   | pune       |
|  102 | ROHIT    | SALES      | 100000 | 5000 |     20 |     20 | computer   | pune       |
|  102 | ROHIT    | SALES      | 100000 | 5000 |     20 |     10 | mechanical | mumbai     |
|  102 | ROHIT    | SALES      | 100000 | 5000 |     20 |     10 | mechanical | mumbai     |
|  103 | SUNITA   | QUALITY    |  70000 | 3000 |     20 |     90 | art        | rajasthan  |
|  103 | SUNITA   | QUALITY    |  70000 | 3000 |     20 |     80 | education  | karnataka  |
|  103 | SUNITA   | QUALITY    |  70000 | 3000 |     20 |     70 | chemical   | panjabi    |
|  103 | SUNITA   | QUALITY    |  70000 | 3000 |     20 |     60 | electric   | tamil_nadu |
|  103 | SUNITA   | QUALITY    |  70000 | 3000 |     20 |     50 | it         | mp         |
|  103 | SUNITA   | QUALITY    |  70000 | 3000 |     20 |     40 | entc       | chennai    |
|  103 | SUNITA   | QUALITY    |  70000 | 3000 |     20 |     30 | civil      | banglore   |
|  103 | SUNITA   | QUALITY    |  70000 | 3000 |     20 |     20 | computer   | pune       |
|  103 | SUNITA   | QUALITY    |  70000 | 3000 |     20 |     20 | computer   | pune       |
|  103 | SUNITA   | QUALITY    |  70000 | 3000 |     20 |     10 | mechanical | mumbai     |
|  103 | SUNITA   | QUALITY    |  70000 | 3000 |     20 |     10 | mechanical | mumbai     |
|  104 | GAURI    | OPERATIONS |  80000 | 3500 |     20 |     90 | art        | rajasthan  |
|  104 | GAURI    | OPERATIONS |  80000 | 3500 |     20 |     80 | education  | karnataka  |
|  104 | GAURI    | OPERATIONS |  80000 | 3500 |     20 |     70 | chemical   | panjabi    |
|  104 | GAURI    | OPERATIONS |  80000 | 3500 |     20 |     60 | electric   | tamil_nadu |
|  104 | GAURI    | OPERATIONS |  80000 | 3500 |     20 |     50 | it         | mp         |
|  104 | GAURI    | OPERATIONS |  80000 | 3500 |     20 |     40 | entc       | chennai    |
|  104 | GAURI    | OPERATIONS |  80000 | 3500 |     20 |     30 | civil      | banglore   |
|  104 | GAURI    | OPERATIONS |  80000 | 3500 |     20 |     20 | computer   | pune       |
|  104 | GAURI    | OPERATIONS |  80000 | 3500 |     20 |     20 | computer   | pune       |
|  104 | GAURI    | OPERATIONS |  80000 | 3500 |     20 |     10 | mechanical | mumbai     |
|  104 | GAURI    | OPERATIONS |  80000 | 3500 |     20 |     10 | mechanical | mumbai     |
|  105 | SHRUTIKA | MANAGER    | 150000 | 4500 |     10 |     90 | art        | rajasthan  |
|  105 | SHRUTIKA | MANAGER    | 150000 | 4500 |     10 |     80 | education  | karnataka  |
|  105 | SHRUTIKA | MANAGER    | 150000 | 4500 |     10 |     70 | chemical   | panjabi    |
|  105 | SHRUTIKA | MANAGER    | 150000 | 4500 |     10 |     60 | electric   | tamil_nadu |
|  105 | SHRUTIKA | MANAGER    | 150000 | 4500 |     10 |     50 | it         | mp         |
|  105 | SHRUTIKA | MANAGER    | 150000 | 4500 |     10 |     40 | entc       | chennai    |
|  105 | SHRUTIKA | MANAGER    | 150000 | 4500 |     10 |     30 | civil      | banglore   |
|  105 | SHRUTIKA | MANAGER    | 150000 | 4500 |     10 |     20 | computer   | pune       |
|  105 | SHRUTIKA | MANAGER    | 150000 | 4500 |     10 |     20 | computer   | pune       |
|  105 | SHRUTIKA | MANAGER    | 150000 | 4500 |     10 |     10 | mechanical | mumbai     |
|  105 | SHRUTIKA | MANAGER    | 150000 | 4500 |     10 |     10 | mechanical | mumbai     |
|  106 | SAHIL    | SALES      | 130000 | 3500 |     10 |     90 | art        | rajasthan  |
|  106 | SAHIL    | SALES      | 130000 | 3500 |     10 |     80 | education  | karnataka  |
|  106 | SAHIL    | SALES      | 130000 | 3500 |     10 |     70 | chemical   | panjabi    |
|  106 | SAHIL    | SALES      | 130000 | 3500 |     10 |     60 | electric   | tamil_nadu |
|  106 | SAHIL    | SALES      | 130000 | 3500 |     10 |     50 | it         | mp         |
|  106 | SAHIL    | SALES      | 130000 | 3500 |     10 |     40 | entc       | chennai    |
|  106 | SAHIL    | SALES      | 130000 | 3500 |     10 |     30 | civil      | banglore   |
|  106 | SAHIL    | SALES      | 130000 | 3500 |     10 |     20 | computer   | pune       |
|  106 | SAHIL    | SALES      | 130000 | 3500 |     10 |     20 | computer   | pune       |
|  106 | SAHIL    | SALES      | 130000 | 3500 |     10 |     10 | mechanical | mumbai     |
|  106 | SAHIL    | SALES      | 130000 | 3500 |     10 |     10 | mechanical | mumbai     |
|  107 | SHALAKA  | QUALITY    |  64000 | 3500 |     10 |     90 | art        | rajasthan  |
|  107 | SHALAKA  | QUALITY    |  64000 | 3500 |     10 |     80 | education  | karnataka  |
|  107 | SHALAKA  | QUALITY    |  64000 | 3500 |     10 |     70 | chemical   | panjabi    |
|  107 | SHALAKA  | QUALITY    |  64000 | 3500 |     10 |     60 | electric   | tamil_nadu |
|  107 | SHALAKA  | QUALITY    |  64000 | 3500 |     10 |     50 | it         | mp         |
|  107 | SHALAKA  | QUALITY    |  64000 | 3500 |     10 |     40 | entc       | chennai    |
|  107 | SHALAKA  | QUALITY    |  64000 | 3500 |     10 |     30 | civil      | banglore   |
|  107 | SHALAKA  | QUALITY    |  64000 | 3500 |     10 |     20 | computer   | pune       |
|  107 | SHALAKA  | QUALITY    |  64000 | 3500 |     10 |     20 | computer   | pune       |
|  107 | SHALAKA  | QUALITY    |  64000 | 3500 |     10 |     10 | mechanical | mumbai     |
|  107 | SHALAKA  | QUALITY    |  64000 | 3500 |     10 |     10 | mechanical | mumbai     |
|  108 | MOHSIN   | OPERATIONS |  55000 | 2500 |     10 |     90 | art        | rajasthan  |
|  108 | MOHSIN   | OPERATIONS |  55000 | 2500 |     10 |     80 | education  | karnataka  |
|  108 | MOHSIN   | OPERATIONS |  55000 | 2500 |     10 |     70 | chemical   | panjabi    |
|  108 | MOHSIN   | OPERATIONS |  55000 | 2500 |     10 |     60 | electric   | tamil_nadu |
|  108 | MOHSIN   | OPERATIONS |  55000 | 2500 |     10 |     50 | it         | mp         |
|  108 | MOHSIN   | OPERATIONS |  55000 | 2500 |     10 |     40 | entc       | chennai    |
|  108 | MOHSIN   | OPERATIONS |  55000 | 2500 |     10 |     30 | civil      | banglore   |
|  108 | MOHSIN   | OPERATIONS |  55000 | 2500 |     10 |     20 | computer   | pune       |
|  108 | MOHSIN   | OPERATIONS |  55000 | 2500 |     10 |     20 | computer   | pune       |
|  108 | MOHSIN   | OPERATIONS |  55000 | 2500 |     10 |     10 | mechanical | mumbai     |
|  108 | MOHSIN   | OPERATIONS |  55000 | 2500 |     10 |     10 | mechanical | mumbai     |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     90 | art        | rajasthan  |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     80 | education  | karnataka  |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     70 | chemical   | panjabi    |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     60 | electric   | tamil_nadu |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     50 | it         | mp         |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     40 | entc       | chennai    |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     30 | civil      | banglore   |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     20 | computer   | pune       |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     20 | computer   | pune       |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     10 | mechanical | mumbai     |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     10 | mechanical | mumbai     |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     90 | art        | rajasthan  |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     80 | education  | karnataka  |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     70 | chemical   | panjabi    |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     60 | electric   | tamil_nadu |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     50 | it         | mp         |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     40 | entc       | chennai    |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     30 | civil      | banglore   |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     20 | computer   | pune       |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     20 | computer   | pune       |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     10 | mechanical | mumbai     |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     10 | mechanical | mumbai     |
|  110 | YOGESH   | SALES      |  90000 | 3500 |     30 |     90 | art        | rajasthan  |
|  110 | YOGESH   | SALES      |  90000 | 3500 |     30 |     80 | education  | karnataka  |
|  110 | YOGESH   | SALES      |  90000 | 3500 |     30 |     70 | chemical   | panjabi    |
|  110 | YOGESH   | SALES      |  90000 | 3500 |     30 |     60 | electric   | tamil_nadu |
|  110 | YOGESH   | SALES      |  90000 | 3500 |     30 |     50 | it         | mp         |
|  110 | YOGESH   | SALES      |  90000 | 3500 |     30 |     40 | entc       | chennai    |
|  110 | YOGESH   | SALES      |  90000 | 3500 |     30 |     30 | civil      | banglore   |
|  110 | YOGESH   | SALES      |  90000 | 3500 |     30 |     20 | computer   | pune       |
|  110 | YOGESH   | SALES      |  90000 | 3500 |     30 |     20 | computer   | pune       |
|  110 | YOGESH   | SALES      |  90000 | 3500 |     30 |     10 | mechanical | mumbai     |
|  110 | YOGESH   | SALES      |  90000 | 3500 |     30 |     10 | mechanical | mumbai     |
|  111 | SMRUTI   | QUALITY    |  55000 | 2500 |     30 |     90 | art        | rajasthan  |
|  111 | SMRUTI   | QUALITY    |  55000 | 2500 |     30 |     80 | education  | karnataka  |
|  111 | SMRUTI   | QUALITY    |  55000 | 2500 |     30 |     70 | chemical   | panjabi    |
|  111 | SMRUTI   | QUALITY    |  55000 | 2500 |     30 |     60 | electric   | tamil_nadu |
|  111 | SMRUTI   | QUALITY    |  55000 | 2500 |     30 |     50 | it         | mp         |
|  111 | SMRUTI   | QUALITY    |  55000 | 2500 |     30 |     40 | entc       | chennai    |
|  111 | SMRUTI   | QUALITY    |  55000 | 2500 |     30 |     30 | civil      | banglore   |
|  111 | SMRUTI   | QUALITY    |  55000 | 2500 |     30 |     20 | computer   | pune       |
|  111 | SMRUTI   | QUALITY    |  55000 | 2500 |     30 |     20 | computer   | pune       |
|  111 | SMRUTI   | QUALITY    |  55000 | 2500 |     30 |     10 | mechanical | mumbai     |
|  111 | SMRUTI   | QUALITY    |  55000 | 2500 |     30 |     10 | mechanical | mumbai     |
|  112 | PAYAL    | OPERATIONS |  72000 | 1500 |     30 |     90 | art        | rajasthan  |
|  112 | PAYAL    | OPERATIONS |  72000 | 1500 |     30 |     80 | education  | karnataka  |
|  112 | PAYAL    | OPERATIONS |  72000 | 1500 |     30 |     70 | chemical   | panjabi    |
|  112 | PAYAL    | OPERATIONS |  72000 | 1500 |     30 |     60 | electric   | tamil_nadu |
|  112 | PAYAL    | OPERATIONS |  72000 | 1500 |     30 |     50 | it         | mp         |
|  112 | PAYAL    | OPERATIONS |  72000 | 1500 |     30 |     40 | entc       | chennai    |
|  112 | PAYAL    | OPERATIONS |  72000 | 1500 |     30 |     30 | civil      | banglore   |
|  112 | PAYAL    | OPERATIONS |  72000 | 1500 |     30 |     20 | computer   | pune       |
|  112 | PAYAL    | OPERATIONS |  72000 | 1500 |     30 |     20 | computer   | pune       |
|  112 | PAYAL    | OPERATIONS |  72000 | 1500 |     30 |     10 | mechanical | mumbai     |
|  112 | PAYAL    | OPERATIONS |  72000 | 1500 |     30 |     10 | mechanical | mumbai     |
|  113 | SWAPNIL  | MANAGER    |  97000 | 3200 |     40 |     90 | art        | rajasthan  |
|  113 | SWAPNIL  | MANAGER    |  97000 | 3200 |     40 |     80 | education  | karnataka  |
|  113 | SWAPNIL  | MANAGER    |  97000 | 3200 |     40 |     70 | chemical   | panjabi    |
|  113 | SWAPNIL  | MANAGER    |  97000 | 3200 |     40 |     60 | electric   | tamil_nadu |
|  113 | SWAPNIL  | MANAGER    |  97000 | 3200 |     40 |     50 | it         | mp         |
|  113 | SWAPNIL  | MANAGER    |  97000 | 3200 |     40 |     40 | entc       | chennai    |
|  113 | SWAPNIL  | MANAGER    |  97000 | 3200 |     40 |     30 | civil      | banglore   |
|  113 | SWAPNIL  | MANAGER    |  97000 | 3200 |     40 |     20 | computer   | pune       |
|  113 | SWAPNIL  | MANAGER    |  97000 | 3200 |     40 |     20 | computer   | pune       |
|  113 | SWAPNIL  | MANAGER    |  97000 | 3200 |     40 |     10 | mechanical | mumbai     |
|  113 | SWAPNIL  | MANAGER    |  97000 | 3200 |     40 |     10 | mechanical | mumbai     |
|  114 | SHIRIN   | SALES      |  50000 | 1500 |     40 |     90 | art        | rajasthan  |
|  114 | SHIRIN   | SALES      |  50000 | 1500 |     40 |     80 | education  | karnataka  |
|  114 | SHIRIN   | SALES      |  50000 | 1500 |     40 |     70 | chemical   | panjabi    |
|  114 | SHIRIN   | SALES      |  50000 | 1500 |     40 |     60 | electric   | tamil_nadu |
|  114 | SHIRIN   | SALES      |  50000 | 1500 |     40 |     50 | it         | mp         |
|  114 | SHIRIN   | SALES      |  50000 | 1500 |     40 |     40 | entc       | chennai    |
|  114 | SHIRIN   | SALES      |  50000 | 1500 |     40 |     30 | civil      | banglore   |
|  114 | SHIRIN   | SALES      |  50000 | 1500 |     40 |     20 | computer   | pune       |
|  114 | SHIRIN   | SALES      |  50000 | 1500 |     40 |     20 | computer   | pune       |
|  114 | SHIRIN   | SALES      |  50000 | 1500 |     40 |     10 | mechanical | mumbai     |
|  114 | SHIRIN   | SALES      |  50000 | 1500 |     40 |     10 | mechanical | mumbai     |
|  115 | SOHAIL   | QUALITY    |  50000 | 2540 |     40 |     90 | art        | rajasthan  |
|  115 | SOHAIL   | QUALITY    |  50000 | 2540 |     40 |     80 | education  | karnataka  |
|  115 | SOHAIL   | QUALITY    |  50000 | 2540 |     40 |     70 | chemical   | panjabi    |
|  115 | SOHAIL   | QUALITY    |  50000 | 2540 |     40 |     60 | electric   | tamil_nadu |
|  115 | SOHAIL   | QUALITY    |  50000 | 2540 |     40 |     50 | it         | mp         |
|  115 | SOHAIL   | QUALITY    |  50000 | 2540 |     40 |     40 | entc       | chennai    |
|  115 | SOHAIL   | QUALITY    |  50000 | 2540 |     40 |     30 | civil      | banglore   |
|  115 | SOHAIL   | QUALITY    |  50000 | 2540 |     40 |     20 | computer   | pune       |
|  115 | SOHAIL   | QUALITY    |  50000 | 2540 |     40 |     20 | computer   | pune       |
|  115 | SOHAIL   | QUALITY    |  50000 | 2540 |     40 |     10 | mechanical | mumbai     |
|  115 | SOHAIL   | QUALITY    |  50000 | 2540 |     40 |     10 | mechanical | mumbai     |
|  116 | SURAJ    | OPERATIONS |  83000 | 2700 |     40 |     90 | art        | rajasthan  |
|  116 | SURAJ    | OPERATIONS |  83000 | 2700 |     40 |     80 | education  | karnataka  |
|  116 | SURAJ    | OPERATIONS |  83000 | 2700 |     40 |     70 | chemical   | panjabi    |
|  116 | SURAJ    | OPERATIONS |  83000 | 2700 |     40 |     60 | electric   | tamil_nadu |
|  116 | SURAJ    | OPERATIONS |  83000 | 2700 |     40 |     50 | it         | mp         |
|  116 | SURAJ    | OPERATIONS |  83000 | 2700 |     40 |     40 | entc       | chennai    |
|  116 | SURAJ    | OPERATIONS |  83000 | 2700 |     40 |     30 | civil      | banglore   |
|  116 | SURAJ    | OPERATIONS |  83000 | 2700 |     40 |     20 | computer   | pune       |
|  116 | SURAJ    | OPERATIONS |  83000 | 2700 |     40 |     20 | computer   | pune       |
|  116 | SURAJ    | OPERATIONS |  83000 | 2700 |     40 |     10 | mechanical | mumbai     |
|  116 | SURAJ    | OPERATIONS |  83000 | 2700 |     40 |     10 | mechanical | mumbai     |
|  117 | GILL     | SALES      |  34000 | NULL |     50 |     90 | art        | rajasthan  |
|  117 | GILL     | SALES      |  34000 | NULL |     50 |     80 | education  | karnataka  |
|  117 | GILL     | SALES      |  34000 | NULL |     50 |     70 | chemical   | panjabi    |
|  117 | GILL     | SALES      |  34000 | NULL |     50 |     60 | electric   | tamil_nadu |
|  117 | GILL     | SALES      |  34000 | NULL |     50 |     50 | it         | mp         |
|  117 | GILL     | SALES      |  34000 | NULL |     50 |     40 | entc       | chennai    |
|  117 | GILL     | SALES      |  34000 | NULL |     50 |     30 | civil      | banglore   |
|  117 | GILL     | SALES      |  34000 | NULL |     50 |     20 | computer   | pune       |
|  117 | GILL     | SALES      |  34000 | NULL |     50 |     20 | computer   | pune       |
|  117 | GILL     | SALES      |  34000 | NULL |     50 |     10 | mechanical | mumbai     |
|  117 | GILL     | SALES      |  34000 | NULL |     50 |     10 | mechanical | mumbai     |
|  118 | SAURABH  | OPERATIONS |  41200 |    0 |     50 |     90 | art        | rajasthan  |
|  118 | SAURABH  | OPERATIONS |  41200 |    0 |     50 |     80 | education  | karnataka  |
|  118 | SAURABH  | OPERATIONS |  41200 |    0 |     50 |     70 | chemical   | panjabi    |
|  118 | SAURABH  | OPERATIONS |  41200 |    0 |     50 |     60 | electric   | tamil_nadu |
|  118 | SAURABH  | OPERATIONS |  41200 |    0 |     50 |     50 | it         | mp         |
|  118 | SAURABH  | OPERATIONS |  41200 |    0 |     50 |     40 | entc       | chennai    |
|  118 | SAURABH  | OPERATIONS |  41200 |    0 |     50 |     30 | civil      | banglore   |
|  118 | SAURABH  | OPERATIONS |  41200 |    0 |     50 |     20 | computer   | pune       |
|  118 | SAURABH  | OPERATIONS |  41200 |    0 |     50 |     20 | computer   | pune       |
|  118 | SAURABH  | OPERATIONS |  41200 |    0 |     50 |     10 | mechanical | mumbai     |
|  118 | SAURABH  | OPERATIONS |  41200 |    0 |     50 |     10 | mechanical | mumbai     |
|  119 | ASHISH   | MANAGER    |  53470 | 3700 |     60 |     90 | art        | rajasthan  |
|  119 | ASHISH   | MANAGER    |  53470 | 3700 |     60 |     80 | education  | karnataka  |
|  119 | ASHISH   | MANAGER    |  53470 | 3700 |     60 |     70 | chemical   | panjabi    |
|  119 | ASHISH   | MANAGER    |  53470 | 3700 |     60 |     60 | electric   | tamil_nadu |
|  119 | ASHISH   | MANAGER    |  53470 | 3700 |     60 |     50 | it         | mp         |
|  119 | ASHISH   | MANAGER    |  53470 | 3700 |     60 |     40 | entc       | chennai    |
|  119 | ASHISH   | MANAGER    |  53470 | 3700 |     60 |     30 | civil      | banglore   |
|  119 | ASHISH   | MANAGER    |  53470 | 3700 |     60 |     20 | computer   | pune       |
|  119 | ASHISH   | MANAGER    |  53470 | 3700 |     60 |     20 | computer   | pune       |
|  119 | ASHISH   | MANAGER    |  53470 | 3700 |     60 |     10 | mechanical | mumbai     |
|  119 | ASHISH   | MANAGER    |  53470 | 3700 |     60 |     10 | mechanical | mumbai     |
+------+----------+------------+--------+------+--------+--------+------------+------------+
220 rows in set (0.00 sec)

select * from ed_record inner join dept;
+------+----------+------------+--------+------+--------+--------+------------+------------+
| ID   | NAME     | JOB        | SALARY | COMM | DEPTNO | deptno | dname      | loc        |
+------+----------+------------+--------+------+--------+--------+------------+------------+
|  101 | SURESH   | MANAGER    | 100000 | 5000 |     20 |     90 | art        | rajasthan  |
|  101 | SURESH   | MANAGER    | 100000 | 5000 |     20 |     80 | education  | karnataka  |
|  101 | SURESH   | MANAGER    | 100000 | 5000 |     20 |     70 | chemical   | panjabi    |
|  101 | SURESH   | MANAGER    | 100000 | 5000 |     20 |     60 | electric   | tamil_nadu |
|  101 | SURESH   | MANAGER    | 100000 | 5000 |     20 |     50 | it         | mp         |
|  101 | SURESH   | MANAGER    | 100000 | 5000 |     20 |     40 | entc       | chennai    |
|  101 | SURESH   | MANAGER    | 100000 | 5000 |     20 |     30 | civil      | banglore   |
|  101 | SURESH   | MANAGER    | 100000 | 5000 |     20 |     20 | computer   | pune       |
|  101 | SURESH   | MANAGER    | 100000 | 5000 |     20 |     20 | computer   | pune       |
|  101 | SURESH   | MANAGER    | 100000 | 5000 |     20 |     10 | mechanical | mumbai     |
|  101 | SURESH   | MANAGER    | 100000 | 5000 |     20 |     10 | mechanical | mumbai     |
|  102 | ROHIT    | SALES      | 100000 | 5000 |     20 |     90 | art        | rajasthan  |
|  102 | ROHIT    | SALES      | 100000 | 5000 |     20 |     80 | education  | karnataka  |
|  102 | ROHIT    | SALES      | 100000 | 5000 |     20 |     70 | chemical   | panjabi    |
|  102 | ROHIT    | SALES      | 100000 | 5000 |     20 |     60 | electric   | tamil_nadu |
|  102 | ROHIT    | SALES      | 100000 | 5000 |     20 |     50 | it         | mp         |
|  102 | ROHIT    | SALES      | 100000 | 5000 |     20 |     40 | entc       | chennai    |
|  102 | ROHIT    | SALES      | 100000 | 5000 |     20 |     30 | civil      | banglore   |
|  102 | ROHIT    | SALES      | 100000 | 5000 |     20 |     20 | computer   | pune       |
|  102 | ROHIT    | SALES      | 100000 | 5000 |     20 |     20 | computer   | pune       |
|  102 | ROHIT    | SALES      | 100000 | 5000 |     20 |     10 | mechanical | mumbai     |
|  102 | ROHIT    | SALES      | 100000 | 5000 |     20 |     10 | mechanical | mumbai     |
|  103 | SUNITA   | QUALITY    |  70000 | 3000 |     20 |     90 | art        | rajasthan  |
|  103 | SUNITA   | QUALITY    |  70000 | 3000 |     20 |     80 | education  | karnataka  |
|  103 | SUNITA   | QUALITY    |  70000 | 3000 |     20 |     70 | chemical   | panjabi    |
|  103 | SUNITA   | QUALITY    |  70000 | 3000 |     20 |     60 | electric   | tamil_nadu |
|  103 | SUNITA   | QUALITY    |  70000 | 3000 |     20 |     50 | it         | mp         |
|  103 | SUNITA   | QUALITY    |  70000 | 3000 |     20 |     40 | entc       | chennai    |
|  103 | SUNITA   | QUALITY    |  70000 | 3000 |     20 |     30 | civil      | banglore   |
|  103 | SUNITA   | QUALITY    |  70000 | 3000 |     20 |     20 | computer   | pune       |
|  103 | SUNITA   | QUALITY    |  70000 | 3000 |     20 |     20 | computer   | pune       |
|  103 | SUNITA   | QUALITY    |  70000 | 3000 |     20 |     10 | mechanical | mumbai     |
|  103 | SUNITA   | QUALITY    |  70000 | 3000 |     20 |     10 | mechanical | mumbai     |
|  104 | GAURI    | OPERATIONS |  80000 | 3500 |     20 |     90 | art        | rajasthan  |
|  104 | GAURI    | OPERATIONS |  80000 | 3500 |     20 |     80 | education  | karnataka  |
|  104 | GAURI    | OPERATIONS |  80000 | 3500 |     20 |     70 | chemical   | panjabi    |
|  104 | GAURI    | OPERATIONS |  80000 | 3500 |     20 |     60 | electric   | tamil_nadu |
|  104 | GAURI    | OPERATIONS |  80000 | 3500 |     20 |     50 | it         | mp         |
|  104 | GAURI    | OPERATIONS |  80000 | 3500 |     20 |     40 | entc       | chennai    |
|  104 | GAURI    | OPERATIONS |  80000 | 3500 |     20 |     30 | civil      | banglore   |
|  104 | GAURI    | OPERATIONS |  80000 | 3500 |     20 |     20 | computer   | pune       |
|  104 | GAURI    | OPERATIONS |  80000 | 3500 |     20 |     20 | computer   | pune       |
|  104 | GAURI    | OPERATIONS |  80000 | 3500 |     20 |     10 | mechanical | mumbai     |
|  104 | GAURI    | OPERATIONS |  80000 | 3500 |     20 |     10 | mechanical | mumbai     |
|  105 | SHRUTIKA | MANAGER    | 150000 | 4500 |     10 |     90 | art        | rajasthan  |
|  105 | SHRUTIKA | MANAGER    | 150000 | 4500 |     10 |     80 | education  | karnataka  |
|  105 | SHRUTIKA | MANAGER    | 150000 | 4500 |     10 |     70 | chemical   | panjabi    |
|  105 | SHRUTIKA | MANAGER    | 150000 | 4500 |     10 |     60 | electric   | tamil_nadu |
|  105 | SHRUTIKA | MANAGER    | 150000 | 4500 |     10 |     50 | it         | mp         |
|  105 | SHRUTIKA | MANAGER    | 150000 | 4500 |     10 |     40 | entc       | chennai    |
|  105 | SHRUTIKA | MANAGER    | 150000 | 4500 |     10 |     30 | civil      | banglore   |
|  105 | SHRUTIKA | MANAGER    | 150000 | 4500 |     10 |     20 | computer   | pune       |
|  105 | SHRUTIKA | MANAGER    | 150000 | 4500 |     10 |     20 | computer   | pune       |
|  105 | SHRUTIKA | MANAGER    | 150000 | 4500 |     10 |     10 | mechanical | mumbai     |
|  105 | SHRUTIKA | MANAGER    | 150000 | 4500 |     10 |     10 | mechanical | mumbai     |
|  106 | SAHIL    | SALES      | 130000 | 3500 |     10 |     90 | art        | rajasthan  |
|  106 | SAHIL    | SALES      | 130000 | 3500 |     10 |     80 | education  | karnataka  |
|  106 | SAHIL    | SALES      | 130000 | 3500 |     10 |     70 | chemical   | panjabi    |
|  106 | SAHIL    | SALES      | 130000 | 3500 |     10 |     60 | electric   | tamil_nadu |
|  106 | SAHIL    | SALES      | 130000 | 3500 |     10 |     50 | it         | mp         |
|  106 | SAHIL    | SALES      | 130000 | 3500 |     10 |     40 | entc       | chennai    |
|  106 | SAHIL    | SALES      | 130000 | 3500 |     10 |     30 | civil      | banglore   |
|  106 | SAHIL    | SALES      | 130000 | 3500 |     10 |     20 | computer   | pune       |
|  106 | SAHIL    | SALES      | 130000 | 3500 |     10 |     20 | computer   | pune       |
|  106 | SAHIL    | SALES      | 130000 | 3500 |     10 |     10 | mechanical | mumbai     |
|  106 | SAHIL    | SALES      | 130000 | 3500 |     10 |     10 | mechanical | mumbai     |
|  107 | SHALAKA  | QUALITY    |  64000 | 3500 |     10 |     90 | art        | rajasthan  |
|  107 | SHALAKA  | QUALITY    |  64000 | 3500 |     10 |     80 | education  | karnataka  |
|  107 | SHALAKA  | QUALITY    |  64000 | 3500 |     10 |     70 | chemical   | panjabi    |
|  107 | SHALAKA  | QUALITY    |  64000 | 3500 |     10 |     60 | electric   | tamil_nadu |
|  107 | SHALAKA  | QUALITY    |  64000 | 3500 |     10 |     50 | it         | mp         |
|  107 | SHALAKA  | QUALITY    |  64000 | 3500 |     10 |     40 | entc       | chennai    |
|  107 | SHALAKA  | QUALITY    |  64000 | 3500 |     10 |     30 | civil      | banglore   |
|  107 | SHALAKA  | QUALITY    |  64000 | 3500 |     10 |     20 | computer   | pune       |
|  107 | SHALAKA  | QUALITY    |  64000 | 3500 |     10 |     20 | computer   | pune       |
|  107 | SHALAKA  | QUALITY    |  64000 | 3500 |     10 |     10 | mechanical | mumbai     |
|  107 | SHALAKA  | QUALITY    |  64000 | 3500 |     10 |     10 | mechanical | mumbai     |
|  108 | MOHSIN   | OPERATIONS |  55000 | 2500 |     10 |     90 | art        | rajasthan  |
|  108 | MOHSIN   | OPERATIONS |  55000 | 2500 |     10 |     80 | education  | karnataka  |
|  108 | MOHSIN   | OPERATIONS |  55000 | 2500 |     10 |     70 | chemical   | panjabi    |
|  108 | MOHSIN   | OPERATIONS |  55000 | 2500 |     10 |     60 | electric   | tamil_nadu |
|  108 | MOHSIN   | OPERATIONS |  55000 | 2500 |     10 |     50 | it         | mp         |
|  108 | MOHSIN   | OPERATIONS |  55000 | 2500 |     10 |     40 | entc       | chennai    |
|  108 | MOHSIN   | OPERATIONS |  55000 | 2500 |     10 |     30 | civil      | banglore   |
|  108 | MOHSIN   | OPERATIONS |  55000 | 2500 |     10 |     20 | computer   | pune       |
|  108 | MOHSIN   | OPERATIONS |  55000 | 2500 |     10 |     20 | computer   | pune       |
|  108 | MOHSIN   | OPERATIONS |  55000 | 2500 |     10 |     10 | mechanical | mumbai     |
|  108 | MOHSIN   | OPERATIONS |  55000 | 2500 |     10 |     10 | mechanical | mumbai     |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     90 | art        | rajasthan  |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     80 | education  | karnataka  |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     70 | chemical   | panjabi    |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     60 | electric   | tamil_nadu |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     50 | it         | mp         |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     40 | entc       | chennai    |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     30 | civil      | banglore   |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     20 | computer   | pune       |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     20 | computer   | pune       |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     10 | mechanical | mumbai     |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     10 | mechanical | mumbai     |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     90 | art        | rajasthan  |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     80 | education  | karnataka  |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     70 | chemical   | panjabi    |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     60 | electric   | tamil_nadu |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     50 | it         | mp         |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     40 | entc       | chennai    |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     30 | civil      | banglore   |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     20 | computer   | pune       |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     20 | computer   | pune       |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     10 | mechanical | mumbai     |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     10 | mechanical | mumbai     |
|  110 | YOGESH   | SALES      |  90000 | 3500 |     30 |     90 | art        | rajasthan  |
|  110 | YOGESH   | SALES      |  90000 | 3500 |     30 |     80 | education  | karnataka  |
|  110 | YOGESH   | SALES      |  90000 | 3500 |     30 |     70 | chemical   | panjabi    |
|  110 | YOGESH   | SALES      |  90000 | 3500 |     30 |     60 | electric   | tamil_nadu |
|  110 | YOGESH   | SALES      |  90000 | 3500 |     30 |     50 | it         | mp         |
|  110 | YOGESH   | SALES      |  90000 | 3500 |     30 |     40 | entc       | chennai    |
|  110 | YOGESH   | SALES      |  90000 | 3500 |     30 |     30 | civil      | banglore   |
|  110 | YOGESH   | SALES      |  90000 | 3500 |     30 |     20 | computer   | pune       |
|  110 | YOGESH   | SALES      |  90000 | 3500 |     30 |     20 | computer   | pune       |
|  110 | YOGESH   | SALES      |  90000 | 3500 |     30 |     10 | mechanical | mumbai     |
|  110 | YOGESH   | SALES      |  90000 | 3500 |     30 |     10 | mechanical | mumbai     |
|  111 | SMRUTI   | QUALITY    |  55000 | 2500 |     30 |     90 | art        | rajasthan  |
|  111 | SMRUTI   | QUALITY    |  55000 | 2500 |     30 |     80 | education  | karnataka  |
|  111 | SMRUTI   | QUALITY    |  55000 | 2500 |     30 |     70 | chemical   | panjabi    |
|  111 | SMRUTI   | QUALITY    |  55000 | 2500 |     30 |     60 | electric   | tamil_nadu |
|  111 | SMRUTI   | QUALITY    |  55000 | 2500 |     30 |     50 | it         | mp         |
|  111 | SMRUTI   | QUALITY    |  55000 | 2500 |     30 |     40 | entc       | chennai    |
|  111 | SMRUTI   | QUALITY    |  55000 | 2500 |     30 |     30 | civil      | banglore   |
|  111 | SMRUTI   | QUALITY    |  55000 | 2500 |     30 |     20 | computer   | pune       |
|  111 | SMRUTI   | QUALITY    |  55000 | 2500 |     30 |     20 | computer   | pune       |
|  111 | SMRUTI   | QUALITY    |  55000 | 2500 |     30 |     10 | mechanical | mumbai     |
|  111 | SMRUTI   | QUALITY    |  55000 | 2500 |     30 |     10 | mechanical | mumbai     |
|  112 | PAYAL    | OPERATIONS |  72000 | 1500 |     30 |     90 | art        | rajasthan  |
|  112 | PAYAL    | OPERATIONS |  72000 | 1500 |     30 |     80 | education  | karnataka  |
|  112 | PAYAL    | OPERATIONS |  72000 | 1500 |     30 |     70 | chemical   | panjabi    |
|  112 | PAYAL    | OPERATIONS |  72000 | 1500 |     30 |     60 | electric   | tamil_nadu |
|  112 | PAYAL    | OPERATIONS |  72000 | 1500 |     30 |     50 | it         | mp         |
|  112 | PAYAL    | OPERATIONS |  72000 | 1500 |     30 |     40 | entc       | chennai    |
|  112 | PAYAL    | OPERATIONS |  72000 | 1500 |     30 |     30 | civil      | banglore   |
|  112 | PAYAL    | OPERATIONS |  72000 | 1500 |     30 |     20 | computer   | pune       |
|  112 | PAYAL    | OPERATIONS |  72000 | 1500 |     30 |     20 | computer   | pune       |
|  112 | PAYAL    | OPERATIONS |  72000 | 1500 |     30 |     10 | mechanical | mumbai     |
|  112 | PAYAL    | OPERATIONS |  72000 | 1500 |     30 |     10 | mechanical | mumbai     |
|  113 | SWAPNIL  | MANAGER    |  97000 | 3200 |     40 |     90 | art        | rajasthan  |
|  113 | SWAPNIL  | MANAGER    |  97000 | 3200 |     40 |     80 | education  | karnataka  |
|  113 | SWAPNIL  | MANAGER    |  97000 | 3200 |     40 |     70 | chemical   | panjabi    |
|  113 | SWAPNIL  | MANAGER    |  97000 | 3200 |     40 |     60 | electric   | tamil_nadu |
|  113 | SWAPNIL  | MANAGER    |  97000 | 3200 |     40 |     50 | it         | mp         |
|  113 | SWAPNIL  | MANAGER    |  97000 | 3200 |     40 |     40 | entc       | chennai    |
|  113 | SWAPNIL  | MANAGER    |  97000 | 3200 |     40 |     30 | civil      | banglore   |
|  113 | SWAPNIL  | MANAGER    |  97000 | 3200 |     40 |     20 | computer   | pune       |
|  113 | SWAPNIL  | MANAGER    |  97000 | 3200 |     40 |     20 | computer   | pune       |
|  113 | SWAPNIL  | MANAGER    |  97000 | 3200 |     40 |     10 | mechanical | mumbai     |
|  113 | SWAPNIL  | MANAGER    |  97000 | 3200 |     40 |     10 | mechanical | mumbai     |
|  114 | SHIRIN   | SALES      |  50000 | 1500 |     40 |     90 | art        | rajasthan  |
|  114 | SHIRIN   | SALES      |  50000 | 1500 |     40 |     80 | education  | karnataka  |
|  114 | SHIRIN   | SALES      |  50000 | 1500 |     40 |     70 | chemical   | panjabi    |
|  114 | SHIRIN   | SALES      |  50000 | 1500 |     40 |     60 | electric   | tamil_nadu |
|  114 | SHIRIN   | SALES      |  50000 | 1500 |     40 |     50 | it         | mp         |
|  114 | SHIRIN   | SALES      |  50000 | 1500 |     40 |     40 | entc       | chennai    |
|  114 | SHIRIN   | SALES      |  50000 | 1500 |     40 |     30 | civil      | banglore   |
|  114 | SHIRIN   | SALES      |  50000 | 1500 |     40 |     20 | computer   | pune       |
|  114 | SHIRIN   | SALES      |  50000 | 1500 |     40 |     20 | computer   | pune       |
|  114 | SHIRIN   | SALES      |  50000 | 1500 |     40 |     10 | mechanical | mumbai     |
|  114 | SHIRIN   | SALES      |  50000 | 1500 |     40 |     10 | mechanical | mumbai     |
|  115 | SOHAIL   | QUALITY    |  50000 | 2540 |     40 |     90 | art        | rajasthan  |
|  115 | SOHAIL   | QUALITY    |  50000 | 2540 |     40 |     80 | education  | karnataka  |
|  115 | SOHAIL   | QUALITY    |  50000 | 2540 |     40 |     70 | chemical   | panjabi    |
|  115 | SOHAIL   | QUALITY    |  50000 | 2540 |     40 |     60 | electric   | tamil_nadu |
|  115 | SOHAIL   | QUALITY    |  50000 | 2540 |     40 |     50 | it         | mp         |
|  115 | SOHAIL   | QUALITY    |  50000 | 2540 |     40 |     40 | entc       | chennai    |
|  115 | SOHAIL   | QUALITY    |  50000 | 2540 |     40 |     30 | civil      | banglore   |
|  115 | SOHAIL   | QUALITY    |  50000 | 2540 |     40 |     20 | computer   | pune       |
|  115 | SOHAIL   | QUALITY    |  50000 | 2540 |     40 |     20 | computer   | pune       |
|  115 | SOHAIL   | QUALITY    |  50000 | 2540 |     40 |     10 | mechanical | mumbai     |
|  115 | SOHAIL   | QUALITY    |  50000 | 2540 |     40 |     10 | mechanical | mumbai     |
|  116 | SURAJ    | OPERATIONS |  83000 | 2700 |     40 |     90 | art        | rajasthan  |
|  116 | SURAJ    | OPERATIONS |  83000 | 2700 |     40 |     80 | education  | karnataka  |
|  116 | SURAJ    | OPERATIONS |  83000 | 2700 |     40 |     70 | chemical   | panjabi    |
|  116 | SURAJ    | OPERATIONS |  83000 | 2700 |     40 |     60 | electric   | tamil_nadu |
|  116 | SURAJ    | OPERATIONS |  83000 | 2700 |     40 |     50 | it         | mp         |
|  116 | SURAJ    | OPERATIONS |  83000 | 2700 |     40 |     40 | entc       | chennai    |
|  116 | SURAJ    | OPERATIONS |  83000 | 2700 |     40 |     30 | civil      | banglore   |
|  116 | SURAJ    | OPERATIONS |  83000 | 2700 |     40 |     20 | computer   | pune       |
|  116 | SURAJ    | OPERATIONS |  83000 | 2700 |     40 |     20 | computer   | pune       |
|  116 | SURAJ    | OPERATIONS |  83000 | 2700 |     40 |     10 | mechanical | mumbai     |
|  116 | SURAJ    | OPERATIONS |  83000 | 2700 |     40 |     10 | mechanical | mumbai     |
|  117 | GILL     | SALES      |  34000 | NULL |     50 |     90 | art        | rajasthan  |
|  117 | GILL     | SALES      |  34000 | NULL |     50 |     80 | education  | karnataka  |
|  117 | GILL     | SALES      |  34000 | NULL |     50 |     70 | chemical   | panjabi    |
|  117 | GILL     | SALES      |  34000 | NULL |     50 |     60 | electric   | tamil_nadu |
|  117 | GILL     | SALES      |  34000 | NULL |     50 |     50 | it         | mp         |
|  117 | GILL     | SALES      |  34000 | NULL |     50 |     40 | entc       | chennai    |
|  117 | GILL     | SALES      |  34000 | NULL |     50 |     30 | civil      | banglore   |
|  117 | GILL     | SALES      |  34000 | NULL |     50 |     20 | computer   | pune       |
|  117 | GILL     | SALES      |  34000 | NULL |     50 |     20 | computer   | pune       |
|  117 | GILL     | SALES      |  34000 | NULL |     50 |     10 | mechanical | mumbai     |
|  117 | GILL     | SALES      |  34000 | NULL |     50 |     10 | mechanical | mumbai     |
|  118 | SAURABH  | OPERATIONS |  41200 |    0 |     50 |     90 | art        | rajasthan  |
|  118 | SAURABH  | OPERATIONS |  41200 |    0 |     50 |     80 | education  | karnataka  |
|  118 | SAURABH  | OPERATIONS |  41200 |    0 |     50 |     70 | chemical   | panjabi    |
|  118 | SAURABH  | OPERATIONS |  41200 |    0 |     50 |     60 | electric   | tamil_nadu |
|  118 | SAURABH  | OPERATIONS |  41200 |    0 |     50 |     50 | it         | mp         |
|  118 | SAURABH  | OPERATIONS |  41200 |    0 |     50 |     40 | entc       | chennai    |
|  118 | SAURABH  | OPERATIONS |  41200 |    0 |     50 |     30 | civil      | banglore   |
|  118 | SAURABH  | OPERATIONS |  41200 |    0 |     50 |     20 | computer   | pune       |
|  118 | SAURABH  | OPERATIONS |  41200 |    0 |     50 |     20 | computer   | pune       |
|  118 | SAURABH  | OPERATIONS |  41200 |    0 |     50 |     10 | mechanical | mumbai     |
|  118 | SAURABH  | OPERATIONS |  41200 |    0 |     50 |     10 | mechanical | mumbai     |
|  119 | ASHISH   | MANAGER    |  53470 | 3700 |     60 |     90 | art        | rajasthan  |
|  119 | ASHISH   | MANAGER    |  53470 | 3700 |     60 |     80 | education  | karnataka  |
|  119 | ASHISH   | MANAGER    |  53470 | 3700 |     60 |     70 | chemical   | panjabi    |
|  119 | ASHISH   | MANAGER    |  53470 | 3700 |     60 |     60 | electric   | tamil_nadu |
|  119 | ASHISH   | MANAGER    |  53470 | 3700 |     60 |     50 | it         | mp         |
|  119 | ASHISH   | MANAGER    |  53470 | 3700 |     60 |     40 | entc       | chennai    |
|  119 | ASHISH   | MANAGER    |  53470 | 3700 |     60 |     30 | civil      | banglore   |
|  119 | ASHISH   | MANAGER    |  53470 | 3700 |     60 |     20 | computer   | pune       |
|  119 | ASHISH   | MANAGER    |  53470 | 3700 |     60 |     20 | computer   | pune       |
|  119 | ASHISH   | MANAGER    |  53470 | 3700 |     60 |     10 | mechanical | mumbai     |
|  119 | ASHISH   | MANAGER    |  53470 | 3700 |     60 |     10 | mechanical | mumbai     |
+------+----------+------------+--------+------+--------+--------+------------+------------+
220 rows in set (0.00 sec)

select * from ed_record e, dept d where e.deptno = d. deptno;
+------+----------+------------+--------+------+--------+--------+------------+------------+
| ID   | NAME     | JOB        | SALARY | COMM | DEPTNO | deptno | dname      | loc        |
+------+----------+------------+--------+------+--------+--------+------------+------------+
|  101 | SURESH   | MANAGER    | 100000 | 5000 |     20 |     20 | computer   | pune       |
|  101 | SURESH   | MANAGER    | 100000 | 5000 |     20 |     20 | computer   | pune       |
|  102 | ROHIT    | SALES      | 100000 | 5000 |     20 |     20 | computer   | pune       |
|  102 | ROHIT    | SALES      | 100000 | 5000 |     20 |     20 | computer   | pune       |
|  103 | SUNITA   | QUALITY    |  70000 | 3000 |     20 |     20 | computer   | pune       |
|  103 | SUNITA   | QUALITY    |  70000 | 3000 |     20 |     20 | computer   | pune       |
|  104 | GAURI    | OPERATIONS |  80000 | 3500 |     20 |     20 | computer   | pune       |
|  104 | GAURI    | OPERATIONS |  80000 | 3500 |     20 |     20 | computer   | pune       |
|  105 | SHRUTIKA | MANAGER    | 150000 | 4500 |     10 |     10 | mechanical | mumbai     |
|  105 | SHRUTIKA | MANAGER    | 150000 | 4500 |     10 |     10 | mechanical | mumbai     |
|  106 | SAHIL    | SALES      | 130000 | 3500 |     10 |     10 | mechanical | mumbai     |
|  106 | SAHIL    | SALES      | 130000 | 3500 |     10 |     10 | mechanical | mumbai     |
|  107 | SHALAKA  | QUALITY    |  64000 | 3500 |     10 |     10 | mechanical | mumbai     |
|  107 | SHALAKA  | QUALITY    |  64000 | 3500 |     10 |     10 | mechanical | mumbai     |
|  108 | MOHSIN   | OPERATIONS |  55000 | 2500 |     10 |     10 | mechanical | mumbai     |
|  108 | MOHSIN   | OPERATIONS |  55000 | 2500 |     10 |     10 | mechanical | mumbai     |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     30 | civil      | banglore   |
|  109 | JEET     | MANAGER    | 155000 | 4500 |     30 |     30 | civil      | banglore   |
|  110 | YOGESH   | SALES      |  90000 | 3500 |     30 |     30 | civil      | banglore   |
|  111 | SMRUTI   | QUALITY    |  55000 | 2500 |     30 |     30 | civil      | banglore   |
|  112 | PAYAL    | OPERATIONS |  72000 | 1500 |     30 |     30 | civil      | banglore   |
|  113 | SWAPNIL  | MANAGER    |  97000 | 3200 |     40 |     40 | entc       | chennai    |
|  114 | SHIRIN   | SALES      |  50000 | 1500 |     40 |     40 | entc       | chennai    |
|  115 | SOHAIL   | QUALITY    |  50000 | 2540 |     40 |     40 | entc       | chennai    |
|  116 | SURAJ    | OPERATIONS |  83000 | 2700 |     40 |     40 | entc       | chennai    |
|  117 | GILL     | SALES      |  34000 | NULL |     50 |     50 | it         | mp         |
|  118 | SAURABH  | OPERATIONS |  41200 |    0 |     50 |     50 | it         | mp         |
|  119 | ASHISH   | MANAGER    |  53470 | 3700 |     60 |     60 | electric   | tamil_nadu |
+------+----------+------------+--------+------+--------+--------+------------+------------+
28 rows in set (0.01 sec)

select name from ed_record;
+----------+
| name     |
+----------+
| SURESH   |
| ROHIT    |
| SUNITA   |
| GAURI    |
| SHRUTIKA |
| SAHIL    |
| SHALAKA  |
| MOHSIN   |
| JEET     |
| JEET     |
| YOGESH   |
| SMRUTI   |
| PAYAL    |
| SWAPNIL  |
| SHIRIN   |
| SOHAIL   |
| SURAJ    |
| GILL     |
| SAURABH  |
| ASHISH   |
+----------+
20 rows in set (0.00 sec)

select name from ed_record e, dept d where e.deptno = d. deptno;
+----------+
| name     |
+----------+
| SURESH   |
| SURESH   |
| ROHIT    |
| ROHIT    |
| SUNITA   |
| SUNITA   |
| GAURI    |
| GAURI    |
| SHRUTIKA |
| SHRUTIKA |
| SAHIL    |
| SAHIL    |
| SHALAKA  |
| SHALAKA  |
| MOHSIN   |
| MOHSIN   |
| JEET     |
| JEET     |
| YOGESH   |
| SMRUTI   |
| PAYAL    |
| SWAPNIL  |
| SHIRIN   |
| SOHAIL   |
| SURAJ    |
| GILL     |
| SAURABH  |
| ASHISH   |
+----------+
28 rows in set (0.00 sec)

select name, dname from ed_record e, dept d where e.deptno = d. deptno;
+----------+------------+
| name     | dname      |
+----------+------------+
| SURESH   | computer   |
| SURESH   | computer   |
| ROHIT    | computer   |
| ROHIT    | computer   |
| SUNITA   | computer   |
| SUNITA   | computer   |
| GAURI    | computer   |
| GAURI    | computer   |
| SHRUTIKA | mechanical |
| SHRUTIKA | mechanical |
| SAHIL    | mechanical |
| SAHIL    | mechanical |
| SHALAKA  | mechanical |
| SHALAKA  | mechanical |
| MOHSIN   | mechanical |
| MOHSIN   | mechanical |
| JEET     | civil      |
| JEET     | civil      |
| YOGESH   | civil      |
| SMRUTI   | civil      |
| PAYAL    | civil      |
| SWAPNIL  | entc       |
| SHIRIN   | entc       |
| SOHAIL   | entc       |
| SURAJ    | entc       |
| GILL     | it         |
| SAURABH  | it         |
| ASHISH   | electric   |
+----------+------------+
28 rows in set (0.00 sec)

select name, dname from ed_record e, dept d where e.deptno = d.deptno;
+----------+------------+
| name     | dname      |
+----------+------------+
| SURESH   | computer   |
| SURESH   | computer   |
| ROHIT    | computer   |
| ROHIT    | computer   |
| SUNITA   | computer   |
| SUNITA   | computer   |
| GAURI    | computer   |
| GAURI    | computer   |
| SHRUTIKA | mechanical |
| SHRUTIKA | mechanical |
| SAHIL    | mechanical |
| SAHIL    | mechanical |
| SHALAKA  | mechanical |
| SHALAKA  | mechanical |
| MOHSIN   | mechanical |
| MOHSIN   | mechanical |
| JEET     | civil      |
| JEET     | civil      |
| YOGESH   | civil      |
| SMRUTI   | civil      |
| PAYAL    | civil      |
| SWAPNIL  | entc       |
| SHIRIN   | entc       |
| SOHAIL   | entc       |
| SURAJ    | entc       |
| GILL     | it         |
| SAURABH  | it         |
| ASHISH   | electric   |
+----------+------------+
28 rows in set (0.00 sec)

select loc, dname from ed_record e, dept d where e.deptno = d.deptno;
+------------+------------+
| loc        | dname      |
+------------+------------+
| pune       | computer   |
| pune       | computer   |
| pune       | computer   |
| pune       | computer   |
| pune       | computer   |
| pune       | computer   |
| pune       | computer   |
| pune       | computer   |
| mumbai     | mechanical |
| mumbai     | mechanical |
| mumbai     | mechanical |
| mumbai     | mechanical |
| mumbai     | mechanical |
| mumbai     | mechanical |
| mumbai     | mechanical |
| mumbai     | mechanical |
| banglore   | civil      |
| banglore   | civil      |
| banglore   | civil      |
| banglore   | civil      |
| banglore   | civil      |
| chennai    | entc       |
| chennai    | entc       |
| chennai    | entc       |
| chennai    | entc       |
| mp         | it         |
| mp         | it         |
| tamil_nadu | electric   |
+------------+------------+
28 rows in set (0.00 sec)

select name, loc from ed_record e, dept d where e.deptno = d.deptno;
+----------+------------+
| name     | loc        |
+----------+------------+
| SURESH   | pune       |
| SURESH   | pune       |
| ROHIT    | pune       |
| ROHIT    | pune       |
| SUNITA   | pune       |
| SUNITA   | pune       |
| GAURI    | pune       |
| GAURI    | pune       |
| SHRUTIKA | mumbai     |
| SHRUTIKA | mumbai     |
| SAHIL    | mumbai     |
| SAHIL    | mumbai     |
| SHALAKA  | mumbai     |
| SHALAKA  | mumbai     |
| MOHSIN   | mumbai     |
| MOHSIN   | mumbai     |
| JEET     | banglore   |
| JEET     | banglore   |
| YOGESH   | banglore   |
| SMRUTI   | banglore   |
| PAYAL    | banglore   |
| SWAPNIL  | chennai    |
| SHIRIN   | chennai    |
| SOHAIL   | chennai    |
| SURAJ    | chennai    |
| GILL     | mp         |
| SAURABH  | mp         |
| ASHISH   | tamil_nadu |
+----------+------------+
28 rows in set (0.00 sec)

select name, dname from ed_record e, dept d where e.deptno = d.deptno;
+----------+------------+
| name     | dname      |
+----------+------------+
| SURESH   | computer   |
| SURESH   | computer   |
| ROHIT    | computer   |
| ROHIT    | computer   |
| SUNITA   | computer   |
| SUNITA   | computer   |
| GAURI    | computer   |
| GAURI    | computer   |
| SHRUTIKA | mechanical |
| SHRUTIKA | mechanical |
| SAHIL    | mechanical |
| SAHIL    | mechanical |
| SHALAKA  | mechanical |
| SHALAKA  | mechanical |
| MOHSIN   | mechanical |
| MOHSIN   | mechanical |
| JEET     | civil      |
| JEET     | civil      |
| YOGESH   | civil      |
| SMRUTI   | civil      |
| PAYAL    | civil      |
| SWAPNIL  | entc       |
| SHIRIN   | entc       |
| SOHAIL   | entc       |
| SURAJ    | entc       |
| GILL     | it         |
| SAURABH  | it         |
| ASHISH   | electric   |
+----------+------------+
28 rows in set (0.00 sec)

select name, loc from ed_record e, dept d where e.deptno = d.deptno;
+----------+------------+
| name     | loc        |
+----------+------------+
| SURESH   | pune       |
| SURESH   | pune       |
| ROHIT    | pune       |
| ROHIT    | pune       |
| SUNITA   | pune       |
| SUNITA   | pune       |
| GAURI    | pune       |
| GAURI    | pune       |
| SHRUTIKA | mumbai     |
| SHRUTIKA | mumbai     |
| SAHIL    | mumbai     |
| SAHIL    | mumbai     |
| SHALAKA  | mumbai     |
| SHALAKA  | mumbai     |
| MOHSIN   | mumbai     |
| MOHSIN   | mumbai     |
| JEET     | banglore   |
| JEET     | banglore   |
| YOGESH   | banglore   |
| SMRUTI   | banglore   |
| PAYAL    | banglore   |
| SWAPNIL  | chennai    |
| SHIRIN   | chennai    |
| SOHAIL   | chennai    |
| SURAJ    | chennai    |
| GILL     | mp         |
| SAURABH  | mp         |
| ASHISH   | tamil_nadu |
+----------+------------+
28 rows in set (0.00 sec)

select name, dname from ed_record e, dept d where e.deptno = d.deptno;
+----------+------------+
| name     | dname      |
+----------+------------+
| SURESH   | computer   |
| SURESH   | computer   |
| ROHIT    | computer   |
| ROHIT    | computer   |
| SUNITA   | computer   |
| SUNITA   | computer   |
| GAURI    | computer   |
| GAURI    | computer   |
| SHRUTIKA | mechanical |
| SHRUTIKA | mechanical |
| SAHIL    | mechanical |
| SAHIL    | mechanical |
| SHALAKA  | mechanical |
| SHALAKA  | mechanical |
| MOHSIN   | mechanical |
| MOHSIN   | mechanical |
| JEET     | civil      |
| JEET     | civil      |
| YOGESH   | civil      |
| SMRUTI   | civil      |
| PAYAL    | civil      |
| SWAPNIL  | entc       |
| SHIRIN   | entc       |
| SOHAIL   | entc       |
| SURAJ    | entc       |
| GILL     | it         |
| SAURABH  | it         |
| ASHISH   | electric   |
+----------+------------+
28 rows in set (0.00 sec)

select name, dname from ed_record e, dept d where e.deptno = d.deptno and dname = "entc" ;
+---------+-------+
| name    | dname |
+---------+-------+
| SWAPNIL | entc  |
| SHIRIN  | entc  |
| SOHAIL  | entc  |
| SURAJ   | entc  |
+---------+-------+
4 rows in set (0.00 sec)

select name, salary from ed_record e, dept d where e.deptno = d.deptno and loc = "pune";
+--------+--------+
| name   | salary |
+--------+--------+
| SURESH | 100000 |
| SURESH | 100000 |
| ROHIT  | 100000 |
| ROHIT  | 100000 |
| SUNITA |  70000 |
| SUNITA |  70000 |
| GAURI  |  80000 |
| GAURI  |  80000 |
+--------+--------+
8 rows in set (0.00 sec)

select name, salary from ed_record e, dept d where e.deptno = d.deptno and loc = "pune";
+--------+--------+
| name   | salary |
+--------+--------+
| SURESH | 100000 |
| SURESH | 100000 |
| ROHIT  | 100000 |
| ROHIT  | 100000 |
| SUNITA |  70000 |
| SUNITA |  70000 |
| GAURI  |  80000 |
| GAURI  |  80000 |
+--------+--------+
8 rows in set (0.00 sec)

select name, salary from ed_record e, dept d where e.deptno = d.deptno and loc = "pune" or "banglore" ;
+--------+--------+
| name   | salary |
+--------+--------+
| SURESH | 100000 |
| SURESH | 100000 |
| ROHIT  | 100000 |
| ROHIT  | 100000 |
| SUNITA |  70000 |
| SUNITA |  70000 |
| GAURI  |  80000 |
| GAURI  |  80000 |
+--------+--------+
8 rows in set, 1 warning (0.00 sec)

select name, salary from ed_record e, dept d where e.deptno = d.deptno and loc = "pune" or "banglore" or "chennai" ;
+--------+--------+
| name   | salary |
+--------+--------+
| SURESH | 100000 |
| SURESH | 100000 |
| ROHIT  | 100000 |
| ROHIT  | 100000 |
| SUNITA |  70000 |
| SUNITA |  70000 |
| GAURI  |  80000 |
| GAURI  |  80000 |
+--------+--------+
8 rows in set, 2 warnings (0.00 sec)

select name, salary from ed_record e, dept d where e.deptno = d.deptno and loc in ("pune", "banglore", "chennai") ;
+---------+--------+
| name    | salary |
+---------+--------+
| SURESH  | 100000 |
| SURESH  | 100000 |
| ROHIT   | 100000 |
| ROHIT   | 100000 |
| SUNITA  |  70000 |
| SUNITA  |  70000 |
| GAURI   |  80000 |
| GAURI   |  80000 |
| JEET    | 155000 |
| JEET    | 155000 |
| YOGESH  |  90000 |
| SMRUTI  |  55000 |
| PAYAL   |  72000 |
| SWAPNIL |  97000 |
| SHIRIN  |  50000 |
| SOHAIL  |  50000 |
| SURAJ   |  83000 |
+---------+--------+
17 rows in set (0.00 sec)

select name, salary from ed_record e, dept d where e.deptno = d.deptno and loc in ("pune", "banglore", "chennai") ;
+---------+--------+
| name    | salary |
+---------+--------+
| SURESH  | 100000 |
| SURESH  | 100000 |
| ROHIT   | 100000 |
| ROHIT   | 100000 |
| SUNITA  |  70000 |
| SUNITA  |  70000 |
| GAURI   |  80000 |
| GAURI   |  80000 |
| JEET    | 155000 |
| JEET    | 155000 |
| YOGESH  |  90000 |
| SMRUTI  |  55000 |
| PAYAL   |  72000 |
| SWAPNIL |  97000 |
| SHIRIN  |  50000 |
| SOHAIL  |  50000 |
| SURAJ   |  83000 |
+---------+--------+
17 rows in set (0.00 sec)

select name, salary from ed_record e, dept d where e.deptno = d.deptno and dname like "c%";
+--------+--------+
| name   | salary |
+--------+--------+
| SURESH | 100000 |
| SURESH | 100000 |
| ROHIT  | 100000 |
| ROHIT  | 100000 |
| SUNITA |  70000 |
| SUNITA |  70000 |
| GAURI  |  80000 |
| GAURI  |  80000 |
| JEET   | 155000 |
| JEET   | 155000 |
| YOGESH |  90000 |
| SMRUTI |  55000 |
| PAYAL  |  72000 |
+--------+--------+
13 rows in set (0.00 sec)

select name, job, dname from ed_record e, dept d where e.deptno = d.deptno and job = "quality";
+---------+---------+------------+
| name    | job     | dname      |
+---------+---------+------------+
| SHALAKA | QUALITY | mechanical |
| SHALAKA | QUALITY | mechanical |
| SUNITA  | QUALITY | computer   |
| SUNITA  | QUALITY | computer   |
| SMRUTI  | QUALITY | civil      |
| SOHAIL  | QUALITY | entc       |
+---------+---------+------------+
6 rows in set (0.00 sec)

select name, job, dname, loc from ed_record e, dept d where e.deptno = d.deptno and job = "quality";
+---------+---------+------------+----------+
| name    | job     | dname      | loc      |
+---------+---------+------------+----------+
| SHALAKA | QUALITY | mechanical | mumbai   |
| SHALAKA | QUALITY | mechanical | mumbai   |
| SUNITA  | QUALITY | computer   | pune     |
| SUNITA  | QUALITY | computer   | pune     |
| SMRUTI  | QUALITY | civil      | banglore |
| SOHAIL  | QUALITY | entc       | chennai  |
+---------+---------+------------+----------+
6 rows in set (0.00 sec)

select * from ed_record e, dept d where e.deptno = d.deptno and dname = "computer";
+------+--------+------------+--------+------+--------+--------+----------+------+
| ID   | NAME   | JOB        | SALARY | COMM | DEPTNO | deptno | dname    | loc  |
+------+--------+------------+--------+------+--------+--------+----------+------+
|  101 | SURESH | MANAGER    | 100000 | 5000 |     20 |     20 | computer | pune |
|  101 | SURESH | MANAGER    | 100000 | 5000 |     20 |     20 | computer | pune |
|  102 | ROHIT  | SALES      | 100000 | 5000 |     20 |     20 | computer | pune |
|  102 | ROHIT  | SALES      | 100000 | 5000 |     20 |     20 | computer | pune |
|  103 | SUNITA | QUALITY    |  70000 | 3000 |     20 |     20 | computer | pune |
|  103 | SUNITA | QUALITY    |  70000 | 3000 |     20 |     20 | computer | pune |
|  104 | GAURI  | OPERATIONS |  80000 | 3500 |     20 |     20 | computer | pune |
|  104 | GAURI  | OPERATIONS |  80000 | 3500 |     20 |     20 | computer | pune |
+------+--------+------------+--------+------+--------+--------+----------+------+
8 rows in set (0.00 sec)

select * from ed_record e, dept d where e.deptno = d.deptno and dname = "computer" and job = "manager";
+------+--------+---------+--------+------+--------+--------+----------+------+
| ID   | NAME   | JOB     | SALARY | COMM | DEPTNO | deptno | dname    | loc  |
+------+--------+---------+--------+------+--------+--------+----------+------+
|  101 | SURESH | MANAGER | 100000 | 5000 |     20 |     20 | computer | pune |
|  101 | SURESH | MANAGER | 100000 | 5000 |     20 |     20 | computer | pune |
+------+--------+---------+--------+------+--------+--------+----------+------+
2 rows in set (0.00 sec)

select * from ed_record e, dept d where e.deptno = d.deptno and job like"Q%" and dname like "c%";
+------+--------+---------+--------+------+--------+--------+----------+----------+
| ID   | NAME   | JOB     | SALARY | COMM | DEPTNO | deptno | dname    | loc      |
+------+--------+---------+--------+------+--------+--------+----------+----------+
|  103 | SUNITA | QUALITY |  70000 | 3000 |     20 |     20 | computer | pune     |
|  103 | SUNITA | QUALITY |  70000 | 3000 |     20 |     20 | computer | pune     |
|  111 | SMRUTI | QUALITY |  55000 | 2500 |     30 |     30 | civil    | banglore |
+------+--------+---------+--------+------+--------+--------+----------+----------+
3 rows in set (0.00 sec)

select name ,job, dname from ed_record e, dept d where e.deptno = d.deptno and job like"Q%" and dname like "c%";
+--------+---------+----------+
| name   | job     | dname    |
+--------+---------+----------+
| SUNITA | QUALITY | computer |
| SUNITA | QUALITY | computer |
| SMRUTI | QUALITY | civil    |
+--------+---------+----------+
3 rows in set (0.00 sec)

select name, loc from ed_record e, dept d where e.deptno = d.deptno;
+----------+------------+
| name     | loc        |
+----------+------------+
| SURESH   | pune       |
| SURESH   | pune       |
| ROHIT    | pune       |
| ROHIT    | pune       |
| SUNITA   | pune       |
| SUNITA   | pune       |
| GAURI    | pune       |
| GAURI    | pune       |
| SHRUTIKA | mumbai     |
| SHRUTIKA | mumbai     |
| SAHIL    | mumbai     |
| SAHIL    | mumbai     |
| SHALAKA  | mumbai     |
| SHALAKA  | mumbai     |
| MOHSIN   | mumbai     |
| MOHSIN   | mumbai     |
| JEET     | banglore   |
| JEET     | banglore   |
| YOGESH   | banglore   |
| SMRUTI   | banglore   |
| PAYAL    | banglore   |
| SWAPNIL  | chennai    |
| SHIRIN   | chennai    |
| SOHAIL   | chennai    |
| SURAJ    | chennai    |
| GILL     | mp         |
| SAURABH  | mp         |
| ASHISH   | tamil_nadu |
+----------+------------+
28 rows in set (0.00 sec)

select * from ed_record e, dept d where e.deptno = d.deptno and dname = "computer";
+------+--------+------------+--------+------+--------+--------+----------+------+
| ID   | NAME   | JOB        | SALARY | COMM | DEPTNO | deptno | dname    | loc  |
+------+--------+------------+--------+------+--------+--------+----------+------+
|  101 | SURESH | MANAGER    | 100000 | 5000 |     20 |     20 | computer | pune |
|  101 | SURESH | MANAGER    | 100000 | 5000 |     20 |     20 | computer | pune |
|  102 | ROHIT  | SALES      | 100000 | 5000 |     20 |     20 | computer | pune |
|  102 | ROHIT  | SALES      | 100000 | 5000 |     20 |     20 | computer | pune |
|  103 | SUNITA | QUALITY    |  70000 | 3000 |     20 |     20 | computer | pune |
|  103 | SUNITA | QUALITY    |  70000 | 3000 |     20 |     20 | computer | pune |
|  104 | GAURI  | OPERATIONS |  80000 | 3500 |     20 |     20 | computer | pune |
|  104 | GAURI  | OPERATIONS |  80000 | 3500 |     20 |     20 | computer | pune |
+------+--------+------------+--------+------+--------+--------+----------+------+
8 rows in set (0.00 sec)

select * from ed_record where deptno in (select deptno from dept where dname = "computer");
+------+--------+------------+--------+------+--------+
| ID   | NAME   | JOB        | SALARY | COMM | DEPTNO |
+------+--------+------------+--------+------+--------+
|  101 | SURESH | MANAGER    | 100000 | 5000 |     20 |
|  102 | ROHIT  | SALES      | 100000 | 5000 |     20 |
|  103 | SUNITA | QUALITY    |  70000 | 3000 |     20 |
|  104 | GAURI  | OPERATIONS |  80000 | 3500 |     20 |
+------+--------+------------+--------+------+--------+
4 rows in set (0.00 sec)

select name, comm, dname from ed_record e, dept d where e.deptno = d.deptno and comm is null;
+------+------+-------+
| name | comm | dname |
+------+------+-------+
| GILL | NULL | it    |
+------+------+-------+
1 row in set (0.00 sec)

select name, comm, dname from ed_record e, dept d where e.deptno = d.deptno and comm is not null;
+----------+------+------------+
| name     | comm | dname      |
+----------+------+------------+
| SURESH   | 5000 | computer   |
| SURESH   | 5000 | computer   |
| ROHIT    | 5000 | computer   |
| ROHIT    | 5000 | computer   |
| SUNITA   | 3000 | computer   |
| SUNITA   | 3000 | computer   |
| GAURI    | 3500 | computer   |
| GAURI    | 3500 | computer   |
| SHRUTIKA | 4500 | mechanical |
| SHRUTIKA | 4500 | mechanical |
| SAHIL    | 3500 | mechanical |
| SAHIL    | 3500 | mechanical |
| SHALAKA  | 3500 | mechanical |
| SHALAKA  | 3500 | mechanical |
| MOHSIN   | 2500 | mechanical |
| MOHSIN   | 2500 | mechanical |
| JEET     | 4500 | civil      |
| JEET     | 4500 | civil      |
| YOGESH   | 3500 | civil      |
| SMRUTI   | 2500 | civil      |
| PAYAL    | 1500 | civil      |
| SWAPNIL  | 3200 | entc       |
| SHIRIN   | 1500 | entc       |
| SOHAIL   | 2540 | entc       |
| SURAJ    | 2700 | entc       |
| SAURABH  |    0 | it         |
| ASHISH   | 3700 | electric   |
+----------+------+------------+
27 rows in set (0.00 sec)

select name, comm, dname from ed_record e, dept d where e.deptno = d.deptno and comm > 0 ;
+----------+------+------------+
| name     | comm | dname      |
+----------+------+------------+
| MOHSIN   | 2500 | mechanical |
| SHALAKA  | 3500 | mechanical |
| SAHIL    | 3500 | mechanical |
| SHRUTIKA | 4500 | mechanical |
| MOHSIN   | 2500 | mechanical |
| SHALAKA  | 3500 | mechanical |
| SAHIL    | 3500 | mechanical |
| SHRUTIKA | 4500 | mechanical |
| GAURI    | 3500 | computer   |
| SUNITA   | 3000 | computer   |
| ROHIT    | 5000 | computer   |
| SURESH   | 5000 | computer   |
| GAURI    | 3500 | computer   |
| SUNITA   | 3000 | computer   |
| ROHIT    | 5000 | computer   |
| SURESH   | 5000 | computer   |
| PAYAL    | 1500 | civil      |
| SMRUTI   | 2500 | civil      |
| YOGESH   | 3500 | civil      |
| JEET     | 4500 | civil      |
| JEET     | 4500 | civil      |
| SURAJ    | 2700 | entc       |
| SOHAIL   | 2540 | entc       |
| SHIRIN   | 1500 | entc       |
| SWAPNIL  | 3200 | entc       |
| ASHISH   | 3700 | electric   |
+----------+------+------------+
26 rows in set (0.00 sec)

select name, comm, dname from ed_record e, dept d where e.deptno = d.deptno and comm > 0 and e.deptno in (30,50,60,70);
+--------+------+----------+
| name   | comm | dname    |
+--------+------+----------+
| PAYAL  | 1500 | civil    |
| SMRUTI | 2500 | civil    |
| YOGESH | 3500 | civil    |
| JEET   | 4500 | civil    |
| JEET   | 4500 | civil    |
| ASHISH | 3700 | electric |
+--------+------+----------+
6 rows in set (0.00 sec)

select name, dname from ed_record left join dept on ed_record.deptno = dept.deptno;
+----------+------------+
| name     | dname      |
+----------+------------+
| SURESH   | computer   |
| SURESH   | computer   |
| ROHIT    | computer   |
| ROHIT    | computer   |
| SUNITA   | computer   |
| SUNITA   | computer   |
| GAURI    | computer   |
| GAURI    | computer   |
| SHRUTIKA | mechanical |
| SHRUTIKA | mechanical |
| SAHIL    | mechanical |
| SAHIL    | mechanical |
| SHALAKA  | mechanical |
| SHALAKA  | mechanical |
| MOHSIN   | mechanical |
| MOHSIN   | mechanical |
| JEET     | civil      |
| JEET     | civil      |
| YOGESH   | civil      |
| SMRUTI   | civil      |
| PAYAL    | civil      |
| SWAPNIL  | entc       |
| SHIRIN   | entc       |
| SOHAIL   | entc       |
| SURAJ    | entc       |
| GILL     | it         |
| SAURABH  | it         |
| ASHISH   | electric   |
+----------+------------+
28 rows in set (0.00 sec)

select name, dname from ed_record right join dept on ed_record.deptno = dept.deptno;
+----------+------------+
| name     | dname      |
+----------+------------+
| MOHSIN   | mechanical |
| SHALAKA  | mechanical |
| SAHIL    | mechanical |
| SHRUTIKA | mechanical |
| MOHSIN   | mechanical |
| SHALAKA  | mechanical |
| SAHIL    | mechanical |
| SHRUTIKA | mechanical |
| GAURI    | computer   |
| SUNITA   | computer   |
| ROHIT    | computer   |
| SURESH   | computer   |
| GAURI    | computer   |
| SUNITA   | computer   |
| ROHIT    | computer   |
| SURESH   | computer   |
| PAYAL    | civil      |
| SMRUTI   | civil      |
| YOGESH   | civil      |
| JEET     | civil      |
| JEET     | civil      |
| SURAJ    | entc       |
| SOHAIL   | entc       |
| SHIRIN   | entc       |
| SWAPNIL  | entc       |
| SAURABH  | it         |
| GILL     | it         |
| ASHISH   | electric   |
| NULL     | chemical   |
| NULL     | education  |
| NULL     | art        |
+----------+------------+
31 rows in set (0.00 sec)

select * from record1;
+------+--------+----------+
| id   | name   | loc      |
+------+--------+----------+
|    1 | Rohan  | pune     |
|    2 | Sunil  | Mumbai   |
|    3 | Anil   | channai  |
|    4 | Sujato | banglore |
|    5 | Manish | Pune     |
|    6 | Ruchi  | Channai  |
+------+--------+----------+
6 rows in set (0.00 sec)

select * from proxy;
+------+--------+----------+
| id   | name   | loc      |
+------+--------+----------+
|    1 | Rohan  | pune     |
|    2 | Sunil  | Mumbai   |
|    3 | Anil   | channai  |
|    4 | Sujato | banglore |
|    5 | Manish | Pune     |
|    6 | Ruchi  | Channai  |
+------+--------+----------+
6 rows in set (0.01 sec)

select * from proxy;
+------+---------+----------+
| id   | name    | loc      |
+------+---------+----------+
|    1 | Rohan   | pune     |
|    2 | Sunil   | Mumbai   |
|    3 | Anil    | channai  |
|    4 | Sujato  | banglore |
|    5 | Manish  | Pune     |
|    6 | Ruchi   | Channai  |
|    1 | Paratik | Pune     |
+------+---------+----------+
7 rows in set (0.00 sec)    

select * from record1;
+------+---------+----------+
| id   | name    | loc      |
+------+---------+----------+
|    1 | Rohan   | pune     |
|    2 | Sunil   | Mumbai   |
|    3 | Anil    | channai  |
|    4 | Sujato  | banglore |
|    5 | Manish  | Pune     |
|    6 | Ruchi   | Channai  |
|    1 | Paratik | Pune     |
+------+---------+----------+
7 rows in set (0.00 sec)

select * from record1;
+------+---------+----------+
| id   | name    | loc      |
+------+---------+----------+
|    1 | Rohan   | pune     |
|    2 | Sunil   | Mumbai   |
|    3 | Anil    | channai  |
|    4 | Sujato  | banglore |
|    5 | Manish  | Pune     |
|    6 | Ruchi   | Channai  |
|    1 | Paratik | Pune     |
+------+---------+----------+
7 rows in set (0.00 sec)

select * from proxy;
+------+---------+
| id   | name    |
+------+---------+
|    1 | Rohan   |
|    2 | Sunil   |
|    3 | Anil    |
|    4 | Sujato  |
|    5 | Manish  |
|    6 | Ruchi   |
|    1 | Paratik |
+------+---------+
7 rows in set (0.00 sec)

select * from record1 union select * from record2;
+------+---------+----------+
| id   | name    | loc      |
+------+---------+----------+
|    1 | Rohan   | pune     |
|    2 | Sunil   | Mumbai   |
|    3 | Anil    | channai  |
|    4 | Sujato  | banglore |
|    5 | Manish  | Pune     |
|    6 | Ruchi   | Channai  |
|    1 | Paratik | Pune     |
|    7 | kiran   | Delhi    |
|    9 | Rakesh  | Up       |
|    4 | Suraj   | Banglore |
|   10 | Shirin  | Mumbai   |
|   11 | Jeet    | Madras   |
+------+---------+----------+
12 rows in set (0.00 sec)

select * from record2;
+------+--------+----------+
| id   | name   | loc      |
+------+--------+----------+
|    7 | kiran  | Delhi    |
|    1 | Rohan  | Pune     |
|    9 | Rakesh | Up       |
|    3 | Anil   | Channai  |
|    4 | Suraj  | Banglore |
|   10 | Shirin | Mumbai   |
|   11 | Jeet   | Madras   |
+------+--------+----------+
7 rows in set (0.00 sec)



```
