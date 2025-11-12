-- generate diagram
-- menu --->database--->reverse
-- import db
    -- Step 1: In the tab Server click Data Import.
    -- Step 2: You will see a new screen with different options for data import. ...
    -- Step 3: Choose the target schema. ...
    -- Step 4: After choosing the necessary options, click Start import in the below right corner.
    -- Step 5: Wait for the import to finish.
use demo;
-- create table department
-- (
-- id int primary key auto_increment,
-- name varchar(50)
-- );
-- create table employee 
-- (id int primary key auto_increment,
-- name varchar(50) ,
-- bdate date,
-- did int ,
-- salary float,
-- foreign key (did) references department(id) 
-- );
-- alter table employee
-- drop column salary
-- modify column salary decimal
-- add column salary float
-- insert into department (name) values('JAVA'),('sys admin');
-- alter table employee
-- add column fname varchar(50),
-- add column lname varchar(50);
-- -- drop column name ;

-- insert into employee (fname,lname,bdate,did,salary) values('sara','ahmed','2000-1-1',1,5000),
--  ('ali','ahmed','2000-1-1',2),('mark','amgad','2000-1-1',2,12000);
 -- insert into employee (fname,bdate,did) values('mai','2000-1-1',1,10000);
-- select
-- select * from employee;
-- select distinct fname from employee;
-- select concat (fname,' ' ,lname) from employee;
-- update employee set fname='Sara' where id=2;
-- case sensentive depend of COLLATE (utf8_general_ci,utf8_bin)
-- select * from employee where fname='sara'
-- _ one  letter ,% any letter
-- select * from employee where fname like '___a%'
-- select * from employee where did=2;
-- select * from employee where id=1 or id =4;
-- select * from employee where id in (1,4);
-- select * from employee where id>=2 and id <=5;
-- select * from employee where id between 2 and 5;
-- select count(*) from employee;
-- select count(lname) from employee;-- only rows that has lname values
-- select sum(salary),avg(salary),min(salary),max(salary) from employee;
-- select count(*) as count ,did
-- from employee
-- group by did
-- having count>2
-- select * from employee
-- where did = (select id from department where name='os')
-- select bdate,fname,lname,name,employee.id
-- from employee,department
-- where employee.did=department.id
-- select * from department
-- where id in ( select did from employee
-- where salary =(
-- select max(salary) from employee)
-- )
-- select * from employee
-- where salary =(
-- select max(salary) from employee 
-- where did=3)
-- joins(cross,inner,outer,left outer,right outer)











