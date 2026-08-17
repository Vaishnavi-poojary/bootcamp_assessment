CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES Employee(employee_id)
);
INSERT INTO Employee (employee_id, employee_name, department, salary, manager_id)
VALUES
(1, 'Rahul', 'IT', 60000, NULL),
(2, 'Priya', 'HR', 45000, 1),
(3, 'Arjun', 'Finance', 55000, 1),
(4, 'Sneha', 'IT', 70000, 1),
(5, 'Kiran', 'Sales', 40000, 2),
(6, 'Ananya', 'Finance', 65000, 3),
(7, 'Rohan', 'Sales', 52000, 2),
(8, 'Meera', 'HR', 48000, 2);
SELECT * FROM Employee;
SELECT DISTINCT department FROM Employee;
SELECT *FROM Employee WHERE salary > 50000;
SELECT *FROM Employee WHERE department = 'IT';
SELECT *FROM Employee WHERE salary BETWEEN 40000 AND 60000;
SELECT *FROM Employee WHERE department IN ('IT', 'Finance');
SELECT *FROM Employee ORDER BY salary DESC;
SELECT *FROM Employee WHERE department = 'IT' AND salary > 50000;
SELECT *FROM Employee WHERE department = 'IT' OR department = 'HR';
SELECT *FROM Employee WHERE NOT department = 'HR';
SELECT *FROM Employee WHERE (department = 'IT' OR department = 'Finance') AND salary > 50000;

