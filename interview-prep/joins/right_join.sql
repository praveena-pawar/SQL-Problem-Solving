-- Q: WHAT IS RIGHT JOIN ?
-- RIGHT JOIN returns all rows from the RIGHT table, along with matching rows from the LEFT table. 
-- If there's no match, the LEFT table columns are NULL.



LEFT JOIN 
-----------------------
FROM departments d
LEFT JOIN employees1 e
ON d.department_id = e.department_id


RIGHT JOI
-----------------------
FROM employees1 e
RIGHT JOIN departments d
ON e.department_id = d.department_id

--------------------------
They produce the same result.
Why?
Because in both cases, you're preserving all departments.




-- 1: Question
-- Display:
-- e.emp_name
-- d.department_name
-- Show all departments, even if they have no employees.

SELECT e.emp_name, d.department_name
FROM employees1 e
RIGHT JOIN departments d
ON e.department_id = d.department_id
ORDER BY d.department_name, e.emp_name;




-- 2: Requirements
-- Show all departments, even if they have no employees.
-- Consider only employees whose salary is greater than or equal to 50,000.
-- average_salary should be rounded to 2 decimal places.
-- Show only departments where:
-- employee_count is 0 or at least 2.
-- Use the aliases:
-- employee_count
-- average_salary