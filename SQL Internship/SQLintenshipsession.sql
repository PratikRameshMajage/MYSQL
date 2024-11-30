create database sqlsession;
use sqlsession;
create table Customer(
cid int primary key,
cname varchar(20) not null,
location varchar(20) default 'Pune',
age int check(age>18),
contact bigint,
dob date
);
create table product(
pid int,
pname varchar(20),
cust_id int,
constraint CProduct_FK1 foreign key(cust_id) references Customer(cid)
);
show tables;
desc customer;
desc product;
-- alter 
alter table product add price decimal(7,2);
alter table product drop column price;
alter table product modify pname char(10);
alter table product add constraint primary key(pid);



















