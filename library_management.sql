-- DDL Operations:
-- Q.1. Create the above tables with appropriate data types and constraints (primary keys, foreign keys, not null, etc.).
-- drop database and tables:
drop database library_management;
drop table Books;
drop table Members;
drop table Borrowed_Books;

-- create database:
create database library_management;

-- use database:
use library_management;

-- create table:
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

-- describe table:
desc Books;
desc Members;
desc Borrowed_Books;

-- ```
-- Practice: constrain foreign key and on delete cascade
-- constraint fk1 foreign key (id) references test1(id)
-- on delete cascade
-- on delete set null
-- ```

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
-- create Borrowed_Books table:
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
-- insert values in Borrowed_Books table:
insert into Borrowed_Books
(borrow_id, book_id, member_id, borrow_date, due_date, return_date)
values
(301, 101, 201, '2024-11-01', '2024-11-15', '2024-11-14'),
(302, 102, 202, '2024-11-02', '2024-11-16', '2024-11-20'),
(303, 103, 203, '2024-11-03', '2024-11-17', '2024-11-17'),
(304, 104, 201, '2024-11-04', '2024-11-18', '2024-11-18');

-- Error Code: 1292. Incorrect date value: 'NULL' for column 'return_date' at row 3: colno-3 error: ✅
-- Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`library_management`.`borrowed_books`, CONSTRAINT `member_id_fk` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`)): colno-4 error: ✅

-- Q.4. Update the publication_year of a specific book.
-- update students set name="krishna" where id=20;
update Books set publication_year = '1970-12-12' where book_id = 101;


-- Q.5. Delete a member from the Members table.
delete from Members where member_id = 201;
-- Error Code: 1451. Cannot delete or update a parent row: a foreign key constraint fails (`library_management`.`borrowed_books`, CONSTRAINT `member_id_fk` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`))

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
```

