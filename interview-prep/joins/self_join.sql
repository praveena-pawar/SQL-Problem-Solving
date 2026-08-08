-- 1: Display:
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


-- 2: Requirements
-- Show each manager and the number of employees reporting to them.
-- Use the aliases:
-- manager_name
-- number_of_employees
-- Sort by:
-- number_of_employees (descending)
-- manager_name (ascending)