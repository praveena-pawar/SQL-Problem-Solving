USE interview_prep_db;

-- Drop existing tables if they already exist
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

-- Create departments table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(20)
);

INSERT INTO departments (department_id, department_name) VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

-- Create employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(20),
    salary INT,
    manager_id INT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO employees
(emp_id, name, salary, manager_id, department_id)
VALUES
(1, 'Alice',   45000, NULL, 1),  -- HR
(2, 'Bob',     70000, 1,    2),  -- IT
(3, 'Charlie', 65000, 1,    2),  -- IT
(4, 'David',   55000, NULL, 3),  -- Finance
(5, 'Eva',     80000, 2,    2);  -- IT

-- Verify data
SELECT *
FROM employees;

SELECT *
FROM departments;