-- CRUD Create read update delete
-- Create - Insert
-- read - Select
-- update - Update
-- Delete - Delete

CREATE TABLE employee
(
	id int AUTO_INCREMENT,
    firstname varchar(20) NOT NULL,
    middlename varchar(20),
    lastname varchar(20) NOT NULL,
    age int NOT NULL,
    salary int NOT NULL,
    location varchar(20) NOT NULL DEFAULT 'bangalore',
    PRIMARY KEY(id)
);

INSERT INTO employee(id,firstname,lastname,age,salary) VALUES 
(1,'rajesh','sharma',28,10000),(2,'kapil','sharma',30,20000),(3,'Maneesh','sharma',32,30000);


INSERT INTO employee(firstname,lastname,age,salary) VALUES
('Sarthak','Sethi',24,30000),('Tushar','Jain',25,50000),('Aniket','Jain',25,30000);

--Selecting all columns
Select * from employee;

--Selecting specific columns
Select firstname,lastname from emplpoyee;

--select by applying a where clause(filter condition)
Select * from employee where age > 29;

--By default it is case insensitive
select * from employee where binary firstname = 'maneesh';

-- the above will match the exact case 

--Alias

select firstname as name ,lastname as surname from employee;


--Update

select * from employee;
-- Ques - we by chance have maneesh's lastname as sharma , now we have to convert it into sinha

update employee set lastname = 'sinha' where firstname = 'Maneesh';

update employee set salary = salary+5000;
-- Above statement will run for all data

-- Delete Commands
delete from employee where id = 3;

delete from employee; --deletes all data

--Alter Commands is used to alter the structure of a table 
alter table employee add column jobtitle varchar(50); -- adding a new columns 
alter table employee drop column jobtitle ; -- drop a column
alter table employee modify column firstname varchar(30); -- modifying the characteristics of a columns
alter table employee drop PRIMARY KEY; -- removing a Primary Key
alter table employee add PRIMARY KEY(id); --Adding a primary key

-- DDL (Data Definination language) = Are used to change the table structure
-- create ,alter ,drop - DDL commands
-- DML (Data Manipulation language) = deals with data of table 
-- insert,update,delete - DML commands

delete from employee; --deletes all the data -- Dml 
truncate table employee; -- Deletes all the data
-- Truncate also removes all records(DDL)
-- Truncate internally drops the table and recreate it.

