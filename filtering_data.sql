CREATE DATABASE interview_prep_db;

USE interview_prep_db;

CREATE TABLE employees(
emp_id INT PRIMARY KEY,
name VARCHAR(20),
department VARCHAR(10),
salary INT
);

INSERT INTO employees VALUES
(1, "Alice", "HR", 45000),
(2, "Bod", "IT", 70000),
(3, "Charlie", "IT", 65000),
(4, "David", "Finance", 55000),
(5, "Eva", "IT", 80000);




-- 1 :Write an SQL query to display the:
-- name
-- salary
-- of all employees who belong to the IT department and have a salary greater than 65000.

SELECT name, salary 
FROM employees
WHERE department = 'IT' AND salary > 65000;