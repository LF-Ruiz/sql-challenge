# sql-challenge
 This repo contains the assignment for sql module of Rice University Data Bootcamp


# Questions
## Data Modeling 
https://github.com/LF-Ruiz/sql-challenge/blob/main/ERD_employee_sql-challenge.PNG


#### Data Analysis

##### Questions:
1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

##### Answer:
https://github.com/LF-Ruiz/sql-challenge/blob/main/queries.sql

# Overview
There are 6 total tables included in the CSV dataset:
•	departments
•	dept_emp
•	dept_manager
•	employees
•	salaries
•	titles

From that, we can set two tables as main tables: departments and employees. The other tables relate to these two tables. 

dept_no in departments dataset is the primary key 
emp_no in employees dataset is the primary key
The other four datasets are somehow related

## Bonus
https://github.com/LF-Ruiz/sql-challenge/blob/main/EmployeeSQL_Bonus.ipynb
## Epilogue
https://github.com/LF-Ruiz/sql-challenge/blob/main/epilogue.sql

