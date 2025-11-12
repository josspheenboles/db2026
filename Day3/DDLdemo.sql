-- Create a new database
CREATE DATABASE demo_db;

-- Use the newly created database
USE demo_db;

-- Create a new table named employees
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    hire_date DATE NOT NULL,
    salary DECIMAL(10, 2)
);

-- Add a new column named department_id
ALTER TABLE employees ADD COLUMN department_id INT;

-- Modify the salary column to have a larger precision
ALTER TABLE employees MODIFY COLUMN salary DECIMAL(15, 2);

-- Rename the department_id column to dept_id
ALTER TABLE employees CHANGE COLUMN department_id dept_id INT;

-- Create an index on the last_name column
CREATE INDEX idx_last_name ON employees(last_name);

-- Drop the index on the last_name column
DROP INDEX idx_last_name ON employees;

-- Rename the employees table to staff
RENAME TABLE employees TO staff;

-- Remove all rows from the staff table
TRUNCATE TABLE staff;

-- Drop the staff table
DROP TABLE staff;

-- Drop the demo_db database
DROP DATABASE demo_db;
