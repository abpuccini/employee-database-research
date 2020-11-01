-- 3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.

-- Select columns to display
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
-- Get dept_manager table as the first table to join other tables
FROM dept_manager AS dm
	-- Join departments table to have department name
	JOIN departments AS d 
	ON dm.dept_no = d.dept_no
		-- Join employees table to have employees' last name and first name
		JOIN employees AS e 
		ON dm.emp_no = e.emp_no;
