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
SELECT
    m.emp_name AS manager_name,
	COUNT(e.emp_id) AS number_of_employees
FROM employees2 e
JOIN employees2 m
    ON e.manager_id = m.emp_id
GROUP BY  m.emp_id, m.emp_name
ORDER BY number_of_employees DESC, manager_name;



-- 3: Requirements
-- Show all employees, including employees who do not have a manager.
-- If an employee has no manager, manager_name should be NULL.
-- Sort by:
-- employee_name (ascending)
SELECT
    e.emp_name AS employee_name,
    m.emp_name AS manager_name
FROM employees2 e
LEFT JOIN employees2 m
    ON e.manager_id = m.emp_id
ORDER BY employee_name;