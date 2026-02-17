CREATE TABLE employee(
	employee_id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	position VARCHAR(50),
	department VARCHAR(50),
	hire_date DATE,
	salary NUMERIC(10,2)
);

SELECT * FROM employee;


INSERT INTO employee(name, position, department, hire_date, salary)
		VALUES('Ajit Sharma', 'Date Analyst', 'Data Science', '2022-05-15', 65000.00),
		('Priya Desai', 'Software Engineer', 'IT', '2021-09-20', 75000.00),
		('Rajesh Kumar', 'HR Manager', 'Human Resources', '2010-03-10', 82000.00),
		('Sneha Patel', 'Marketing Specialist', 'Marketing', '2022-11-25', 58000.00),
		('vikram Singh', 'Sales Executive', 'Sales', '2023-02-12', 62000.00);

SELECT * FROM employee;

TRUNCATE TABLE employee;

SELECT * FROM employee;

TRUNCATE TABLE employee RESTART IDENTITY;


DELETE FROM employee
WHERE salary = 62000.00;


ALTER TABLE employee
DROP COLUMN salary;




--DAY07







SELECT name FROM employee;

SELECT name, hire_date FROM employee;


UPDATE employee
SET name = 'GYAN PRAKASH'
WHERE position = 'HR Manager';

SELECT * FROM employee;

SELECT * FROM employee ORDER BY employee_id DESC;

SELECT * FROM employee ORDER BY employee_id ASC;


UPDATE employee
SET name='MAGAN', position='Date Science'
WHERE position='Date Analyst';


SELECT * FROM employee;




--DAY08(In day 08 we study about Toolbar which is exist just above the output space area in this visualization tool also exists.)
--DAY09(In day 09 we study about Upper Toolbar which exists top of the working page)
--DAY10(To Rean)
--DAY11(Assignment till Day10)



CREATE DATABASE assignment;



-- Drop the table if it already exists

DROP TABLE IF EXISTS employees;

-- Create the employees table

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10, 2) CHECK (salary > 0),
    joining_date DATE NOT NULL,
    age INT CHECK (age >= 18)
);

SELECT * FROM employees;

-- Insert data into employees table


INSERT INTO employees (first_name, last_name, department, salary, joining_date, age) VALUES
('Amit', 'Sharma', 'IT', 60000.00, '2022-05-01', 29),
('Neha', 'Patel', 'HR', 55000.00, '2021-08-15', 32),
('Ravi', 'Kumar', 'Finance', 70000.00, '2020-03-10', 35),
('Anjali', 'Verma', 'IT', 65000.00, '2019-11-22', 28),
('Suresh', 'Reddy', 'Operations', 50000.00, '2023-01-10', 26);



-- Assignment Questions
--Q1: Retrieve all employees’ first_name and their departments.

SELECT FIRST_NAME,
	DEPARTMENT
FROM EMPLOYEES;

--Q2: Update the salary of all employees in the 'IT' department by increasing it by 10%.

UPDATE employees
SET salary=salary + (salary*0.1 )
WHERE department ='IT';


SELECT * FROM employees;
--Q3: Delete all employees who are older than 34 years.

DELETE FROM employees
WHERE age>34;


--Q4: Add a new column `email` to the `employees` table.

ALTER TABLE employees
ADD COLUMN email VARCHAR(100);



--Q5: Rename the `department` column to `dept_name`.
ALTER TABLE employees
RENAME COLUMN department TO dept_name;

SELECT * FROM employees;
--Q6: Retrieve the names of employees who joined after January 1, 2021.

SELECT first_name, last_name, joining_date FROM employees
WHERE joining_date > '2021-01-01';


--Q7: Change the data type of the `salary` column to `INTEGER`.

ALTER TABLE employees 
ALTER COLUMN salary TYPE INTEGER USING salary::INTEGER;

SELECT * FROM employees;

