-- 1: emp_name
-- department_name
-- for all employees who have a matching department.
SELECT e.emp_name, d.department_name
FROM employees1 e
INNER JOIN departments d
ON e.department_id = d.department_id 
ORDER BY department_name, emp_name;


-- 2: Requirements
-- Show only employees whose salary is greater than 55,000.
-- Sort by:
-- salary (descending)
-- emp_name (ascending)
SELECT e.emp_name, d.department_name, e.salary
FROM employees1 e
INNER JOIN departments d
ON e.department_id = d.department_id 
WHERE e.salary > 55000
ORDER BY e.salary DESC, emp_name;


-- 3: Requirements
-- Consider only employees whose salary is at least 50,000.
-- average_salary should be rounded to 2 decimal places.
-- Show only departments having at least 2 employees.
-- Sort by:
-- average_salary (descending)
-- department_name (ascending)
SELECT d.department_name, 
	COUNT(e.emp_id) AS employee_count,
    ROUND(AVG(e.salary), 2) AS average_salary
FROM employees1 e
INNER JOIN departments d
ON e.department_id = d.department_id 
WHERE e.salary >= 50000
GROUP BY d.department_id, d.department_name
HAVING COUNT(e.emp_id) >= 2
ORDER BY average_salary DESC, department_name;


-- 4: Requirements
-- Show only employees who:
-- belong to Engineering or HR.
-- were hired on or after '2021-01-01'.
-- have a salary greater than or equal to 55,000.
-- Sort the result by:
-- department_name (ascending)
-- salary (descending)
-- emp_name (ascending)
SELECT e.emp_name, d.department_name, e.salary, e.hire_date
FROM employees1 e
INNER JOIN departments d
ON e.department_id = d.department_id
WHERE d.department_name IN ('Engineering', 'HR')
  AND e.hire_date >= '2021-01-01'
  AND e.salary >= 55000
ORDER BY d.department_name, e.salary DESC, e.emp_name;


-- 5: Requirements
-- Consider only employees:
-- hired before '2023-01-01'
-- with salary at least 50,000
-- Show only departments where:
-- employee_count is at least 2
-- total_salary is greater than 120000
SELECT d.department_name, 
	COUNT(e.emp_id) AS employee_count,
    SUM(e.salary) AS total_salary,
    MAX(e.salary) AS highest_salary
FROM employees1 e
INNER JOIN departments d
ON e.department_id = d.department_id
WHERE hire_date < '2023-01-01'
	AND salary >= 50000
GROUP BY d.department_id
HAVING COUNT(e.emp_id) >= 2
	AND SUM(e.salary) > 120000
ORDER BY total_salary DESC, d.department_name;