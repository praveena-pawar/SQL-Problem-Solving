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


-- 3: Display:
-- e.emp_name
-- d.department_name
-- Return only employees who do not belong to any department.
-- 33: Display:
-- e.emp_name
-- d.department_name
-- Return only employees who do not belong to any department.
SELECT e.emp_name, d.department_name
FROM employees1 e
LEFT JOIN departments d
ON e.department_id = d.department_id
WHERE d.department_name IS NULL
ORDER BY e.emp_name;


-- 4: Requirements
-- Show all departments, even if they have no employees.
-- Use the alias:
-- employee_count
-- Sort by:
-- employee_count (descending)
-- d.department_name (ascending)
SELECT d.department_name,
       COUNT(e.emp_id) AS employee_count
FROM departments d
LEFT JOIN employees1 e
ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name
ORDER BY employee_count DESC, d.department_name;