--Q8: List all employees with their age and salary in descending order of salary.

SELECT first_name, age, salary FROM employees 
ORDER BY salary DESC;

SELECT

--Q9: Insert a new employee with the following details: 
		-- ('Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30)

INSERT INTO employees(first_name, last_name, dept_name, salary, joining_date, age)
VALUES('Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30);
		
--Q10: Update age of employee +1 to every employee 

UPDATE employees
SET age=age+1;

--DAY_12(Importing a csv file into an SQL Database)
--DAY_13(Importing a csv file into an SQL Database)
--DAY_14(Types of Operators in sql)



SELECT first_name, salary, (salary*0.1) AS Bonus FROM employees;

SELECT first_name, last_name, salary,
		(salary*12) AS annual_salary, 
		(salary*0.05) AS increment_salary,
		(salary + salary*0.05) AS new_salary,
		(salary*1.05) AS new_salary2
FROM employees;







--DAY_15(Comparison Operator in SW)






SELECT * FROM employees;


SELECT * FROM employees
WHERE age = 30;


SELECT * FROM employees
WHERE age<>30;


SELECT * FROM employees
WHERE salary>=55000;


SELECT first_name, dept_name, age FROM employees
WHERE dept_name = 'IT';






--DAY16(Logical Operator)







SELECT * FROM employees;


SELECT * FROM employees
WHERE age>=32 AND salary>=50000;


SELECT * FROM employees
WHERE age>=32 OR salary>=55000;


SELECT * FROM employees
WHERE NOT (dept_name = 'IT');







--DAY17(BETWEEN, LIKE, and IN Operator in SQL)






SELECT * FROM employees;


SELECT first_name, last_name, salary
FROM employees
WHERE salary BETWEEN 40000 AND 60000;


SELECT first_name, last_name, email
FROM employees
WHERE email LIKE '@gmail.com';


SELECT first_name , last_name, dept_name
FROM employees
WHERE dept_name IN ('Finance','Marketing');






--DAY_18(Others Operator in SQL)







SELECT * FROM employees;


SELECT first_name, last_name, email
FROM employees
WHERE email IS NULL;


SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC;


SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 5;


SELECT DISTINCT dept_name 
FROM employees;

SELECT COUNT(DISTINCT dept_name)
FROM employees;


SELECT COUNT(DISTINCT dept_name) AS Department 
FROM employees;






--DAY_19(Set of Operators)







SELECT * FROM employees;


CREATE TABLE students_2023(
	student_id INT PRIMARY KEY,
	student_name VARCHAR(100),
	course VARCHAR(50)

);

INSERT INTO students_2023(student_id, student_name, course) VALUES
(1, 'Aarav Sharma', 'Computer Science'),
(2, 'Ishita Verma', 'Mechanical Engineering'),
(3, 'Kabir Patel', 'Electornics'),
(4, 'Ananya Desai', 'Civil Engineering'),
(5, 'Rahul Gupta', 'Computer Science');

SELECT * FROM students_2023;



DROP TABLE IF EXISTS students_2023;

CREATE TABLE students_2024(
	student_id INT PRIMARY KEY,
	student_name VARCHAR(100),
	course VARCHAR(50)

);


INSERT INTO students_2024(student_id, student_name, course) VALUES
(3, 'Kabir Patel', 'Electornics'),
(4, 'Ananya Desai', 'Civil Engineering'),
(6, 'Meera Rao', 'Computer Science'),
(7, 'Vikram Singh', 'Mathematics'),
(8, 'Sanya Kapoor', 'Physics');

SELECT * FROM students_2024;


SELECT student_name, course
FROM students_2023
UNION
SELECT student_name, course
FROM students_2024;



SELECT student_name, course
FROM students_2023
UNION ALL
SELECT student_name, course
FROM students_2024;



SELECT student_name, course
FROM students_2023
INTERSECT
SELECT student_name, course
FROM students_2024;



SELECT student_name, course
FROM students_2023
EXCEPT
SELECT student_name, course
FROM students_2024;






--DAY_20(Functions in SQL)






DROP TABLE IF EXISTS products;
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price NUMERIC(10, 2),
    quantity INT,
    added_date DATE,
    discount_rate NUMERIC(5, 2)
);

INSERT INTO products (product_name, category, price, quantity, added_date, discount_rate) VALUES
('Laptop', 'Electronics', 75000.50, 10, '2024-01-15', 10.00),
('Smartphone', 'Electronics', 45000.99, 25, '2024-02-20', 5.00),
('Headphones', 'Accessories', 1500.75, 50, '2024-03-05', 15.00),
('Office Chair', 'Furniture', 5500.00, 20, '2023-12-01', 20.00),
('Desk', 'Furniture', 8000.00, 15, '2023-11-20', 12.00),
('Monitor', 'Electronics', 12000.00, 8, '2024-01-10', 8.00),
('Printer', 'Electronics', 9500.50, 5, '2024-02-01', 7.50),
('Mouse', 'Accessories', 750.00, 40, '2024-03-18', 10.00),
('Keyboard', 'Accessories', 1250.00, 35, '2024-03-18', 10.00),
('Tablet', 'Electronics', 30000.00, 12, '2024-02-28', 5.00);


SELECT * FROM products;



SELECT SUM(quantity) AS total_quantity
FROM products;


SELECT SUM(quantity) AS quantity_of_ele
FROM products
WHERE category='Electronics' AND price > 20000;



SELECT COUNT(*) AS total_products
FROM products;


SELECT COUNT(*) AS total_products
FROM products
WHERE product_name LIKE '%phone%';


SELECT AVG(price) AS average_price
FROM products;


SELECT AVG(price) AS average_price
FROM products
WHERE category='Accessories' OR added_date>'2024-02-01';


SELECT MAX(price) AS max_price
FROM products;


SELECT MIN(price) AS min_price
FROM products;


SELECT MAX(price) AS max_price,
		MIN(price) AS min_price
FROM products;







--DAY_21(String functions in SQL)







SELECT * FROM products;

SELECT UPPER(category) AS Category_Capital
FROM products;

SELECT LOWER(category) AS Category_Capital
FROM products;

SELECT LENGTH(category) AS Category_Capital
FROM products;



SELECT CONCAT(product_name, '-', category) AS product_details
FROM products;

SELECT SUBSTRING(product_name,1,5) AS short_name
FROM products;

SELECT product_name, LENGTH(category) AS Category_Capital
FROM products;


SELECT LENGTH(TRIM(' Monitor ')) AS Trimmed_Text;


SELECT REPLACE(product_name, 'phone', 'Device') AS updated
FROM products;


SELECT LEFT(category, 3) AS Category_Capital
FROM products;

SELECT RIGHT(category, 3) AS Category_Capital
FROM products;





--DAY_22(Date & Time functins in SQL)






SELECT * FROM products;


SELECT NOW() AS CURRENT_DATETIME;

SELECT CURRENT_DATE AS today_date;


SELECT product_name,
	    EXTRACT(YEAR FROM added_date) AS Year_Added,
		EXTRACT(MONTH FROM added_date) AS Month_Added,
		EXTRACT(DAY FROM added_date) AS Day_Added
FROM products;



SELECT product_name,
	    AGE(CURRENT_DATE, added_date) AS Age_since_added
FROM products;



SELECT product_name,
	    TO_CHAR(added_date, 'DD-Mon-YYYY') AS FORMATED_DATE
FROM products;






--DAY_23(Date & Time functions in SQL)






SELECT * FROM products;

SELECT product_name, added_date,
		DATE_PART('dow', added_date) AS day_of_week
FROM products;



SELECT product_name, added_date,
		DATE_TRUNC('week', added_date) AS Month_start
FROM products;


SELECT product_name, added_date,
		added_date + INTERVAL '6 days' AS new_date
FROM products;


SELECT TO_DATE('28-11-2024', 'DD-MM-YYYY') AS converted_date;








--DAY_24(Conditional functions in SQL)








SELECT * FROM products;


SELECT product_name, price,
		CASE 
			WHEN price>=50000 THEN 'Expensive'
			WHEN price>=10000 AND price<=49999 THEN 'Moderate'
			ELSE 'Affordable'
		END AS price_catogory
FROM products;







--DAY_25(Assignment on CASE functions in SQL)






SELECT * FROM products;


SELECT product_name, quantity,
		CASE 
			WHEN quantity>=10 THEN 'In Stock'
			WHEN quantity>=5 AND quantity<=9 THEN 'Limited Stock'
			ELSE 'Out of Stock'
		END AS stock_status
FROM products;




SELECT product_name, category,
		CASE 
			WHEN category LIKE 'Electronics%' THEN 'Electronics Items'
			WHEN category LIKE 'Furniture%' THEN 'Furniture Items'
			ELSE 'Accessories Items'
		END AS category_Items
FROM products;






--DAY_26(COALESCE Function in SQL)







SELECT * FROM products;


ALTER TABLE products
DROP COLUMN discount_price;


ALTER TABLE products
ADD COLUMN  discount_price NUMERIC(10,2);


UPDATE products
SET discount_price = NULL
WHERE product_name IN('Laptop', 'Desk');



UPDATE products
SET discount_price = price*0.9
WHERE product_name NOT IN('Laptop', 'Desk');



SELECT product_name, discount_price 
FROM products;


SELECT product_name, 
		COALESCE(discount_price, price) AS final_price
FROM products;






--DAY_27(Window functions in SQL)






SELECT * FROM products;


SELECT product_name, category, price,
		ROW_NUMBER() OVER(PARTITION BY category ORDER BY price DESC) AS row_num
FROM products;



SELECT product_name, category, price,
		DENSE_RANK() OVER(PARTITION BY category ORDER BY price DESC) AS Ranking
FROM products;



SELECT product_name, category, price,
		SUM(price) OVER( PARTITION BY category ORDER BY price DESC) AS Ranning_total
FROM products;






--DAY_28(Joins in SQL)






-- Create Employees Table
CREATE TABLE Employees3 (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT
);

-- Insert Data into Employees
INSERT INTO Employees3 (first_name, last_name, department_id)
VALUES
('Rahul', 'Sharma', 101),
('Priya', 'Mehta', 102),
('Ankit', 'Verma', 103),
('Simran', 'Kaur', NULL),
('Aman', 'Singh', 101);

SELECT * FROM employees3;

-- Create Departments Table
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Insert Data into Departments
INSERT INTO Departments (department_id, department_name)
VALUES
(101, 'Sales'),
(102, 'Marketing'),
(103, 'IT'),
(104, 'HR');


SELECT * FROM Departments;



SELECT e.employee_id, e.first_name, e.last_name,
		d.department_id, d.department_name
FROM Employees3 e
INNER JOIN
Departments d
ON e.department_id = d.department_id





SELECT e.employee_id, e.first_name, e.last_name,
		d.department_id, d.department_name
FROM Employees3 e
LEFT JOIN
Departments d
ON e.department_id = d.department_id




SELECT e.employee_id, e.first_name, e.last_name,
		d.department_id, d.department_name
FROM Employees3 e
RIGHT JOIN
Departments d
ON e.department_id = d.department_id






--DAY29(Joins in SQL(ii))








SELECT e.employee_id, e.first_name, e.last_name,
		d.department_id, d.department_name
FROM Employees3 e
FULL OUTER JOIN
Departments d
ON e.department_id = d.department_id




SELECT e.first_name, e.last_name, d.department_name
FROM Employees3 e
CROSS JOIN
Departments d




