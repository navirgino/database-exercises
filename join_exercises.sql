USE employees;

SELECT departments.dept_name as "Department Name",
       CONCAT(employees.first_name, ' ', employees.last_name) AS "Department Manager"
FROM departments, employees

JOIN dept_manager dm
    ON employees.emp_no = dm.emp_no

WHERE (departments.dept_no = dm.dept_no
           AND dm.to_date >= NOW());


# Find the name of all departments currently managed by women.
SELECT departments.dept_name AS "Department Name",
       CONCAT(employees.first_name, ' ', employees.last_name) AS "Department Manager"
FROM departments, employees
JOIN dept_manager dm
    ON employees.emp_no = dm.emp_no
WHERE (departments.dept_no = dm.dept_no
           AND dm.to_date >= NOW()
           AND employees.gender = 'F');

# Find the current titles of employees currently working in the Customer Service department.
SELECT title AS "Title", COUNT(*) AS "Count"
FROM  employees
JOIN titles t
    ON employees.emp_no = t.emp_no
JOIN dept_emp de
    ON employees.emp_no = de.emp_no
WHERE dept_no = 'd009' AND t.to_date > NOW()
GROUP BY t.title
ORDER BY t.title;

# Find the current salary of all current managers
SELECT DISTINCT d.dept_name AS "Department Name",
       CONCAT(e.first_name, ' ', e.last_name) AS "Name",
       s.salary AS "Salary"

FROM departments as d
JOIN dept_manager dm
    ON d.dept_no = dm.dept_no
JOIN employees e
    ON dm.emp_no = e.emp_no
JOIN salaries s
    ON e.emp_no = s.emp_no
WHERE (dm.to_date > NOW() AND s.to_date > now())
GROUP BY d.dept_name,  s.salary, CONCAT(e.first_name, ' ', e.last_name)
ORDER BY d.dept_name;

# BONUS: Find the names of all current employees, their department name, and their current manager's name.
SELECT CONCAT(e.first_name, ' ', e.last_name) AS "Employee Name",
       d.dept_name AS "Dpt Name",
       emp.first_name AS "Dpt Manager"
FROM employees as e
JOIN dept_emp de
    ON e.emp_no = de.emp_no
JOIN dept_manager dm
    ON e.emp_no = dm.emp_no
JOIN departments as d
    ON dm.dept_no = d.dept_no
JOIN employees as emp
    ON emp.emp_no = dm.emp_no
WHERE (dm.to_date > NOW() AND de.to_date > NOW())
GROUP BY CONCAT(e.first_name, ' ', e.last_name), d.dept_name, CONCAT(emp.first_name, ' ', emp.last_name);

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Emp Name', d.dept_name AS 'Dpt Name', emp.first_name AS 'Dpt Manager'
FROM departments d
JOIN dept_emp de
    ON d.dept_no = de.dept_no
JOIN employees e
    ON de.emp_no = e.emp_no
JOIN dept_manager dm
    ON d.dept_no = dm.dept_no
JOIN employees emp
    ON dm.emp_no = emp.emp_no
WHERE (dm.to_date > NOW() AND de.to_date > NOW())
GROUP BY d.dept_name

