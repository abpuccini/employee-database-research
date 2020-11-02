-- Bonus
-- Average salary by title

-- Create view to store the result of average salary by title 
-- in order to import in Jupyter Notebook
CREATE VIEW "avg_salary_title" AS
SELECT t.title,
	ROUND(AVG(s.salary),2) AS "avg salary"
FROM employees AS e 
	-- Join salaries table for salary info by using emp_no as the reference
	JOIN salaries AS s
	ON e.emp_no = s.emp_no
		-- Join titles table for title using emp_title_id and title_id as the reference
		JOIN titles as t
		ON e.emp_title_id = t.title_id
-- Apply GROUP BY to have average salary by title
GROUP BY t.title;

-- Display the result stored in avg_salary_title view
SELECT * FROM avg_salary_title;