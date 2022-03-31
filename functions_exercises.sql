USE raymond;

#TODO: Update your queries for employees whose names start and end with 'E'.
# Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY last_name;

#TODO: Find all employees born on Christmas — 842 rows.
SELECT *
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25;

#TODO: Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25;

#TODO: Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last.
# It should be Khun Bernini.
SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25
 ORDER BY birth_date, year(hire_date) DESC
LIMIT 1;

#TODO: For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company
SELECT  CONCAT(first_name, ' ', last_name) AS 'Full Name',
       DATEDIFF(curdate(), hire_date) AS 'Days With Company'
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY DATEDIFF(curdate(), hire_date);
