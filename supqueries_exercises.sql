USE employees;
show tables;

# Find all the employees with the same hire date as employee 101010 using a subquery.
#
# 69 Rows
SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS 'Name', employees.hire_date AS hire_date
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE employees.emp_no = '101010'
    );

SELECT titles.title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    );

SELECT e.first_name, e.last_name
FROM employees AS e
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE gender = 'F' AND CURDATE() < dept_manager.to_date
    );


