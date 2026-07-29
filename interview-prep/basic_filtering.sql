-- 1: -- Display emp_name and salary for employees whose salary is greater than 55,000, ordered by salary in descending order.
SELECT emp_name, salary 
FROM employees
WHERE salary > 55000
ORDER BY salary DESC;


-- 2: Write an SQL query to display all unique department_id values from the employees table.
SELECT DISTINCT department_id
FROM employees
ORDER BY department_id;


-- 3: for employees whose salary is between 50,000 and 75,000 (inclusive).
SELECT emp_name, salary 
FROM employees
WHERE salary BETWEEN 50000 AND 75000
ORDER BY salary DESC, emp_name;


-- 4: Display all employee details except those who belong to department 102.
SELECT * 
FROM employees 
WHERE department_id <> 102
ORDER BY department_id, salary DESC;


-- 5: for employees who satisfy both of the following conditions:
-- Salary is greater than or equal to 55,000
-- Department is either 101 or 103
SELECT emp_name, salary, department_id
FROM employees
WHERE salary >= 55000
  AND department_id IN (101, 103)
ORDER BY department_id, salary DESC;


-- 6: for employees who satisfy either of these conditions:
-- Salary is greater than 75,000
-- OR they belong to department 103
SELECT emp_name, salary, department_id
FROM employees
WHERE salary > 75000 OR department_id = 103
ORDER BY salary DESC, emp_name;


-- 7: for employees who were hired after January 1, 2021 and whose salary is not equal to 50,000.
SELECT emp_name, salary, hire_date
FROM employees
WHERE hire_date > '2021-01-01' AND salary <> 50000
ORDER BY hire_date DESC, salary DESC;


-- 8: Return only employees who:
-- belong to department 101 or 102, and
-- have a salary less than 70,000.
SELECT emp_name, department_id, salary
FROM employees
WHERE department_id IN (101, 102) AND salary < 70000
ORDER BY department_id, salary, emp_name;


-- 9: Return employees who do not belong to department 103 and whose salary is not between 50,000 and 70,000.
SELECT emp_name, department_id, salary
FROM employees
WHERE department_id <> 103 AND salary NOT BETWEEN 50000 and 70000
ORDER BY salary DESC, emp_name;