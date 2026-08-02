-- 1: emp_name
-- department_name
-- for all employees who have a matching department.
SELECT e.emp_name, d.department_name
FROM employees1 e
INNER JOIN departments d
ON e.department_id = d.department_id 
ORDER BY department_name, emp_name;


-- 26: Requirements
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