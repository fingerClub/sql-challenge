SELECT E.emp_no, E.last_name, E.first_name, E.sex, S.salary
FROM employees E
LEFT JOIN salaries S
ON E.emp_no=S.emp_no

SELECT E.first_name, E.last_name, E.hire_date
FROM employees E
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'

SELECT DM.dept_no, DM.emp_no, E.last_name, E.first_name, D.dept_name
FROM dept_manager DM
INNER JOIN departments D
ON (D.dept_no=DM.dept_no)
INNER JOIN employees E
ON (E.emp_no=DM.emp_no)

SELECT DE.dept_no, E.emp_no, E.last_name, E.first_name, D.dept_name
FROM employees E
INNER JOIN dept_emp DE
ON (E.emp_no=DE.emp_no)
INNER JOIN departments D
ON (DE.dept_no=D.dept_no)
ORDER BY e.emp_no

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'

SELECT DM.emp_no, E.last_name, E.first_name
FROM dept_emp DM
INNER JOIN departments D
ON (D.dept_no=DM.dept_no)
INNER JOIN employees E
ON (E.emp_no=DM.emp_no)
WHERE D.dept_name = 'Sales'

SELECT DM.dept_no, DM.emp_no, D.dept_name, E.last_name, E.first_name
FROM dept_emp DM
INNER JOIN departments D
ON (D.dept_no=DM.dept_no)
INNER JOIN employees E
ON (E.emp_no=DM.emp_no)
WHERE D.dept_name = 'Sales' OR D.dept_name = 'Development'

SELECT last_name, COUNT(*)
FROM employees
GROUP BY last_name
ORDER BY COUNT(*) DESC
