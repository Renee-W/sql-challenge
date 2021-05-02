-- create table for titles
CREATE TABLE titles
(
	title_id varchar (10) NOT NULL PRIMARY KEY,
	title VARCHAR (30)
);

-- create table for departments
CREATE TABLE departments 
(
	dept_no VARCHAR(10) PRIMARY KEY,
	dept_name VARCHAR(30),
);

-- create table for employees
CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	emp_title VARCHAR (10),
	FOREIGN KEY (emp_title) REFERENCES titles (title_id),
	birh_date date, 
	first_name VARCHAR (30),
	last_name VARCHAR (300),
	sex VARCHAR (1),
	hire_date DATE
);

-- create table for department employees
CREATE TABLE dept_emp
(
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employee (emp_no),
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

-- create table for department managers
CREATE TABLE dept_manager(
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employee (emp_no),
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

-- create table for employee salaries
CREATE TABLE salaries 
(
	id SERIAL PRIMARY KEY
	emp_no int,
	FOREIGN KEY (emp_no) REFERENCES employee (emp_no)
	salary int
);

