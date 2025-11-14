-- subquery 
-- When Subquery Is Better
-- Aggregates per group – comparing a row against a summary statistic.
-- Existence checks – e.g., “find customers who have orders.”
-- Find employees who earn more than the average salary in their department











SELECT e.name, e.salary, d.department_name
FROM employee e
JOIN department d ON e.department_id = d.id
JOIN (
    SELECT department_id, AVG(salary) AS avg_salary
    FROM employee
    GROUP BY department_id
) dept_avg ON e.department_id = dept_avg.department_id
WHERE e.salary > dept_avg.avg_salary;



SELECT name, salary
FROM employee e
WHERE salary > (
    SELECT AVG(salary)
    FROM employee
    WHERE department_id = e.department_id
);

-- SET GLOBAL sql_mode = 'ANSI';
-- SET sql_mode = 'STRICT_ALL_TABLES,ANSI,ONLY_FULL_GROUP_BY,NO_ENGINE_SUBSTITUTION';
SET sql_mode = 'ANSI,STRICT_TRANS_TABLES,ONLY_FULL_GROUP_BY,NO_ENGINE_SUBSTITUTION';

use os46;
#implicity  inner join 
select  *
from  department , employee
where department.id = employee.detpid;

#explicity join 
select *
from department inner join employee
on department.id = employee.detpid;

#left join
select *
from department left join employee
on department.id = employee.detpid;

#right join

select *
from department right join employee
on department.id = employee.detpid;

#full join 
select *
from department right join employee
on department.id = employee.detpid

union

select *
from department left join employee
on department.id = employee.detpid;
;
#cross join
select *
from department cross join employee
;


-- self joins

select  concat(employee.fname,' ',employee.lname) as employee,
concat(manager.fname,' ',manager.lname) as manager
from employee join employee as manager
on employee.managerid =manager.id;

-- normalization

CREATE TABLE students_unnormalized (
    student_id INT,
    student_name VARCHAR(50),
    course_name VARCHAR(50),
    course_instructor VARCHAR(50),
    PRIMARY KEY (student_id, course_name)
);
-- Insert Anomaly
-- Update Anomaly
-- Delete Anomaly