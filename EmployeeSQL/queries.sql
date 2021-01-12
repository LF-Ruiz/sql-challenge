-- 1. List the following details of each employee: 
-- employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
inner join salaries s
on e.emp_no=s.emp_no

-- 2. List first name, last name, 
-- and hire date for employees who were hired in 1986.

-- Select columns to check the date format
SELECT *
FROM employees
LIMIT 5

-- Select using between, it's needed to put the date into '_' due to the format
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' and '1986-12-31'
ORDER BY hire_date asc

-- 3. List the manager of each department 
-- with the following information: 
-- department number, department name, 
-- the manager's employee number, last name, first name.

	-- select to check
SELECT *
FROM dept_manager

	-- Using inner join get
	-- From departments dept_no and dept_name
	-- From dept_manager emp_no, JOIN ON dept_no
	-- From employees last name, first name. join on emp_no
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments d
INNER JOIN dept_manager dm
ON d.dept_no=dm.dept_no
	INNER JOIN employees e
	ON dm.emp_no=e.emp_no

-- 4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
	--from employees emp_no, last_name, first_name
	--join from dept_emp emp_no and dept_no, only for joining purpose.
	--from departments dept_no
SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name
FROM employees e
INNER JOIN dept_emp d
ON e.emp_no=d.emp_no
	INNER JOIN departments dp
	ON d.dept_no=dp.dept_no
	
	
-- 5. List first name, last name, and sex for employees 
-- whose first name is "Hercules" and last names begin with "B."
	-- using like operator and '%' as wildcard.

SELECT first_name, last_name, sex
FROM employees
WHERE first_name='Hercules' AND last_name LIKE 'B%'


-- 6. List all employees in the Sales department, including their 
-- employee number, last name, first name, and department name.

	--Check dept_name format
Select *
from departments

	--from employees emp_no, last_name, first_name
	--join from dept_emp emp_no and dept_no, only for joining purpose.
	--from departments dept_no

SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name
FROM employees e
INNER JOIN dept_emp d
ON e.emp_no=d.emp_no
	INNER JOIN departments dp
	ON d.dept_no=dp.dept_no
WHERE dept_name='Sales'


-- 7. List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.

	-- check dept_name format
Select *
from departments

	-- Agregate the development department to the query using 'or'
	-- because 'and' it's going to search for both departments

SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name
FROM employees e
INNER JOIN dept_emp d
ON e.emp_no=d.emp_no
	INNER JOIN departments dp
	ON d.dept_no=dp.dept_no
WHERE dept_name='Sales' or dept_name='Development'
ORDER BY last_name  asc

-- 8. In descending order, list the frequency count of employee last names,
-- i.e., how many employees share each last name.

SELECT last_name, COUNT(*) AS freq_count
FROM employees
GROUP BY last_name
ORDER BY freq_count DESC;
