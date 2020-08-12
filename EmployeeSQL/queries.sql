--database outputs
--1.
SELECT employees.emp_no,
	   employees.last_name,
	   employees.first_name,
	   employees.sex,
	   salaries.salary
FROM employees
	LEFT JOIN salaries
	ON (employees.emp_no = salaries.emp_no)
ORDER BY employees.emp_no;

--2.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986'
ORDER BY hire_date;

--3.
SELECT dept_manager.emp_no,
	employees.first_name,
	employees.last_name,
	dept_manager.dept_no,
	departments.dept_name
FROM dept_manager
	LEFT JOIN employees
		ON (dept_manager.emp_no = employees.emp_no)
	LEFT JOIN departments
		ON (dept_manager.dept_no = departments.dept_no);

--4.
SELECT employees.emp_no,
	employees.first_name,
	employees.last_name,
	departments.dept_name
FROM employees
	LEFT JOIN dept_emp
		ON (employees.emp_no = dept_emp.emp_no)
	LEFT JOIN departments
		ON (dept_emp.dept_no = departments.dept_no)
ORDER BY employees.emp_no;

--5.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--6.
SELECT employees.emp_no,
	employees.first_name,
	employees.last_name,
	departments.dept_name
FROM employees
	LEFT JOIN dept_emp
		ON (employees.emp_no = dept_emp.emp_no)
	LEFT JOIN departments
		ON (dept_emp.dept_no = departments.dept_no)
		WHERE dept_name = 'Sales'
ORDER BY employees.emp_no;

--7.
SELECT employees.emp_no,
	employees.first_name,
	employees.last_name,
	departments.dept_name
FROM employees
	LEFT JOIN dept_emp
		ON (employees.emp_no = dept_emp.emp_no)
	LEFT JOIN departments
		ON (dept_emp.dept_no = departments.dept_no)
		WHERE dept_name = 'Sales' OR dept_name = 'Development'
ORDER BY employees.emp_no;

--8.
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;

