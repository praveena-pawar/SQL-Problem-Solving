
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




-- 13 Write an SQL query to display:
-- name
-- salary
-- salary_category
-- where:
-- Salary >= 70000 → 'High'
-- Salary between 50000 and 69999 → 'Medium'
-- Salary < 50000 → 'Low'
SELECT 
    name,
    salary,
    CASE
        WHEN salary >= 70000 THEN 'High'
        WHEN salary BETWEEN 50000 AND 69999 THEN 'Medium'
        ELSE 'Low'
    END AS salary_category
FROM employees;




-- 14 Write an SQL query to display:
-- name
-- department_name
-- for all employees.
SELECT name, department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;




-- 15 Write an SQL query to display:
-- name
-- salary
-- department_name
-- for employees who work in the IT department.
SELECT name, salary, department_name
FROM employees e
INNER join departments d
ON e.department_id = d.department_id
WHERE department_name = 'IT';




-- 16 Write an SQL query to display:
-- department_name
-- name
-- for all departments, including departments that do not have any employees.
SELECT department_name, name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;




-- 17 Write an SQL query to display the names of departments that do not have any employees.
SELECT department_name
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
WHERE e.emp_id IS NULL;




-- 18 Write an SQL query to display:
-- department_name
-- number_of_employees
-- for each department, including departments with zero employees.
SELECT department_name, COUNT(emp_id ) AS number_of_employees
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
GROUP BY department_name;