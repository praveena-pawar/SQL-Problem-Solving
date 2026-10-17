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