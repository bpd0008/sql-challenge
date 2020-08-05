-- #1
SELECT employees.first_name, employees.last_name, 
		employees.sex, employees.emp_no, salaries.salary, 
		salaries.emp_no
FROM employees
JOIN salaries
ON salaries.emp_no = employees.emp_no;


-- #2
SELECT * FROM employees;

SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date >= '12/31/1985'
AND hire_date < '01/01/1987';


-- #3
SELECT * FROM dept_manager;

SELECT dept_manager.dept_no, dept_manager.emp_no, 
		departments.dept_name, departments.dept_no,
		employees.last_name, employees.first_name, 
		employees.emp_no
FROM  dept_manager
INNER JOIN departments
ON departments.dept_no = dept_manager.dept_no
INNER JOIN employees
ON dept_manager.emp_no = employees.emp_no;

-- #4
SELECT dept_manager.dept_no, dept_manager.emp_no, employees.first_name,
		employees.last_name, employees.emp_no
FROM employees
INNER JOIN dept_manager
ON dept_manager.emp_no = employees.emp_no;

--- #5
SELECT first_name, last_name, sex
FROM employees
WHERE employees.first_name = 'Hercules'
AND employees.last_name > 'B%'
AND employees.last_name < 'C%';

--- #6
SELECT dep.dept_name, emp.emp_no, emp.first_name, emp.last_name
FROM employees AS emp
JOIN dept_manager
ON dept_manager.emp_no = emp.emp_no
INNER JOIN departments AS dep
ON dep.dept_no = dept_manager.dept_no
WHERE dept_name = 'Sales';


SELECT * FROM departments;

--- #7
SELECT dep.dept_name, emp.emp_no, emp.first_name, emp.last_name
FROM employees AS emp
JOIN dept_manager
ON dept_manager.emp_no = emp.emp_no
INNER JOIN departments AS dep
ON dep.dept_no = dept_manager.dept_no
WHERE dept_name = 'Sales'
OR dept_name = 'Development';

--- #8
SELECT last_name, COUNT(last_name) FROM employees
GROUP BY last_name
ORDER BY count(last_name) desc;

