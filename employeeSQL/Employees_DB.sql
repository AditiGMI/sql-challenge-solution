--DROP TABLES TO CLEAN SLATE

DROP TABLE departments
DROP TABLE dept_employees
DROP TABLE dept_managers
DROP TABLE employees
DROP TABLE salaries
DROP TABLE titles

--CREATE DEPT. TABLE
CREATE TABLE departments (
	id SERIAL PRIMARY KEY,
	dept_no VARCHAR (30),
	dept_name VARCHAR (30)
	);

SELECT * 
FROM departments

--CREATE EMP. TABLE
CREATE TABLE dept_employees (
	id SERIAL PRIMARY KEY,
	emp_no INT,
	dept_no VARCHAR (30)
	);

SELECT * 
FROM dept_employees

--CREATE DEPT. MNGRS TABLE
CREATE TABLE dept_managers (
	dept_no VARCHAR (30),
	emp_no INT
	);

SELECT * 
FROM dept_managers

--CREATE EMPLOYEE TABLE
CREATE TABLE employees (
	emp_no INT,
	emp_title_id VARCHAR (30),
	birth_date DATE,
	first_name VARCHAR (30),
	last_name VARCHAR (30),
	sex VARCHAR (2),
	hire_date DATE
	);

SELECT * 
FROM employees

--CREATE SALARIES TABLE
CREATE TABLE salaries (
	emp_no INT,
	salary INT
	);

SELECT * 
FROM salaries

--CREATE TITLES TABLE
CREATE TABLE titles (
	title_id VARCHAR (30),
	title VARCHAR (30)
	);

SELECT * 
FROM titles









