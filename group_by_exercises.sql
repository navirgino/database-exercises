USE titles;
show tables;

SELECT DISTINCT title
FROM titles;


SELECT last_name, first_name
FROM employees
WHERE last_name LIKE 'E%e'
    GROUP BY last_name, first_name;

SELECT last_name, count(*)
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY count(*) desc;

SELECT first_name, last_name, count(*)
FROM employees
GROUP BY first_name, last_name
ORDER BY last_name;

SELECT COUNT(*), gender
FROM employees
WHERE (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
GROUP BY gender;

#What are the names of the 10 most recently hired
#females in the company? the first 10?
# #no group by needed
# SELECT first_name, COUNT(*), gender
# FROM employees
# ORDER BY first_name
# GROUP BY gender;



