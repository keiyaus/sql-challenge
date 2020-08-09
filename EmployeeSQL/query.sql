-- 1. List each employees'
-- employee number, last name, first name, sex, and salary

-- Check and confirm employees and salaries tables hold the same number of employees
SELECT COUNT(emp_no) FROM employees;
SELECT COUNT(emp_no) FROM salaries;

-- Display data using inner join
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM salaries AS s
INNER JOIN employees AS e 
ON e.emp_no = s.emp_no
ORDER BY e.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986
SELECT e.first_name, e.last_name, e.hire_date
FROM employees AS e
WHERE EXTRACT(YEAR FROM hire_date)=1986
ORDER BY e.hire_date;

-- 3. List the manager of each department with the following information:
-- department number, department name, the manager's employee number, last name, first name
SELECT d.dept_no, d. dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments AS d
RIGHT OUTER JOIN dept_manager AS dm
ON d.dept_no = dm.dept_no
INNER JOIN employees AS e
ON dm.emp_no = e.emp_no;

-- 4. List the department of each employee with the following information:
-- employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON de.emp_no = e.emp_no
INNER JOIN departments AS d
ON d.dept_no = de.dept_no;

-- 5. List first name, last name, and sex for employees
-- whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name like 'B%';

-- 6. List all employees in the Sales department, 
-- including their employee number, last name, first name, and department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON de.emp_no = e.emp_no
INNER JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON de.emp_no = e.emp_no
INNER JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE d.dept_name IN ('Sales','Development');

-- 8. In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_Name
ORDER BY "frequency" DESC;
