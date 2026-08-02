-- 1: emp_name
-- department_name
-- for all employees who have a matching department.
SELECT e.emp_name, d.department_name
FROM employees1 e
INNER JOIN departments d
ON e.department_id = d.department_id 
ORDER BY department_name, emp_name;