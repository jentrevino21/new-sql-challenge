-- -- Create department table
-- CREATE TABLE departments (
-- 	dept_no varchar(100),
-- 	dept_name varchar(100),
-- 	Primary Key(dept_no)
-- );

-- View table columns and datatypes
-- SELECT * FROM departments;


-- Create employee table
-- CREATE TABLE employees (
-- 	emp_no INT,
-- 	birth_date DATE,
-- 	first_name varchar(100),
-- 	last_name varchar(100),
-- 	gender varchar(10),
-- 	hire_date DATE,
-- 	Primary Key(emp_no)
-- );


-- View table columns and datatypes
-- SELECT * FROM employees;

-- Create new table
-- CREATE TABLE dept_emp (
-- 	emp_no INT,
-- 		Foreign Key (emp_no) REFERENCES employees (emp_no), 
-- 	dept_no varchar(10),
-- 		Foreign Key (dept_no) REFERENCES departments (dept_no),
-- 	from_date DATE,
-- 	to_date DATE,
-- 	Primary Key(emp_no, dept_no)
-- );

-- View table columns and datatypes
-- SELECT * FROM dept_emp;

-- Create new table
-- CREATE TABLE dept_manager (
-- 	dept_no varchar(10),
-- 		Foreign Key (dept_no) REFERENCES departments (dept_no),
-- 	emp_no INT,
-- 		Foreign Key (emp_no) REFERENCES employees (emp_no), 
-- 	from_date DATE,
-- 	to_date DATE,
-- 	Primary Key(dept_no, emp_no)
-- );

-- View table columns and datatypes
-- SELECT * FROM dept_manager;

-- CREATE TABLE salaries (
-- 	emp_no INT,
-- 	Foreign Key (emp_no) REFERENCES employees (emp_no),
-- 	salary INT,
-- 	from_date DATE,
-- 	to_date DATE,
-- 	PRIMARY KEY (emp_no, salary)
-- );

---View table columns and datatypes
-- 	SELECT * FROM salaries;

-- CREATE TABLE titles (
-- 	emp_no INT,
-- 	FOREIGN KEY (emp_no) REFERENCES 
-- 	employees(emp_no),
-- 	title VARCHAR,
-- 	from_date DATE,
-- 	to_date DATE,
-- 	PRIMARY KEY (emp_no, from_date));
	
---View table columns and datatypes
-- 	SELECT * FROM titles;
