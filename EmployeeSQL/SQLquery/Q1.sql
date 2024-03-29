-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

-- Select columns to display
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
-- Select employees table as the first table to be joined
FROM employees AS e
	-- Join salaries table to get salary info.
	LEFT JOIN salaries AS s
	-- emp_no is the common reference for both table
	ON e.emp_no = s.emp_no;