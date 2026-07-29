-- 15: For each department, display:
-- department_id
-- Total number of employees
-- Average salary (rounded to 2 decimal places)
-- Highest salary
-- Lowest salary
SELECT department_id,
	COUNT(*) AS employee_count,
    ROUND(AVG(salary), 2) AS avg_salary,
    MAX(salary) AS highest_salary,
    MIN(salary) AS lowest_salary
FROM employees
GROUP BY department_id
HAVING COUNT(*) >= 2
ORDER BY employee_count DESC, avg_salary DESC, department_id;