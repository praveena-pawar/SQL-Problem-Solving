
-- 1: Display:
-- department_id
-- the total number of employees in each department
SELECT department_id,
       COUNT(*) AS employee_count
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 1
ORDER BY employee_count DESC, department_id;


-- 2: department_id
-- the average salary of employees in each department
SELECT department_id,
       ROUND(AVG(salary), 2) AS avg_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 55000
ORDER BY avg_salary DESC, department_id;


-- 3: Display:
-- department_id
-- the highest salary in each department
-- the lowest salary in each department
SELECT department_id,
	MAX(salary) AS highest_salary,
    MIN(salary) AS lowest_salary
FROM employees
GROUP BY department_id
HAVING MAX(salary) >= 75000
ORDER BY highest_salary DESC, department_id;


-- 4: Display:
-- department_id
-- the total salary paid to employees in each department
select department_id,
	SUM(salary) AS total_salary
FROM employees
GROUP BY department_id
HAVING SUM(salary) > 100000
ORDER BY total_salary DESC, department_id;


-- 5: For each department, display:
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


-- 6: Requirements
-- Count only employees whose salary is greater than or equal to 55,000.
-- Show only departments where the total salary of these employees is greater than 120,000.
-- Name the columns:
-- employee_count
-- total_salary
SELECT department_id,
	COUNT(*)  AS employee_count,
	SUM(salary) AS total_salary
FROM employees
WHERE salary >= 55000
GROUP BY department_id
HAVING SUM(salary) > 120000
ORDER BY total_salary DESC, employee_count DESC, department_id;


-- 7: Requirements
-- Consider only employees who were hired on or after '2021-01-01'.
-- average_salary should be rounded to 2 decimal places.
-- Show only departments where:
-- the number of employees is at least 2, and
-- the average salary is greater than 55,000.
SELECT department_id,
	COUNT(*)  AS employee_count,
	ROUND(AVG(salary), 2) AS average_salary
FROM employees
WHERE hire_date >= '2021-01-01'
GROUP BY department_id 
HAVING AVG(salary) > 55000
	AND 
    COUNT(*) >= 2
ORDER BY average_salary DESC, employee_count DESC, department_id;


-- 8: Consider only employees whose salary is at least 50,000.
-- Show only departments where:
-- the total salary is greater than or equal to 150,000, and
-- the highest salary is at least 75,000.
SELECT department_id,
	COUNT(*)  AS employee_count,
	SUM(salary) AS total_salary,
    MAX(salary) AS highest_salary
FROM employees
WHERE salary >= 50000
GROUP BY department_id
HAVING SUM(salary) >= 150000
	AND
    MAX(salary) >= 75000
ORDER BY total_salary DESC, highest_salary DESC, department_id;


-- 9: Requirements
-- Consider only employees whose hire_date is before '2023-01-01'.
-- average_salary should be rounded to 2 decimal places.
-- Show only departments where:
-- employee_count is at least 2, and
-- total_salary is greater than 100000.
SELECT department_id,	
	COUNT(*)  AS employee_count,
	ROUND(AVG(salary), 2) AS average_salary,
    SUM(salary) AS total_salary
FROM employees
WHERE hire_date < '2023-01-01'
GROUP BY department_id
HAVING COUNT(*) >= 2
	AND
    SUM(salary) > 100000
ORDER BY employee_count DESC, total_salary DESC, department_id;


-- 20: Requirements
-- Consider only employees whose salary is between 50,000 and 80,000 (inclusive).
-- average_salary should be rounded to 2 decimal places.
-- Show only departments where:
-- employee_count is at least 2, and
-- average_salary is greater than or equal to 60,000.
SELECT department_id,	
	COUNT(*)  AS employee_count,
	ROUND(AVG(salary), 2) AS average_salary,
    MAX(salary) AS highest_salary,
    MIN(salary) AS lowest_salary
FROM employees
WHERE salary BETWEEN 50000 AND 80000
GROUP BY department_id  
HAVING COUNT(*) >= 2
	AND 
    ROUND(AVG(salary), 2) >= 60000
ORDER BY average_salary DESC, highest_salary  DESC, department_id;