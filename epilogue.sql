-- ## Epilogue

-- Evidence in hand, you march into your boss's office and present the visualization. 
-- With a sly grin, your boss thanks you for your work. On your way out of the office, 
-- you hear the words, "Search your ID number." 
-- You look down at your badge to see that your employee ID number is 499942.

SELECT e.emp_no,e.last_name,e.first_name,e.sex,s.salary
FROM employees e 
LEFT JOIN salaries s 
ON e.emp_no = s.emp_no
WHERE e.emp_no=499942

SELECT e.emp_no,e.last_name,e.first_name,e.sex, d.dept_name, s.salary, e.hire_date
FROM employees e 
LEFT JOIN salaries s 
ON e.emp_no = s.emp_no
LEFT JOIN dept_emp dp
ON e.emp_no = dp.emp_no
	INNER JOIN departments d
	ON dp.dept_no=d.dept_no
WHERE e.emp_no=499942