-- 1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM Employees AS e
INNER JOIN Salaries AS s
ON e.emp_no = s.emp_no;

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM Employees
WHERE extract(YEAR FROM hire_date) = 1986;

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM Dept_Manager dm
INNER JOIN Departments d
ON dm.dept_no = d.dept_no
INNER JOIN Employees e
ON dm.emp_no = e.emp_no;

-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Dept_Emp de
INNER JOIN Employees e
ON de.emp_no = e.emp_no
INNER JOIN Departments d
ON de.dept_no = d.dept_no;

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6. List each employee in the Sales department, including their employee number, last name, and first name.
SELECT Employees.emp_no, Employees.first_name, Employees.last_name
FROM Employees
INNER JOIN Dept_Emp
ON Employees.emp_no = Dept_Emp.emp_no
INNER JOIN Departments
ON Dept_Emp.dept_no = Departments.dept_no
WHERE Departments.dept_name = 'Sales';

-- or

SELECT emp_no, first_name, last_name
FROM Employees
WHERE emp_no IN (
	SELECT emp_no
	FROM Dept_emp
	WHERE dept_no IN (
		SELECT dept_no
		FROM Departments
		WHERE dept_name = 'Sales'))
ORDER BY emp_no;

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).