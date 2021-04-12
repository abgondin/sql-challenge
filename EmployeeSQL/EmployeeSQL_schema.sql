----------------- TABLE CREATION -----------------
CREATE TABLE employees (
	emp_no int NOT NULL,
	title_id varchar,
	birth_date date,
	first_name varchar,
	last_name varchar,
	sex varchar(1),
	hire_date date,
    PRIMARY KEY (emp_no)
    );
	
CREATE TABLE titles (
	title_id varchar,
	title varchar
    );
	
CREATE TABLE salaries (
	emp_no int,
	salary money
    );
	
CREATE TABLE dept_manager (
	dept_no varchar,
	emp_no int
    );	

CREATE TABLE dept_emp (
	emp_no int,
	dept_no varchar
    );	
	
CREATE TABLE departments (
	dept_no varchar,
	dept_name varchar
    );	