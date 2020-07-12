-- Select * from departments

-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT 
	e.emp_no, e.last_name, e.first_name, e.gender, s.salary
From employees as e 
INNER JOIN salaries as s ON e.emp_no = s.emp_no;

-- 2. List employees who were hired in 1986.
SELECT 
	emp_no, last_name, first_name, hire_date
From employees 
WHERE hire_date BETWEEN '1986-1-1' and '1986-12-31';

-- 3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT 
dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
FROM dept_manager as dm
INNER JOIN employees as e on dm.emp_no = e.emp_no
INNER JOIN departments as d on d.dept_no = dm.dept_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT 
de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp as de
INNER JOIN employees as e on de.emp_no = e.emp_no
INNER JOIN departments as d on d.dept_no = de.dept_no;

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT 
	last_name, first_name
From employees 
WHERE first_name ='Hercules' and last_name like 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT 
de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp as de
INNER JOIN employees as e on de.emp_no = e.emp_no
INNER JOIN departments as d on d.dept_no = de.dept_no 
WHERE d.dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT 
de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp as de
INNER JOIN employees as e on de.emp_no = e.emp_no
INNER JOIN departments as d on d.dept_no = de.dept_no 
WHERE d.dept_name = 'Sales' or d.dept_name = 'Development';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT 
	last_name, COUNT(last_name)
From employees
GROUP BY last_name 
ORDER BY count(last_name) desc;


