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






```