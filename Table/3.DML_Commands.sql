/*
DML Commands (write) inside table(about rows)
               INSERT
               UPDATE
               DELETE 
*/
show tables;
select * from students;

-- INSERT command (add new recod only)
insert into students value (3,'Tom','MySQL',78);
insert into students value (4,'Larry','null',90);-- use null when we don't no

insert into students (Std_id, sname, marks)values(5,'Lara',78);-- when we have more and col
select * from students;

-- insert multiple records at a time
insert into students values(6,'Bred','MySQL',67),
						   (7,'Tim','Analytics',null),
                           (8,'Jim','MySQL',56);
select * from students;

set SQL_SAFE_UPDATES = 0; -- first disable the safe mode

-- UPDATE Command (changes in record only)
update students set sname='Maria' where Std_id=2;
select * from students;

update students set course='Analytics' where course is null;
select * from students;

update students set sname='Timothy', marks=83 where Std_id=7;-- multiple changes
select * from students;

update students set course='MySQL';-- if we miss WHERE clause then all rows will be affected
select * from students;


-- DELETE Command (delete record only)
 delete from students where Std_id=3;
select * from students;

delete from students where marks=50;
select * from students;

delete from students;-- if we miss WHERE clause then all rows will be affected
-- (delete all records from table)
select * from students;
desc students; -- Integrety constrain not remove

