-- 5. List first name, last name, and sex for employees 
-- whose first name is "Hercules" and last names begin with "B."

-- Select columns to display
SELECT first_name, last_name, sex
-- Select table that contains required info.
FROM employees 
-- Apply condition to filter the result
WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%';