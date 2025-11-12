-- operation db 
create database os_demo;
drop database os_demo;
use os_demo;
select * from employee;
create table department
(
id int primary key,
name varchar(100)
);
CREATE TABLE `os_demo`.`department` (
  `ID` TINYINT NOT NULL,
  `name` VARCHAR(100) NULL,
  PRIMARY KEY (`ID`));

create table employee 
(
-- columnname datatype constraint
id tinyint primary key,
fname varchar(10),
lname varchar(10),
bdate date,
city varchar(15) default 'assuit',
salary float,
gender char(1) default 'F',
did int,
);
CREATE TABLE `os_demo`.`employee` (
  `id` TINYINT NOT NULL ,
  `fname` VARCHAR(10) NULL,
  `lname` VARCHAR(10) NULL,
  `bdate` DATE NULL,
  `city` VARCHAR(50) NULL DEFAULT 'assuit',
  `salary` FLOAT UNSIGNED NOT NULL,
  `gender` CHAR(1) NOT NULL,
  `did` TINYINT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = 'sjdksjdk';

alter table employee
drop constraint constaintname 

