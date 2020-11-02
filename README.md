# Employee Database: A Mystery in Two Parts

## Background

As a new data engineer at Pewlett Hackard, a research project on employees of the corporation from 1980s and 1990s was assigned. There are 2 parts of this project; data engineering and data analysis. The process contains designing the tables to hold data in the CSVs, importing the CSVs into a SQL database, and answering questions about the data. 

## Data Engineering

### Entity Relationship Diagram (ERD)

- emp_no in employees table has a *many-to-one* relationships to emp_no in dept_emp and dept_manager tables.
- emp_no in employees table has a *one-to-one* relationships to emp_no in salaries table.
- title_id in titles table has a *many-to-one* relationships to emp_title_id in employees table.
- dept_no in departments table has a *many-to-one* relationships to dept_no in dept_emp and dept_manager tables.

![Employee_ERD]("Images/employee_DBD.png")

### Data Analysis

**List the following details of each employee: employee number, last name, first name, sex, and salary.**

```javascript
-- Select columns to display
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
-- Select employees table as the first table to be joined
FROM employees as e
  -- Join salaries table to get salary info.
  LEFT JOIN salaries as s
  -- emp_no is the common reference for both table
  ON e.emp_no = s.emp_no;
```

