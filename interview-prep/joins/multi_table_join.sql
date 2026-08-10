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
SELECT e.emp_name, d.department_name, l.city, e.salary
FROM employees1 e
INNER JOIN departments d
ON e.department_id = d.department_id
INNER JOIN locations l
ON l.department_id = d.department_id
WHERE d.department_name IN ('Engineering', 'HR')
		AND 
        e.salary >= 55000
        AND 
        country = 'India'
ORDER BY d.department_name, e.salary DESC, e.emp_name;


-- 3: Requirements
-- Show only employees with salary at least 50,000.
-- Consider only departments located in India.
-- Show only departments where:
-- employee_count is at least 2
-- total_salary is greater than 120,000
SELECT l.country, 
	   d.department_name, 
       COUNT(e.emp_id) AS employee_count,
       SUM(e.salary) AS total_salary
FROM employees1 e
INNER JOIN departments d
ON e.department_id = d.department_id
INNER JOIN locations l
ON l.department_id = d.department_id
WHERE e.salary >= 50000
GROUP BY l.country, d.department_id, d.department_name
HAVING COUNT(e.emp_id) >= 2
		AND 
        SUM(e.salary) > 120000
ORDER BY total_salary DESC, department_name;



-- 4: Requirements
-- Consider only employees who:
-- were hired on or after '2020-01-01'
-- have salary between 50,000 and 90,000 inclusive
-- Show only departments where:
-- employee_count >= 2
-- average_salary >= 60,000
-- highest_salary >= 75,000
-- Round average_salary to 2 decimal places.
SELECT  d.department_name, 
		l.city,
       COUNT(e.emp_id) AS employee_count,
       ROUND(AVG(e.salary), 2) AS average_salary,
       MAX(e.salary) AS highest_salary
FROM employees1 e
INNER JOIN departments d
ON e.department_id = d.department_id
INNER JOIN locations l
ON l.department_id = d.department_id
WHERE hire_date >= '2020-01-01'
	  AND 
      e.salary BETWEEN 50000 AND 90000
GROUP BY l.city, d.department_id, d.department_name
HAVING COUNT(e.emp_id) >= 2
		AND 
        ROUND(AVG(e.salary), 2) >= 60000
        AND 
        MAX(e.salary) >= 75000
ORDER BY average_salary DESC, highest_salary DESC, department_name;