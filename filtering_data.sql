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


-- Add the manager_id column to your existing employees table
ALTER TABLE employees
ADD manager_id INT;

-- Update the existing rows with manager_id values
UPDATE employees
SET manager_id = CASE
    WHEN emp_id = 1 THEN NULL
    WHEN emp_id = 2 THEN 1
    WHEN emp_id = 3 THEN 1
    WHEN emp_id = 4 THEN NULL
    WHEN emp_id = 5 THEN 2
END
WHERE emp_id IN (1, 2, 3, 4, 5);


-- Verify the updated data
SELECT *
FROM employees;





-- 1 :Write an SQL query to display the:
-- name
-- salary
-- of all employees who belong to the IT department and have a salary greater than 65000.

SELECT name, salary 
FROM employees
WHERE department = 'IT' AND salary > 65000;



-- 2 : Write an SQL query to find the average salary of all employees in the IT department.
SELECT AVG(salary) AS avr_salary
FROM employees
WHERE department = 'IT';




-- 3 : Write an SQL query to display:
-- department
-- number_of_employees
-- for each department.
SELECT department, 
		COUNT(*) AS number_of_employees
FROM employees
GROUP BY department;



-- 4 : Write an SQL query to display:
-- department
-- average_salary
-- for departments whose average salary is greater than 60,000.
SELECT department, 
	AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000;



-- 5 : Write an SQL query to display, for each department:
-- department
-- total_salary
-- average_salary
-- highest_salary
-- lowest_salary
SELECT department, 
	SUM(salary) AS total_salary,
    AVG(salary) AS average_salary,
    MAX(salary) AS highest_salary,
    MIN(salary) AS lowest_salary
FROM employees
GROUP BY department;




-- 6 Write an SQL query to display all unique department names from the employees table
SELECT DISTINCT department
FROM employees;



-- 7 Write an SQL query to display:
-- name
-- salary
-- for all employees, sorted by salary in descending order.
SELECT 	name, salary
	FROM employees
ORDER BY salary DESC;



-- 8 Write an SQL query to display the top 2 highest-paid employees.
SELECT 	name, salary
	FROM employees
ORDER BY salary DESC
LIMIT 2;



-- 9 Write an SQL query to display:
-- name
-- salary
-- for employees whose salary is between 50,000 and 75,000 (inclusive).
SELECT 	name, salary
	FROM employees
WHERE salary BETWEEN 50000 AND 75000;



-- 10 Write an SQL query to display:
-- name
-- department
-- for employees who belong to either the IT or HR departments.
SELECT name, department
	FROM employees
WHERE department IN('IT', 'HR');



-- 11 Write an SQL query to display the names of employees whose names start with the letter 'A'.
SELECT name 
FROM employees
WHERE name LIKE 'A%';




-- 12 Write an SQL query to display the names of employees who do not have a manager
SELECT name
FROM employees
WHERE manager_id IS NULL;