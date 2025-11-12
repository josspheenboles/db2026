select * from department;
select id,salary,concat(fname,' ',lname) as name  
from employee;

select  fname,lname 
from  employee
where fname like '__a%';

select *
from employee
where id=2 and fname='aya';
select *
from employee
where id >1 and id <=5;
-- id between 2 and 5;
select * from employee
where id not in (1,3,5);
select *
from employee
where did is not null;

select salary +5000 
from employee
;
select * from employee
where id%2=0;
select upper(fname)
from employee;
select count(*) from employee;
select count(did) from employee;

select *
from employee,department
where employee.did=department.id;

select id,employee.fname,department.name 
from employee right join department
on employee.did=department.id
union
select employee.fname,department.name 
from employee left join department
on employee.did=department.id;
select employee.id,department.name 
 from employee right join department
 on employee.did=department.id
 union
 select department.name ,employee.id
 from employee left join department
 on employee.did=department.id	;
 set sql_mode ='ansi';
 
 
 -- self join
 select * from employee;
 select manager.fname as manager ,employee.fname 
 from employee  , employee as manager
 where EMPLOYEE.mid=MANAGER.id
 order by fname asc ;
 
 select max(salary),avg(salary)
 from employee;
 
 select department.name,count(employee.id)
 from  department ,employee -- 1 
 where department.id=employee.did  -- 2
 group by department.name ;  -- 3
 
 
 select * from employee
 order by salary desc;
 
 
 select count(*) ,department.name,department.id
 from department,employee
 where department.id=employee.did
 group by department.name,department.id
 
 
 having count(*) >1;
 select fname
 from employee
 where did in (select id from department where name = 'os');
 
 select employee.*,
 (
 select name from department
 where did=department.id
 ) as deptname
 from employee;
 
 select name 
 from department
 where id =
 (select did from employee  order by salary desc limit 1);
 
 select fname from  employee
 where salary >  
 (select max(salary) from employee -- salary
 where did=5);

 (select max(salary) from employee -- salary
 where did=()); 
 

 