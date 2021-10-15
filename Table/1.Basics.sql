-- Calculations

select 6+9;
select 3*789;
select null+5;
select 3=3;
select null =3;
select 3 is null;
select 3 is not null;

-- create database

show databases;
/*pre-defined databases
1. Information_schema(about mata data)
2. Performence_schema(about Memory)
3. mysql (about max connections)
4. sys (about sysstem) 
*/

create database practicedb2;
use practicedb2;

-- create tables

create table students(sid int,
                      sname char(30),
                      age int,
                      course char(30));
desc students;

insert into students values (1, 'Jon',32, 'MySQL');
insert into students values (2, 'Mary',19, 'Analytics');
select * from students;

create table patients (pid integer, name varchar(30), dob date, toa datetime);
desc patients;

insert into patients values(1,'Smith','1987-07-13','2021-06-25 11.30.00');
insert into patients values(2,'Sanju','1999-09-09','2021-06-25 20.30.00');
select*from patients;

select adddate(dob, interval 31 day) as 31_day_interval from patients;

select current_time();
select curdate();
select current_timestamp();
select current_user();
select now();

insert into patients values(3,'Sumi','1974-09-19', now());
select * from patients;



