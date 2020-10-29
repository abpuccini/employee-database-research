-- 2.List first name, last name, and hire date for employees who were hired in 1986.

-- Select columns to display
SELECT first_name, last_name, hire_date
-- Select employees table
FROM employees
-- Set the condition 
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';
