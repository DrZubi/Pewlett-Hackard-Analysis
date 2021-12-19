-- Deliverable 1

-- Creating Retirment Title Table
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM titles AS t
INNER JOIN employees AS e
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
-- WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

-- Get number of employees by their most recent job title who are about to retire
SELECT COUNT(title) count_openings, title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count_openings DESC;

-- Deliverable 2

-- Create a mentership eligibility table 
SELECT DISTINCT ON (e.emp_no) 
    e.emp_no,
    e.first_name,
    e.birth_date,
    de.from_date,
    de.to_date,
    t.title
INTO metorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
    ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t 
    ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no ASC;