CREATE DATABASE interview;
USE interview;

CREATE TABLE employees(
emp_id INT UNIQUE,
emp_name VARCHAR(20),
department_id INT,
salary INT,
hire_date DATE
);


INSERT INTO employees VALUES
(1, 'Alice', 101, 60000, '2022-10-10'),
(2, 'Bob', 102, 45000, '2021-05-18'),
(3, 'Charlie', 101, 75000, '2020-03-22'),
(4, 'David', 103, 50000, '2023-07-01'),
(5, 'Eva', 102, 80000, '2019-11-30'),
(6, 'Frank', 101, 55000, '2022-08-14');

SELECT * FROM employees;


CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    emp_id INT,
    order_amount DECIMAL(10,2)
);