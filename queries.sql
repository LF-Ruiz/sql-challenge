-- 1. List the following details of each employee: 
-- employee number, last name, first name, sex, and salary.
    -- From employees join salaries
emp_no,last_name,first_name,sex,

SELECT e.emp_no,e.last_name,e.first_name,e.sex,s.salary
FROM employees e 
LEFT JOIN salaries s 
ON employees.emp_no = salaries.emp_no
ORDER BY emp_no

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
    -- Check hire_date format
Select *
FROM employees
    -- employees where hire date = 1986
first_name,last_name,hire_date
-- 3. List the manager of each department with the following information:
-- department number, department name, the manager's employee number, last name, first name.
dept_no,dept_name,emp_no,last_name,first_name
-- 4. List the department of each employee with the following information:
-- employee number, last name, first name, and department name.
emp_no,last_name,first_name,dept_name
-- 5. List first name, last name, and sex for employees whose
-- first name is "Hercules" and last names begin with "B."
    -- Using where '=' and like '%' as wildcard
    --From Employes Where first_name='Hercules' and last_name like 'B%'

first_name,last_name,sex, 
-- 6. List all employees in the Sales department, including their
-- employee number, last name, first name, and department name.
    --Check dept_name format
Select *
From departments
    --Join employees, dept_emp and departments, dept_emp used as link.

    emp_no,last_name,first_name,dept_name
-- 7. List all employees in the Sales and Development departments, including their
-- employee number, last name, first name, and department name.
emp_no,last_name,first_name,dept_name
-- 8. In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
    --Group by last name, then count
SELECT last_name, COUNT(*) AS freq_count
FROM employees
GROUP BY last_name
ORDER BY freq_count DESC;