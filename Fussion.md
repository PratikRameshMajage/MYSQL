# SQl
```sql
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


-- TODAY 27|11|24
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


