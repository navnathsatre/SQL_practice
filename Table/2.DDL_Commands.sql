/*
DDL Commands (DR CAT) (about struture)
               DROP 
               RENAME
               CREATE
               ALTER
               TRANCATE 
*/
show databases;
use practicedb2;
show table status;

-- CREATE command
create table students(id integer);
create table if not exists students(id integer);

-- ALTER command
/*       clauses ADD
                 DROP
				 MODIFY
                 CHANGE
                 RENAME 
*/

show tables;
select * from students;

-- add new column
alter table students add column marks integer;
select * from students;

-- drop column
alter table students drop column marks;
select * from students;

alter table students add column marks int default 50;
select * from students;

alter table students drop column age;
select * from students;

-- change column name
alter table students change column sid Std_id int;
select * from students;

describe students;

-- modify data types
alter table students modify column sname varchar(30);
desc students;

-- rename table name using clause
alter table students rename to myclass;
select * from students;  -- not working
select * from myclass;

-- or

-- rename table name using command
rename table myclass to students;
select * from students;

show tables;

-- DROP table
create table mytab (id int);
show tables;
insert into mytab value(50);
insert into mytab value(60);
select * from mytab;

drop table mytab; -- droping the table
show tables;

-- TRUNCATE table
-- truncate <table name>    --> drop table and create table(delete all records)
create table mytab (id int);
show tables;
insert into mytab value(50);
insert into mytab value(60);
select * from mytab;

truncate mytab;
show tables;
select * from mytab;

drop table mytab;
select * from mytab; -- not exist
show tables;
