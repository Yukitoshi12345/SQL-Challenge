CREATE TABLE Departments (
    dept_no VARCHAR(4) PRIMARY KEY NOT NULL,
    dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE Titles (
    title_id VARCHAR(5) PRIMARY KEY NOT NULL,
    title VARCHAR(50) NOT NULL
);

CREATE TABLE Employees (
    emp_no INT PRIMARY KEY NOT NULL,
    emp_title_id VARCHAR(5) NOT NULL,
        FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id),
    birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
);

CREATE TABLE Salaries (
    emp_no INTEGER NOT NULL,
        FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    salary INTEGER NOT NULL
);

CREATE TABLE Dept_Emp (
    emp_no INTEGER NOT NULL,
        FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    dept_no VARCHAR(4) NOT NULL,
        FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

CREATE TABLE Dept_Manager (
    dept_no VARCHAR(4) NOT NULL,
        FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    emp_no INTEGER NOT NULL,
        FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);
