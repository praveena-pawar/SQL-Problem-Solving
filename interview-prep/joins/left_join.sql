-- 1: Display:
-- e.emp_name
-- d.department_name
-- for all employees, even if they don't belong to a department
SELECT e.emp_name, d.department_name
FROM employees1 e
LEFT JOIN departments d
ON e.department_id = d.department_id
ORDER BY e.emp_name;
