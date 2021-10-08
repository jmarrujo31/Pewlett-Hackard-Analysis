SELECT employees.emp_no, employees.first_name, employees.last_name, titles.title, titles.from_date, titles.to_date
INTO retirement_titles
FROM employees
LEFT JOIN titles
ON employees.emp_no = titles.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';


SELECT DISTINCT ON (titles.emp_no) employees.emp_no, employees.first_name, employees.last_name, titles.title
INTO unique_titles
FROM employees
LEFT JOIN titles
ON employees.emp_no = titles.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';


SELECT COUNT(unique_titles.title), title
FROM unique_titles
GROUP BY unique_titles.title
ORDER BY title;
