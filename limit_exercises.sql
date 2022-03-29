USE raymond;

#TODO: List the first 10 distinct last name sorted in descending order. Your result should look like this:
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'Z%'
ORDER BY last_name DESC
LIMIT 10;

#TODO: Create a query to get the top 5 salaries and display just the employees number from the salaries table.
SELECT emp_no
FROM salaries
ORDER BY salary DESC
LIMIT 5;


SELECT emp_no
FROM salaries
ORDER BY salary desc
LIMIT 5 OFFSET 45;
# offset = (limit * pageNumber) - limit;
