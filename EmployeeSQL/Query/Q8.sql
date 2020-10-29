-- 8. In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.

-- Select columns to display
SELECT last_name,
	-- Apply count function to count last name
	COUNT(last_name) AS "Frequency of Last name"
-- Select table that contains needed info.
FROM employees
-- Apply GROUP BY to be used in an aggregate function 
GROUP BY last_name
ORDER BY "Frequency of Last name" DESC;