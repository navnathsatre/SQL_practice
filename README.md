# ROLE OF SQL IN DATA SCIENCE
A major part of a Data Scientist's role involves handling data from a variety of Data Sources. This inclueds:<br/>
* Extracting the data out of production schema.
* Querying databases and concatenating datasets together.
* Cleaning and formatting data.
* Storing data into a suitable physical location so you can run your analysis. 
###  What is Database?
A data base is a collection of related data which represent some aspect of the real word. A database system is designed to be builld and populated for a certain task.
### What is DBMS?
Database Management System (DBMS) is a software for storing and retrieving users' data by considering appropriate security measures. It allows to create thair own databases as per their requirement.<br/>
-- A group of programs which manipullate the database<br/>
-- Provides an interface between database and users<br/>
-- Include detials about the users of the database and other application programs.<br/>
-- Aceept requests for data from an application and retrives the specific data.<br/>
-- Allows thid-party software to store and retricve data.<br/>

__TYPES OF DBMS__ <br/>

|HIRARCHICAL DBMS|NETWORK DBMS|OBJECT ORIENTED DBMS|RDBMS|
|----|----|----|----|
### What is RDBMS?
-- An RDBMS is a subset of DBMS designed speecifically for relational databases.<br/>
-- Stored data in structured format, using rows and columns.<br/>
-- Is is "relational" because the values within each table are related to each other.<br/>
-- Table may also be related to each other.<br/>
-- The relational structure make it possible to run queres across multiple tables.
### Popular DBMS Software
|MySQL | Microsoft Access | Oracle | PostgreSQL | dBASE | FoxPro | SQLite | IBM DB2 | LibreOffice Base | MariaDB | Microsoft SQL Server|

# RDBMS CONCEPTS
### *TABLE* : data element organised in terms of rows and columns<br/>
### *TUPLE* : a single enrty in a table (Record/Row)<br/>
### *ATTRIBUTE* : each record can be broken down into several smaller part of data<br/>
### *RELATIONAL INTEGRITY CONSTRAINT*: a relational database model should abide by certain constraints<br/>
#### -- Key Constraints <br/>
-- The key attrebute should never be __NULL__ or same for two different rows of data.
#### -- Domain Constraints <br/>
-- Refers to the values that can be stored for a certain attrebute.<br/>
 __UNIQUE__ | __NOT NULL__ | __CHECK__ | __DEFAULT__
#### -- Referential integrity Constraints <br/>
-- Referential integrity (RI) is a relational database concept, which states that table relationship must always be consistent. (any foreign key field must agree with the primary key that refersed by the foreign key)<br/>
-- If a table has a reference to some data from another table, then that data should be present for referential integrity constraint to hold true.<br/>
__PRIMARY KEY__ | __FOREIGN KEY__
# NO-SQL DATABASES
-- NoSQL or most commonly known as 'Not only SQL' database, It provides a mechanism for storage amd retrieval of unstructured data. It can handle a humongous amount of data and has a dynamic schema.<br/>
-- A NoSQL database has *no specific query language* and no or very few relationship. Data is stored in the form of collections and documents.
|Types|KEY-VALUE STORES|WIDE COLUMN STORES|DOCUMENT DATABASES|GRAPH DATABASES|
|----|----|----|----|----|
|Ex.|Redis, Riak, Voldemort|Cassandra, HBase|MongoDB|Neo4J, HyperGgaphDB|
### A COMPARISON
|SQL|NoSQL|
|--|--|
|Relational database|Non-relational database|
|Predefined schema|Dynamic schema|
|Table based databases|Key-value pair, documents, graph bases|
|Better fit for complex query environment|Not a good fit for complex queries|
|Vertically scalable|Horizontally scalable|
|Heavy-duty transactions| Not stable in high load and complex transactions|
|MySQL, Oracle, PostGreSQL|MongoDB, Cassandra, HBase|

# MYSQL
## SQL Commands
|DDL|DML|DQL|DCL|TCL|
|---|---|---|---|---|
|DROP, RENAME, CREATE, ALTER, TRUNCATE|INSERT, UPDATE, DELETE|SELECT|GRANT, REVOKE|COMMIT, ROLLBACK, SAVEPOINT, SET TRANSACTION|
# Database Objects
Any object in a database that is used to store reference data. database objects are created using the create command They are used to hold and manipulate the data.<br/>
|__Table :__|Basic unit of storage; composed rows and columns|
|---|---|

|__View :__|Logically represents subsets of data from one or more tables|
|--|--|

|__Sequence:__|Generates primary key values|
|--|--|

|__Index :__|Improves the perfomance of some queries|
|----|----|

### SQL Data Types
* Numeric Data Types
* Data & Time
* Large Object Data(LOB) Types
