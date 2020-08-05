CREATE TABLE departments(
		dept_no varchar (30),
		dept_name char (30)
);

-------------------------

CREATE TABLE dept_emp(
		emp_no varchar (30),
		dept_no varchar (30)
);

SELECT * FROM dept_emp;
-------------------------
CREATE TABLE dept_manager(
		dept_no varchar (30),
		emp_no varchar (30)
);

SELECT * FROM dept_manager;

-------------------------
CREATE TABLE employees(
		emp_no varchar (30),
		emp_title_id varchar (30),
		birth_date varchar (12),
		first_name char (30),
		last_name char (30),
		sex char (10),
		hire_date varchar (12)
);

-------------------------
CREATE TABLE salaries(
		emp_no varchar (30),
		salary char (40)
);

-------------------------
CREATE TABLE titles(
		title_id varchar (30),
		title char (40)
);
-------------------------

