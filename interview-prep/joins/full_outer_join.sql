-- 39: Display:
-- e.emp_name
-- d.department_name
-- Show:
-- all employees,
-- all departments,
-- even if there is no matching record. 
SELECT e.emp_name, d.department_name
FROM employees1 e
LEFT JOIN departments d
ON e.department_id = d.department_id
UNION 
SELECT e.emp_name, d.department_name
FROM employees1 e
RIGHT JOIN departments d
ON e.department_id = d.department_id
ORDER BY department_name, emp_name;