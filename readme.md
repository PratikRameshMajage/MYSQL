# mysql>
```sql 
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
```

<!-- Add Clause in sql -->


<!-- Add operators in sql -->

```sql
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
<!-- escape charecters (they dosen't print on terminal) = % & __ -->
```

```sql
<!-- 25|11|24 -->
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