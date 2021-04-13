----------------- TABLE CREATION -----------------
CREATE TABLE titles (
	title_id varchar(255) PRIMARY KEY,
	title varchar(255)
    );
	
CREATE TABLE employees (
	emp_no int NOT NULL PRIMARY KEY,
	title_id varchar(255),
	birth_date date,
	first_name varchar(255),
	last_name varchar(255),
	sex varchar(1),
	hire_date date,
	FOREIGN KEY (title_id) REFERENCES titles(title_id)
    );
	
CREATE TABLE salaries (
	emp_no int,
	salary money,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
    );
	
CREATE TABLE departments (
	dept_no varchar(255) PRIMARY KEY,
	dept_name varchar(255)
    );	
	
CREATE TABLE dept_emp (
	emp_no int,
	dept_no varchar(255),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
    );	
	
CREATE TABLE dept_manager (
	dept_no varchar(255),
	emp_no int,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
    );	