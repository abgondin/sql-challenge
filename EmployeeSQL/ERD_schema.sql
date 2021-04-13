titles
--
title_id PK varchar(255)
title varchar(255)

employees
--
emp_no PK int
title_id varchar(255) FK >- titles.title_id
birth_date date
first_name varchar(255)
last_name varchar(255)
sex varchar(1)
hire_date date

salaries
--
emp_no int FK >- employees.emp_no
salary money

departments
--
dept_no PK varchar(255)
dept_name varchar(255)

dept_emp
--
emp_no int FK >- employees.emp_no
dept_no varchar(255) FK >- departments.dept_no

dept_manager
--
dept_no varchar(255) FK >- departments.dept_no
emp_no int FK >- employees.emp_no