/*
JOINing Tables (in MySQL)
1. Inner Join
2. Left Join
3. Right Join
4. Self Join
5. Cross Join(no need to commen column)
*/
show databases;
use practicedb2;
show tables;

select * from movies;
select * from members;

-- INNER JOIN (select common records only)

-- Q.Who rented movies
select id, title, first_name, last_name 
from movies
inner join members
on id=movieid; -- id of movies and movieid of memebers are common


-- LEFT JOIN (select all records from left table and common record)

select mv.id, mv.title, mm.first_name, mm.last_name
from movies as mv
left join members as mm
on id=movieid;

select mv.id, mv.title, mm.first_name, mm.last_name
from movies as mv
left join members as mm
on id=movieid
order by id; -- use order by

select mv.id, mv.title, ifnull(mm.first_name, '-'), ifnull(mm.last_name,'-') -- replace null with '-'
from movies as mv 
left join members as mm
on id=movieid;

select mv.id, mv.title, ifnull(mm.first_name, '-')as fname, ifnull(mm.last_name, '-')as lname-- use alias names
from movies as mv
left join members as mm
on id=movieid;


-- RIGHT JOIN (select all records from right table and common record)

select * from movies;
select * from members;

select ifnull(mv.id,'-'), ifnull(mv.title,'-'), mm.first_name, mm.last_name
from movies as mv
right join members as mm
on mv.id=mm.movieid;



-- CROSS JOIN(no need common column)

show tables;
select * from meals;
select * from drinks;

select mealname, drinkname
from meals 
cross join drinks;

select mealname, drinkname, rate  -- ambiguous error(rate is in both columns)
from meals
cross join drinks;

select m.mealname, d.drinkname, m.rate, d.rate
from meals as m
cross join drinks as d;

select m.mealname, d.drinkname,  (m.rate + d.rate) as Total-- we can not use agg SUM here
from meals as m
cross join drinks as d;


-- SELF JOIN (using inner join only)

select * from myemp limit 10;
select emp_id, first_name, last_name, mgr_id
from myemp limit 10;

-- Q. Who is manegers of given emp_ids
select e.emp_id, e.first_name, e.last_name, m.emp_id, m.first_name, m.last_name
from myemp as e
join myemp as m
on e.mgr_id=m.emp_id
order by e.emp_id;
