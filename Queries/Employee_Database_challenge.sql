-- CREATING RETIREMENT TITLES TABLE
SELECT em.emp_no, em.first_name, em.last_name, 
	ti.title, ti.from_date, ti.to_date
INTO retirement_titles
FROM employees as em
	LEFT JOIN titles as ti
		ON (em.emp_no=ti.emp_no)
WHERE (em.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY em.emp_no;

SELECT * from retirement_titles

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

SELECT * from unique_titles

--COUNT BY TITLE
SELECT COUNT(*) as count, title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

SELECT * from retiring_titles

--MENTORSHIP ELIGIBILITY TABLE

SELECT DISTINCT ON (em.emp_no) em.emp_no,
em.first_name,
em.last_name,
em.birth_date,
de.from_date,
de.to_date,
tl.title
INTO mentorship_eligibility
FROM employees as em
LEFT JOIN dept_emp as de ON em.emp_no = de.emp_no
LEFT JOIN titles as tl ON em.emp_no = tl.emp_no
WHERE em.birth_date BETWEEN '01-01-1965' AND '12-31-1965' 
AND de.to_date = '01-01-9999'
ORDER BY em.emp_no, tl.to_date DESC;

SELECT * from mentorship_eligibility


