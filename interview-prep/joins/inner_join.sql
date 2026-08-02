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