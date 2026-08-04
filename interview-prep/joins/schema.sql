CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);



INSERT INTO departments VALUES
(101, 'Engineering'),
(102, 'HR'),
(103, 'Finance'),
(104, 'Marketing');




CREATE TABLE employees1 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department_id INT,
    salary INT,
    hire_date DATE
);

    
INSERT INTO employees1 VALUES
(1, 'Alice', 101, 60000, '2022-01-10'),
(2, 'Bob', 102, 45000, '2021-05-18'),
(3, 'Charlie', 101, 75000, '2020-03-22'),
(4, 'David', 103, 50000, '2023-07-01'),
(5, 'Eva', 102, 80000, '2019-11-30'),
(6, 'Frank', 101, 55000, '2022-08-14');



SELECT * FROM employees1;
SELECT * FROM departments;

INSERT INTO employees1 VALUES
(7, 'George', 105, 65000, '2022-09-15');
