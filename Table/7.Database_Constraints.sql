/*
Database Constraints
                    1)Key Constraint
                    2)Domain Constaint
                    3)Referential Integrety Constraint
*/
/*
1) Key Constraint
     The key attrebute should never be NULL or same for two different rows of data.
*/
/*
2) Domain Constraint
     Refers to the values that can be stored for a certain attrebute
               -UNIQUE
               -NOT NULL
               -CHECK 
               -DEFAULT
*/

/*
3) Referential Integrety Constraint
   -Referential integrity (RI) is a relational database concept, 
	which states that table relationship must always be consistent. 
	(any foreign key field must agree with the primary key that refersed by the foreign key)
   -If a table has a reference to some data from another table, 
    then that data should be present for referential integrity constraint to hold true.
*/

show databases;
use practicedb2;
show tables;

select * from students;
drop table students;

create table students (sid int UNIQUE,
                       sname varchar(30) NOT NULL,
                       age int CHECK(age>18),
                       course varchar(30));
desc students;

insert into students values(1,'Pete',23,'MySQL');
select * from students;

-- Try duplecate entry for key 'sid'
insert into students values (1, 'Tim',23,'MySQL');-- not working
insert into students values (2, 'Tim',23,'MySQL');
select * from students;

-- Try to vilate minimum 'age' condition
insert into students values (3,'Lara',17,'Analytics');-- not working
insert into students values (3,'Lara',19,'Analytics');
select * from students;

-- Try to insert NULL into 'sname'
desc students;
insert into students values (4,null,27,'Data Science');-- not working(can not null)
-- or 
insert into students(sid, age, course) values(4,27,'Data Science');-- not working(doesn't have default value)

desc students;
-- if NULL is there, put default value
alter table students modify column sname varchar(30) not null default 'John';
desc students;

insert into students (sid, age, course) values(4,27,'Data Science');-- working
select * from students;

insert into students values (4,NULL,27,'DataScience');-- still not working
select * from students;


-- Referential Integrity Constrain

-- Primary Key -> Unique + Not Noll
-- Foreign Key -> FK column is pointing to PK column of anather table

show tables;
select * from authors; -- PARANT TABLE (PRI)
desc authors;

select * from books; -- CHILD TABLE (PRI + MUL)
desc books;

drop table authors;-- can not drop parant first (bcz refered by foreign key in books table) 

drop table books;-- first we drop child table
drop table authors;-- and then parent table

-- DROP -> child first (FOREIGN KEY & PRIMARY KEY) then parant (PRIMARY KEY)
-- CREATE -> parant first(PK) then child(FK,PK)

create table authors (authorid integer PRIMARY KEY,   -- PARANT TABLE
                      name varchar(50));
                      
insert into Authors values(1,'J K Rowling');
insert into Authors values(2,'Thomas Hardy');
insert into Authors values(3,'Oscar Wilde');
insert into Authors values(4,'Sidney Sheldon');
insert into Authors values(5,'Alistair MacLean');
insert into Authors values(6,'Jane Austen');
insert into Authors values(7,'Chetan Bhagat');
insert into Authors values(8,'Oscar Wilde');  
                    
desc authors;
select * from authors;

-- we can not add records in FK column till we add record in PK column of parent table this is called referential integrity
-- update, delete no allowed in parent table untill we maintion ON UPDATE CASCADE/ON DELETE COSCADE
-- parent can have multiple chaild and vice verca

create table books(bookid int PRIMARY KEY,
                   title varchar(255),
                   aid int,           -- take different name 
                   foreign key(aid) REFERENCES authors(authorid)
                   ON DELETE CASCADE
                   ON UPDATE CASCADE);
-- NOTE: cascade is always work from parent to child table
-- there is no grand-parent and child relationship
desc books;

insert into Books values(1,'Harry Potter and the Philosopher\'s Stone',1);
insert into Books values(2,'Harry Potter and the Chamber of Secrets',1);
insert into Books values(3,'Harry Potter and the Half-Blood Prince',1);
insert into Books values(4,'Harry Potter and the Goblet of Fire',1);
insert into Books values(5,'Night Without End',5);
insert into Books values(6,'Fear is the Key',5);
insert into Books values(7,'Where Eagles Dare',5);
insert into Books values(8,'Sense and Sensibility',6);
insert into Books values(9,'Pride and Prejudice',6);
insert into Books values(10,'Emma',6);
insert into Books values(11,'Five Point Someone',7);
insert into Books values(12,'Two States',7);
insert into Books values(13,'Salome',8);
insert into Books values(14,'The Happy Prince',8);

select * from books;
desc books;

select * from authors; -- parent table
select * from books; -- child table

delete from authors where AuthorId=1; -- delete from parent
select * from authors;
select * from books; -- also deleted from chaild (because we use ON DELETE CASCADE)


select * from authors;
select * from books;

update authors set authorid=80 where authorid=8;  -- update in parent
select * from authors;
select * from books;  -- also updated in chaild (because we use ON UPDATE CASCADE)




