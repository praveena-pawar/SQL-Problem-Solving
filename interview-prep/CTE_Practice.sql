-- 1: Find the average salary of each department using a CTE.

-- Display:
-- department_id
-- average_salary

-- Requirements:
-- Round the average salary to 2 decimal places.
-- Sort by average_salary in descending order.
-- If average salaries tie, sort by department_id in ascending order.
-- You must use WITH.
-- Do not use a subquery in the main query.
WITH department_avg AS (
    SELECT
        department_id,
        ROUND(AVG(salary), 2) AS average_salary
    FROM employees
    GROUP BY department_id
)
SELECT
    department_id,
    average_salary
FROM department_avg
ORDER BY average_salary DESC, department_id ASC;



-- 2: Find departments whose average salary is greater than ₹60,000.
-- Display:
-- department_id
-- average_salary
-- employee_count

-- Requirements:
-- Use a CTE named department_stats.
-- Calculate the average salary using AVG(salary).
-- Calculate the number of employees using COUNT(*).
-- Round the average salary to 2 decimal places.
-- Return only departments whose average salary is greater than 60000.
-- Sort by average_salary DESC, then department_id ASC.