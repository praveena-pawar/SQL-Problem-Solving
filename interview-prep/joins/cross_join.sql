-- 1: Display:
-- e.emp_name
-- d.department_name
-- Return every possible combination of employees and departments.
SELECT e.emp_name, d.department_name
FROM employees1 e
CROSS JOIN departments d
ORDER BY e.emp_name, d.department_name;