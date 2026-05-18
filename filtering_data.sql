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