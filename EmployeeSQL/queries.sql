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
SELECT Dept_Manager.dept_no, Departments.dept_name, Dept_Manager.emp_no, Employees.last_name, Employees.first_name
FROM Dept_Manager
INNER JOIN Departments
ON Dept_Manager.dept_no = Departments.dept_no
INNER JOIN Employees
ON Dept_Manager.emp_no = Employees.emp_no


-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

-- 6. List each employee in the Sales department, including their employee number, last name, and first name.

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).