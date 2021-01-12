-- drop if exists
DROP TABLE IF EXISTS departments

-- Create a new table departments
CREATE TABLE departments (
  	dept_no VARCHAR(10) NOT NULL PRIMARY KEY,
  	dept_name VARCHAR (20)
);


-- drop if exists
DROP TABLE IF EXISTS dept_emp
-- Create a new table
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR
);

-- drop if exists
DROP TABLE IF EXISTS dept_manager
-- Create a new table
CREATE TABLE dept_manager(
	dept_no VARCHAR,
	emp_no INT
);

-- drop if exists
DROP TABLE IF EXISTS employees
-- Create a new table
CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE
);


-- drop if exists
DROP TABLE IF EXISTS titles
-- Create a new table
CREATE TABLE titles (
	title_id VARCHAR,
	title VARCHAR
);


-- drop if exists
DROP TABLE IF EXISTS salaries
-- Create a new table
CREATE TABLE salaries (
	emp_no INT,
	salary INT
);
