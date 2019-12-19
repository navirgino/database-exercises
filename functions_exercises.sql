USE employees;
show tables;

SELECT first_name, last_name, gender
FROM employees
WHERE (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
  AND gender = 'M'
ORDER BY last_name DESC, first_name DESC;

SELECT CONCAT(last_name, ' ', first_name)
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';


SELECT first_name, last_name, DATEDIFF(NOW(), hire_date)
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

SELECT first_name, last_name
FROM employees
WHERE birth_date LIKE '%-12-25'
AND hire_date  BETWEEN '1990-01-01' AND '1999-12-31'
ORDER BY birth_date, hire_date DESC;

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';






