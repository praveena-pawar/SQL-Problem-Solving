-- 1: Requirements
-- Show only employees who have a matching department and a matching location.
-- Sort by:
-- city ascending
-- emp_name ascending
SELECT e.emp_name, d.department_name, l.city
FROM employees1 e
INNER JOIN departments d
ON e.department_id = d.department_id
INNER JOIN locations l
ON l.department_id = d.department_id
ORDER BY city, emp_name;


-- 2: Requirements
-- Show only employees who:
-- belong to Engineering or HR
-- have salary at least 55,000
-- work in India