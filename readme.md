# mysql>
```mysql 
<!-- 18|11|2024 -->
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

<!-- 21|11|24 -->

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
```