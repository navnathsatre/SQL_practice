/*
DQL Commands (read)
              SELECT 
*/
show tables;
select * from myemp;

select * from myemp limit 10;-- limit

select first_name, last_name, mgr_id from myemp limit 5;

select distinct dep_id from myemp; -- distinct

select count(distinct dep_id) from myemp;  -- count

show tables;
select * from person;
insert into person values(6,'Tom','Cruise');
select * from person;

select distinct fname from person;
select distinct lname from person;

select distinct fname, lname from person;-- distinct combinations
select distinct lname,fname from person;

select * from myemp;
select * from myemp order by last_name; -- order by
select * from myemp order by last_name desc; -- desc

select * from myemp order by hire_date;

-- operators is part of WHERE clause

select * from myemp where emp_id=100; -- where

select * from myemp where salary >= 10000; -- include

select * from myemp where salary > 10000; -- exclude

select * from myemp where salary <2500;

select * from myemp where job_id != 'st_clerk'; -- not

select * from myemp where salary between 10000 and 15000; -- including

select * from myemp where hire_date >= '2000-01-01';
-- or
select * from myemp where year(hire_date)>2000;

select hire_date, year(hire_date) from myemp limit 10; -- YEAR is row level function

show tables;
select * from students;
insert into students values(6,'Brad','Mysql',67),(7,'Nava','Data Science',null),(8,'haily','Analytics',91);
select * from students;

select * from students where marks=null;-- o/p empty set

select * from students where marks is null;


-- LIKE operator (pattern matching)
/* 
% --> match any no. of charactor (zero)
_ --> match exact one charactor
*/
select * from myemp where first_name like 'J%';-- starting with j

select * from myemp where first_name like '%a';-- ending with a

select * from myemp where first_name like '%c%';-- at any position

select * from myemp where first_name like 'J____';-- 5 letter name starting with J


-- AND OR IN NOT operators
select * from myemp where dep_id=80 and salary>10000;-- cannot use same column with AND operator

select * from myemp where dep_id=80 or salary>10000; -- check for both conditions

select * from myemp where dep_id=30 or dep_id=40 or dep_id=60; 
-- or
select * from myemp where dep_id in(30,40,60);

select * from myemp where dep_id not in(30,40,60);


/*Grouping Functions
                    max
                    min
                    avg
                    count
                    sum
                    stddev
i/p --> set of records
o/p --> only one
*/

select max(salary) from myemp;
select min(salary) from myemp;
select avg(salary) from myemp;
select count(mgr_id) from myemp;
select sum(salary) from myemp;
select std(salary) from myemp;
-- or
select stddev(salary) from myemp;


-- GROUP BY 
-- Q.write department wise max salary
select * from myemp limit 2;
select dep_id, max(salary) from myemp group by(dep_id);

select dep_id, mgr_id, max(salary) from myemp group by dep_id, mgr_id;

-- HAVING clause mostly use with group by function
-- Q.write max salary who have dep_id is 30
select max(salary) from myemp where dep_id=30;
-- or
select dep_id, max(salary) from myemp group by dep_id having dep_id=30;-- for specific group

select dep_id, max(salary) from myemp group by dep_id having dep_id in(30,40,60);-- for multuple groups 


select * from person;
insert into person values(6,'Tom','Cruise');
select * from person;

-- Q.find dupplicate records
select *, count(*) from person 
group by id, fname, lname 
having count(id)>1 and count(fname)>1 and count(lname)>1;




