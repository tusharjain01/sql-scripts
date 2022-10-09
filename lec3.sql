-- Primary Key
-- Auto Increment key
-- Unique Key
-- Difference between primary key and unique key

-- PRIMARY KEY - Uniquely identify values in a table 

CREATE TABLE employee
(
	id int PRIMARY KEY,
    firstname varchar(20) NOT NULL,
    middlename varchar(20),
    lastname varchar(20) NOT NULL,
    age int NOT NULL,
    salary int NOT NULL,
    location varchar(20) DEFAULT 'bangalore'
);
desc employee;
INSERT INTO employee (id,firstname,lastname,age,salary) VALUES (1,'rajesh', 'sharma',28,10000);
select * from employee;

-- AUTO - INCREMENT KEy

CREATE TABLE employee
(
	id int AUTO_INCREMENT,
    firstname varchar(20) NOT NULL,
    middlename varchar(20),
    lastname varchar(20) NOT NULL,
    age int NOT NULL,
    salary int NOT NULL,
    location varchar(20) DEFAULT 'bangalore'
    PRIMARY KEY(id)
);

--Unique Key

-- You can have only one primary key
-- and the primary key cannot hold any nulll
-- we should use primary key when we have to uniquely identify each record
-- unique key can hold NULL
-- for example in mysql a unique    