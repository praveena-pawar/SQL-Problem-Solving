-- 1: Display:
-- e.emp_name
-- d.department_name
-- for all employees, even if they don't belong to a department
SELECT e.emp_name, d.department_name
FROM employees1 e
LEFT JOIN departments d
ON e.department_id = d.department_id
ORDER BY e.emp_name;


-- 2: Requirements
-- Show all employees, even if they don't have a matching department.
-- Return only employees whose salary is at least 60,000.
-- Sort by:
-- e.salary (descending)
-- e.emp_name (ascending)
SELECT e.emp_name, d.department_name, e.salary
FROM employees1 e
LEFT JOIN departments d
ON e.department_id = d.department_id
WHERE salary >= 60000
ORDER BY e.salary DESC, e.emp_name;