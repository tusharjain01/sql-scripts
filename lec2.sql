-- CRUD operation 
-- Create , Read , Update and Delete
-- Create - insert statements
-- read - select statments
-- update - update statements
-- delete - delete statements


-- Creation of table and Insert statements

-- Consider you are a small startup and you are looking to hire 
-- some employee and therefore you created a employee table . You are banglore based startup 
-- your preference is to hire from bangalore 


-- This is also called ddl command 
CREATE TABLE employee
(
    firstname varchar(20),
    middlename varchar(20),
    lastname varchar(20),
    age int,
    salary int,
    location varchar(20)
);

-- How to see data inside a table ?

SELECT * From employee;

-- Inserting a data inside a table 

INSERT INTO employee(firstname,middlename,lastname,age,salary,location) VALUES ('satish','kumar','sharma',28,10000,'bangalore');
INSERT INTO employee(firstname,lastname,age,salary,location) VALUES ('rajesh','sharma',32,20000,'bangalore');

-- For reason we want a single quote in name 

INSERT INTO employee(firstname,lastname,age,salary) VALUES ("rajesh's",'sharma',32,20000,'bangalore');

-- Inserting multiple values in a table 

INSERT INTO employee(firstname,middlename,lastname,age,salary,location) VALUES ('satish','kumar','sharma',28,10000,'bangalore'),('satish','kumar','sinha',30,20000,'bangalore');

-- NOT NULL = keyword to make a column mandatory to be filled at a time of inserting 

CREATE TABLE employee
(
    firstname varchar(20) NOT NULL,
    middlename varchar(20),
    lastname varchar(20) NOT NULL,
    age int NOT NULL,
    salary int NOT NULL,
    location varchar(20) NOT NULL
);

-- NULL means unknown

-- Default values 

-- As we intend to know our first prefernce to hire from bangalore 

CREATE TABLE employee
(
    firstname varchar(20) NOT NULL,
    middlename varchar(20),
    lastname varchar(20) NOT NULL,
    age int NOT NULL,
    salary int NOT NULL,
    location varchar(20) DEFAULT 'bangalore'
);








