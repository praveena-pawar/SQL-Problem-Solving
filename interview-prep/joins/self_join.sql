-- 40: Display:
-- Employee name
-- Manager name
-- Use these aliases:
-- employee_name
-- manager_name
SELECT
    e.emp_name AS employee_name,
    m.emp_name AS manager_name
FROM employees2 e
JOIN employees2 m
    ON e.manager_id = m.emp_id
ORDER BY employee_name;