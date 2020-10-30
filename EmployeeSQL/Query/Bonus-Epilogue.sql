-- Epilogue

-- Select columns to display
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name, s.salary
-- Get employees table as the first table to join other tables
FROM employees AS e
	-- Join dept_emp table to get dept_no to link to department name in department table
	JOIN dept_emp AS de
	ON e.emp_no = de.emp_no
		-- Join department table to have department name
		JOIN department AS d
		ON de.dept_no = d.dept_no
			-- Join salaries table to have salary info
			JOIN salaries AS s
			ON e.emp_no = s.emp_no
-- Apply condition to filter only employee#499942
WHERE e.emp_no = 499942;