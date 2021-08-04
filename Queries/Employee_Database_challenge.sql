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

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) re.emp_no,
re.first_name,
re.last_name,
re.title

INTO unique_titles
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

-- Deliverable 3 Queries
-- Query 1: Mentor title count
SELECT COUNT (title),
me.title
INTO mentor_title
FROM mentorship_eligibility as me
GROUP BY me.title
ORDER BY COUNT (me.title) DESC;

-- Query 2: Finding mentors who've held multiple positions
SELECT re.emp_no, re.first_name, re.last_name, COUNT(*)
INTO mentors_multi_pos
FROM retirement_titles AS re
GROUP BY re.emp_no, re.first_name, re.last_name
HAVING COUNT (*) > 1
ORDER BY re.emp_no ASC;
