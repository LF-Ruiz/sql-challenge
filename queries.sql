-- 1. List the following details of each employee: 
-- employee number, last name, first name, sex, and salary.
    -- From employees join salaries


SELECT e.emp_no,e.last_name,e.first_name,e.sex,s.salary
FROM employees e 
LEFT JOIN salaries s 
ON e.emp_no = s.emp_no
ORDER BY last_name asc, first_name;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
    -- Check hire_date format
Select *
FROM employees
    -- employees where hire date = 1986 (Between 1986-01-01 and 1986-12-31)
Select first_name,last_name,hire_date
from employees
	--where hire_date between '1986-01-01' and '1986-12-31'
where DATE_PART('year',hire_date) = 1986
order by hire_date asc


-- 3. List the manager of each department with the following information:
-- department number, department name, the manager's employee number, last name, first name.
	-- dept_no,dept_name,emp_no,last_name,first_name
	--check values en dataset dept_manager
select *
from dept_manager

	-- join employees and dept_manager and departments
	
SELECT dp.dept_no, d.dept_name, dp.emp_no, e.last_name, e.first_name
FROM dept_manager dp
LEFT JOIN departments d
ON dp.dept_no = d.dept_no
LEFT JOIN employees e
ON dp.emp_no = e.emp_no
ORDER BY dept_name


-- Another way to do it
SELECT dp.dept_no,d.dept_name,e.emp_no,e.last_name,e.first_name
FROM employees e
INNER JOIN dept_manager dp
ON e.emp_no=dp.emp_no
	INNER JOIN departments d
	ON dp.dept_no=d.dept_no
ORDER BY dept_name asc




	
-- 4. List the department of each employee with the following information:
-- employee number, last name, first name, and department name.
Select *
from dept_manager

SELECT e.emp_no,e.last_name,e.first_name,d.dept_name
FROM employees e
LEFT JOIN dept_emp dp
ON e.emp_no=dp.emp_no
	LEFT JOIN departments d
	ON dp.dept_no=d.dept_no
ORDER BY last_name asc

-- 5. List first name, last name, and sex for employees whose
-- first name is "Hercules" and last names begin with "B."
    -- Using where '=' and like '%' as wildcard
    --From Employes Where first_name='Hercules' and last_name like 'B%'
SELECT first_name,last_name,sex
FROM employees
WHERE first_name='Hercules' 
	AND last_name like 'B%' 
	
-- 6. List all employees in the Sales department, including their
-- employee number, last name, first name, and department name.
    --Check dept_name format
Select *
From departments
    --Join employees, dept_emp and departments, dept_emp used as link.

	-- Create view for future use
CREATE VIEW EMP_DPT_2 AS
SELECT e.emp_no, e.last_name, e.first_name,d.dept_name
FROM employees e 
LEFT JOIN dept_emp dp
ON e.emp_no=dp.emp_no
	INNER JOIN departments d 
	ON d.dept_no=dp.dept_no
	
SELECT *
FROM EMP_DPT_2
WHERE dept_name='Sales'
ORDER BY last_name asc
--	ORDER BY first_name asc;

-- 7. List all employees in the Sales and Development departments, including their
-- employee number, last name, first name, and department name.
	--Using EMP_DPT_2 view previously created 
SELECT *
FROM EMP_DPT_2
WHERE dept_name='Sales' OR dept_name='Development'
ORDER BY last_name asc
--	ORDER BY first_name asc;



-- 8. In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
    --Group by last name, then count
SELECT last_name, COUNT(*) AS freq_count
FROM employees
GROUP BY last_name
ORDER BY freq_count DESC;