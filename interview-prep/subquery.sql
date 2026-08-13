-- 1: Question
-- Find all employees whose salary is greater than the average salary of all employees.
-- Display:
-- emp_name
-- salary
SELECT
    emp_name,
    salary
FROM employees1
WHERE salary > (
    SELECT AVG(salary)
    FROM employees1
)
ORDER BY salary DESC,
         emp_name ASC;