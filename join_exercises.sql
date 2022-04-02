USE raymond;
#TODO: write a query that shows each department along with the name of the current manager for that department.
SELECT DISTINCT d.dept_name                            AS 'Department Name',
                CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_emp AS de
              ON de.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = de.dept_no
         JOIN dept_manager AS dm
              ON de.emp_no = dm.emp_no
WHERE dm.to_date >= CURDATE()
ORDER BY d.dept_name;

#TODO: Find the name of all departments currently managed by women.
SELECT DISTINCT d.dept_name                            AS 'Department Name',
                CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_emp AS de
              ON de.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = de.dept_no
         JOIN dept_manager AS dm
              ON de.emp_no = dm.emp_no
WHERE dm.to_date >= CURDATE()
  AND e.gender = 'F'
ORDER BY d.dept_name;

#TODO: Find the current titles of employees currently working in the Customer Service department.
SELECT DISTINCT title AS Title, COUNT(e.emp_no) AS Total
FROM employees AS e
         JOIN titles t ON e.emp_no = t.emp_no
         JOIN dept_emp de ON e.emp_no = de.emp_no
         JOIN departments d ON de.dept_no = d.dept_no
WHERE dept_name = 'Customer Service'
  AND t.to_date >= CURDATE()
AND de.to_date >= CURDATE()
GROUP BY title
ORDER BY count(title) DESC;

#TODO: Find the current salary of all current managers.
SELECT DISTINCT d.dept_name                            AS 'Department Name',
                CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
                salary                                 AS 'Salary'
FROM employees AS e
         JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
         JOIN departments AS d ON dm.dept_no = d.dept_no
         JOIN salaries AS s ON e.emp_no = s.emp_no
WHERE dm.to_date >= CURDATE()
  AND s.to_date >= CURDATE()
ORDER BY d.dept_name;

#TODO: Bonus Find the names of all current employees, their department name, and their current manager's name.

SELECT CONCAT(e.first_name, ' ', e.last_name)   AS 'Employee',
       d.dept_name                              AS 'Department Name',
       CONCAT(e2.first_name, ' ', e2.last_name) AS 'Manager'
FROM employees AS e
         JOIN dept_emp de ON e.emp_no = de.emp_no
         JOIN departments d ON de.dept_no = d.dept_no
         JOIN dept_manager dm ON d.dept_no = dm.dept_no AND dm.to_date > CURDATE()
         JOIN employees e2 ON e2.emp_no = dm.emp_no
WHERE de.to_date > CURDATE()
ORDER BY d.dept_name;
