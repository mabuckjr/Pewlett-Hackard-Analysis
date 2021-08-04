-- Deliverable 1

-- Retirement Titles Query
SELECT e.emp_no,
e.first_name,
e.last_name,
ti.title,
ti.from_date,
ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

SELECT * FROM retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows (Unique Titles)
SELECT DISTINCT ON (emp_no) re.emp_no,
re.first_name,
re.last_name,
re.title

INTO unique_retirement_titles
FROM retirement_titles as re
ORDER BY emp_no ASC, to_date DESC;

-- Count of Titles Retiring
SELECT COUNT(title),
unique_titles.title
INTO retiring_titles
FROM unique_titles
GROUP BY unique_titles.title
ORDER BY COUNT(unique_titles.title) DESC;

-- Deliverable 2
-- Membership Eligibility
SELECT DISTINCT ON (emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
ti.title
INTO mentorship_eligibility
FROM employees as e
LEFT JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
LEFT JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01')
	AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY (e.emp_no) ASC;
