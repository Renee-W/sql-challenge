CREATE TABLE departments 
(
	dept_no VARCHAR(10),
	dept_name VARCHAR(30)
);

CREATE TABLE dept_emp
(
	emp_no INT,
	dept_no VARCHAR(10)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR (10),
	emp_no int
);

CREATE TABLE employees(
	emp_no int,
	emp_title VARCHAR (10),
	birh_date date, 
	first_name VARCHAR (30),
	last_name VARCHAR (300),
	sex VARCHAR (1),
	hire_date DATE
);
CREATE TABLE salaries 
(
	emp_no int,
	salary int
);
CREATE TABLE titles
(
	title_id varchar (10),
	title VARCHAR (30)
);
