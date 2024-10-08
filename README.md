<h1 align = "center"> SQL Challenge </h1>

This project successfully reconstructed and analysed historical employee data from Pewlett Hackard, a fictional company, focussing on the workforce during the 1980s and 1990s. The task involved designing a relational database schema, importing data from six CSV files into a SQL database, and conducting comprehensive data analysis to gain insights into the company’s employment patterns.

The project began with <b>Data Modelling</b>, where an Entity Relationship Diagram (ERD) was created to define table structures and relationships between employees, departments, titles, and salaries. Appropriate data types, primary keys, and foreign keys were assigned to maintain data integrity and establish connections across tables.

Next, in the <b>Data Engineering</b> phase, the data from the CSV files was imported into a SQL database. Each table was carefully constructed, ensuring all required columns were defined with correct data types, constraints such as `NOT NULL`, and suitable length values. Foreign keys were used to reference related tables, accurately modelling the relationships outlined in the ERD.

Finally, the <b>Data Analysis</b> phase involved executing SQL queries to answer specific questions about the employee records. These queries provided valuable insights, such as employee details, department assignments, managerial roles, hiring trends, and salary information. The analysis helped uncover trends in department composition, employment durations, and common employee names, contributing to a deeper understanding of Pewlett Hackard’s workforce during the late 20th century.

## Table of Contents

- [Criteria](#criteria)
- [Data](#data)
- [Results](#results)
- [References](#references)
- [License](#license)


## Criteria

```
Data Modelling (10 points)

- Entity Relationship Diagram is included or table schemas provided for all tables (10 points)

Data Engineering (70 points)

- All required columns are defined for each table (10 points)
- Columns are set to the correct data type (10 points)
- Primary Keys set for each table (10 points)
- Correctly references related tables (10 points)
- Tables are correctly related using Foreign Keys (10 points)
- Correctly uses NOT NULL condition on necessary columns (10 points)
- Accurately defines value length for columns (10 points)

Data Analysis (20 points)

- List the employee number, last name, first name, sex, and salary of each employee (2 points)
- List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
- List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)
- List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)
- List each employee in the Sales department, including their employee number, last name, and first name (2 points)
- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)
- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)

```

## Data

This project utilises six CSV files to analyse employee and department relationships within a company, focussing on salary distribution, titles, and managerial roles. The dataset, generated by edX Boot Camps LLC and intended for educational purposes, contains detailed information on employees, their associated departments, salaries, and positions. By examining various aspects of the employee database, this project applies data analysis techniques to uncover trends in organisational structure and compensation. These insights support better decision-making for human resources and organisational management.


<b> Departments Table: </b>


| Column | Description |
| ----------------------------- | ----------------------------- |
| dept_no | A unique identifier for each department. It serves as the primary key in the Departments table. |
| dept_name | The name of the department (e.g., Marketing, Finance). |

<br>

<b> Department_Employee Table: </b>


| Column | Description |
| ----------------------------- | ----------------------------- |
| emp_no | Employee number, linking the employee to their department (foreign key to Employees table). |
| dept_no | Department number, associating the employee with a department (foreign key to Departments table). |

<br>

<b> Department_Manager Table: </b>


| Column | Description |
| ----------------------------- | ----------------------------- |
| dept_no | Department number, representing the department that the manager oversees (foreign key to Departments table). |
| emp_no | Employee number, indicating which employee is the department manager (foreign key to Employees table). |

<br>

<b> Employees Table: </b>


| Column | Description |
| ----------------------------- | ----------------------------- |
| emp_no | A unique identifier for each employee. It serves as the primary key in the Employees table. |
| emp_title_id | The title ID of the employee (foreign key to Titles table). |
| birth_date | The employee's date of birth, useful for age-based analysis. |
| first_name | The employee's first name. |
| last_name | The employee's last name. |
| sex | Gender of the employee (e.g., M for Male, F for Female). |
| hire_date | The date when the employee was hired. |

<br>

<b> Salaries Table: </b>


| Column | Description |
| ----------------------------- | ----------------------------- |
| emp_no | Employee number, linking the salary record to a specific employee (foreign key to Employees table). |
| salary | The employee's salary, useful for salary analysis and compensation trends. |

<br>

<b> Titles Table: </b>


| Column | Description |
| ----------------------------- | ----------------------------- |
| title_id | A unique identifier for each title, serving as the primary key in the Titles table. |
| title | The job title (e.g., Engineer, Senior Staff). |

<br>

## Results

The Entity Relationship Diagram (ERD) for this dataset was created using Quick Database Diagrams.

![](images/schema_table.png)

## References

Data for this dataset was generated by edX Boot Camps LLC, and is intended for educational purposes only.

The ERD Diagram was created from here: https://app.quickdatabasediagrams.com/#/

## License

This project is licensed under the [MIT License](https://github.com/Yukitoshi12345/SQL-Challenge/blob/main/LICENSE).
