-- Command to show a list of database

show databases;

-- to create a new database

CREATE DATABASE trendytech;

-- Deleting a database

drop database trendytech;

-- Using a database

USE trendytech;

-- Checking in which database we are working 

SELECT database();

--Creating table

CREATE TABLE employee
(
    name varchar(20),
    age int,
    salary int
);

--Command to show a list of table inside a databaase

show tables;

--Structure of table

describe employee;

--Deleting a table

drop table employee;
