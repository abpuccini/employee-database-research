
CREATE VIEW "avg_salary_title" AS
SELECT t.title,
	ROUND(AVG(s.salary),2) AS "avg salary"
FROM employees AS e 
JOIN salaries AS s
ON e.emp_no = s.emp_no
JOIN titles as t
ON e.emp_title_id = t.title_id
GROUP BY t.title;

SELECT * FROM avg_salary_title;