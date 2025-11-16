-- -- CREATE TABLE department (
-- --     id SERIAL PRIMARY KEY, -- 'SERIAL' automatically creates a sequence and sets 'NOT NULL' and 'PRIMARY KEY'
-- --     name VARCHAR(100) NOT NULL -- Using VARCHAR for the department name
-- -- );

-- -- ---

-- -- -- 3. Insert 5 rows into the department table
-- -- INSERT INTO department (name) VALUES
-- -- ('Sales'),
-- -- ('Marketing'),
-- -- ('Engineering'),
-- -- ('Human Resources'),
-- -- ('Finance');

-- -- ---

-- -- -- 4. Optional: Select all rows to confirm the insertion
-- -- SELECT * FROM department;

-- -- 2. Create the employee table with new constraints
-- CREATE TABLE employee (
--     id SERIAL PRIMARY KEY,
--     fname VARCHAR(50) NOT NULL,
--     lname VARCHAR(50),
--     salary NUMERIC(10, 2),
--     gender CHAR(1) DEFAULT 'F', -- Sets 'F' as the default value if none is provided

--     dept_id INT NOT NULL,

--     -- Constraint 1: Check if salary is within the range (exclusive: > 5000 AND < 10000)
--     CONSTRAINT chk_salary_range
--         CHECK (salary > 5000.00 AND salary < 10000.00),

--     -- Constraint 2: Foreign Key
--     CONSTRAINT fk_department
--         FOREIGN KEY (dept_id)
--         REFERENCES department (id)
-- );

-- ---

-- -- 3. Insert 5 rows into the employee table
-- -- NOTE: All salaries must be between 5000.01 and 9999.99
-- INSERT INTO employee (fname, lname, salary, gender, dept_id) VALUES
-- -- Gender provided as 'M'
-- ('Alice', 'Johnson', 7500.50, 'M', 3), 
-- ('Bob', 'Williams', 6200.00, 'M', 1),    
-- -- Gender not provided, will default to 'F'
-- ('Charlie', 'Brown', 8800.75, DEFAULT, 3), 
-- ('Diana', 'Smith', 5500.00, 'F', 2),    
-- -- Gender not provided, relies on the table default
-- ('Ethan', 'Miller', 9500.25, DEFAULT, 5); 

-- ---

-- -- 4. Optional: Select all rows to confirm the insertion
SELECT * FROM employee;

ALTER TABLE employee
ADD COLUMN manager_id INT;

---

-- 2. Add the self-referencing Foreign Key constraint.
-- This ensures that any value in manager_id must exist in the employee.id column.
ALTER TABLE employee
ADD CONSTRAINT fk_manager
    FOREIGN KEY (manager_id)
    REFERENCES employee (id);