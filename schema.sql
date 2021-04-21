--Data Engineering
--Use the information you have to create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.
--For the primary keys check to see if the column is unique, otherwise create a [composite key](https://en.wikipedia.org/wiki/Compound_key). Which takes to primary keys in order to uniquely identify a row.
--Be sure to create tables in the correct order to handle foreign keys.
--Import each CSV file into the corresponding SQL table. **Note** be sure to import the data in the same order that the tables were created and account for the headers when importing to avoid errors.

-- Drop Tables 
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE departments (
dept_no VARCHAR NOT NULL,
dept_name VARCHAR NOT NULL
CONSTRAINT pk_departments PRIMARY KEY);

CREATE TABLE dept_emp (
emp_no INT NOT NULL,
dept_no VARCHAR NOT NULL);

CREATE TABLE dept_manager (
dept_no VARCHAR NOT NULL,
emp_no INT NOT NULL);

CREATE TABLE employees (
emp_no INT NOT NULL,
emp_title_id VARCHAR NOT NULL,
birth_date DATE NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
sex VARCHAR NOT NULL,
hire_date DATE NOT NULL,
CONSTRAINT pk_employees PRIMARY KEY (
emp_no)
);
)

CREATE TABLE salaries (
emp_no INT NOT NULL,
salary INT NOT NULL);

CREATE TABLE titles (
title_id VARCHAR NOT NULL,
title VARCHAR NOT NULL,
CONSTRAINT pk_titles PRIMARY KEY (
title_id)
);

SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;