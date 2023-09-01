-- Check data import
SELECT *
FROM employees;

-- Perform an INNER JOIN on the two tables
-- 1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salaries
FROM salaries
INNER JOIN employees ON
employees.emp_no=salaries.emp_no;

-- Check data import
SELECT *
FROM employees;

-- 2. query to find employees hired in 1986 
SELECT first_name, last_name, hire_date 
FROM employees 
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'; 

-- Query deptmanager table
SELECT * FROM dept_mng;

-- Query depts table
SELECT * FROM departments;

-- Query employees table
SELECT * FROM employees;

-- 3. query to list the manager of each dept along with their department number, 
-- department name, employee number,last name & first name

SELECT d.dept_no, dm.emp_no, d.dept_name, e.first_name, e.last_name
FROM dept_mng as dm
LEFT JOIN departments as d
ON d.dept_no = dm.dept_no
LEFT JOIN employees as e
ON e.emp_no = dm.emp_no;

-- 4. List the department number for each employee along with that employee’s employee number,
-- last name, first name, and department name

SELECT d.dept_no, de.emp_no, d.dept_name, e.first_name, e.last_name
FROM dept_emp as de
LEFT JOIN departments as d
ON d.dept_no = de.dept_no
LEFT JOIN employees as e
ON e.emp_no = de.emp_no;

-- 5. ist first name, last name, and sex of each employee whose first name is Hercules 
-- and whose last name begins with the letter B

SELECT e.first_name, e.last_name, e.sex
FROM employees as e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%'

-- 6. List each employee in the Sales department, including their employee number, last name, and first name

SELECT de.emp_no,e.last_name, e.first_name
FROM dept_emp as de
LEFT JOIN departments as d
ON d.dept_no = de.dept_no
LEFT JOIN employees as e
ON e.emp_no = de.emp_no
WHERE d.dept_name = 'Sales'

-- 7. List each employee in the Sales and Development departments, including their employee number, 
-- last name, first name, and department name

SELECT de.emp_no, d.dept_name, e.last_name, e.first_name
FROM dept_emp as de
LEFT JOIN departments as d
ON d.dept_no = de.dept_no
LEFT JOIN employees as e
ON e.emp_no = de.emp_no
WHERE d.dept_name in ('Sales', 'Development');

-- 8. List the frequency counts, in descending order, of all the employee last names (that is, 
-- how many employees share each last name)

SELECT e.last_name, count (e.last_name) 
FROM employees as e
GROUP BY e.last_name ORDER BY count Desc 



