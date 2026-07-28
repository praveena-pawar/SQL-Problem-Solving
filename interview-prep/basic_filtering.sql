-- 1: -- Display emp_name and salary for employees whose salary is greater than 55,000, ordered by salary in descending order.
SELECT emp_name, salary 
FROM employees
WHERE salary > 55000
ORDER BY salary DESC;


-- 2: Write an SQL query to display all unique department_id values from the employees table.
SELECT DISTINCT department_id
FROM employees
ORDER BY department_id;