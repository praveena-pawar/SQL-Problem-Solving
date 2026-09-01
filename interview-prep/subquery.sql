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



-- 2: Find all employees who work in departments whose average salary is greater than 60,000.
-- Display:
-- emp_name
-- department_id
-- salary
SELECT
    e.emp_name,
    e.department_id,
    e.salary
FROM employees1 e
JOIN departments d
    ON e.department_id = d.department_id
WHERE e.department_id IN (
    SELECT department_id
    FROM employees1
    GROUP BY department_id
    HAVING AVG(salary) > 60000
)
ORDER BY
    e.department_id ASC,
    e.salary DESC,
    e.emp_name ASC;



-- 3: Question
-- Find all employees who do not belong to any department whose average salary is greater than 60,000.
-- Display:
-- emp_name
-- department_id
-- salary
SELECT
    e.emp_name,
    e.department_id,
    e.salary
FROM employees1 e
JOIN departments d
    ON e.department_id = d.department_id
WHERE e.department_id NOT IN (
    SELECT department_id
    FROM employees1
    GROUP BY department_id
    HAVING AVG(salary) > 60000
)
ORDER BY
    e.department_id ASC,
    e.salary DESC,
    e.emp_name ASC;



-- 4: Question
-- Find all employees from employees1 who have at least one order in the orders table.
-- Display:
-- emp_name
-- salary
SELECT
    e.emp_name,
    e.salary
FROM employees1 e
WHERE EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.emp_id = e.emp_id
);




-- 5: Find all employees who have never placed an order.
-- Display:
-- emp_name
-- salary
SELECT
    e.emp_name,
    e.salary
FROM employees1 e
WHERE NOT EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.emp_id = e.emp_id
);



-- 6: Question
-- Find employees whose salary is greater than the average salary of their own department.
-- Display:
-- emp_name
-- department_id
-- salary
SELECT
    e.emp_name,
    e.department_id,
    e.salary
FROM employees1 e
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM employees1 e2
    WHERE e2.department_id = e.department_id
);



-- 7: Question
-- Find the department with the highest average salary.
-- Return:
-- department_id
-- average_salary
-- Round average_salary to 2 decimal places.
SELECT
    department_id,
    average_salary
FROM (
    SELECT
        department_id,
        ROUND(AVG(salary), 2) AS average_salary
    FROM employees1
    GROUP BY department_id
) AS department_avg
WHERE average_salary = (
    SELECT MAX(average_salary)
    FROM (
        SELECT
            ROUND(AVG(salary), 2) AS average_salary
        FROM employees1
        GROUP BY department_id
    ) AS averages
);




-- 8: Question
-- Find all employees who earn more than the average salary of employees in departments whose average salary is greater than 60,000.
-- Display:
-- emp_name
-- department_id
-- salary
SELECT
    emp_name,
    department_id,
    salary
FROM employees1
WHERE salary > (
    SELECT AVG(salary)
    FROM employees1
    WHERE department_id IN (
        SELECT department_id
        FROM employees1
        GROUP BY department_id
        HAVING AVG(salary) > 60000
    )
);