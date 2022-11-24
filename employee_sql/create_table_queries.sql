CREATE TABLE departments (
    dept_no VARCHAR(250) NOT NULL,
    dept_name VARCHAR(250) NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE titles(
	title_id VARCHAR(50) NOT NULL,
	title VARCHAR(50),
	CONSTRAINT "pk_titles" PRIMARY KEY("title_id")
);

CREATE TABLE employees(
	"emp_no" INTEGER PRIMARY KEY,
	"emp_title_id" VARCHAR(250) references titles(title_id),
	"birth_date" DATE,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"SEX" VARCHAR,
	"hire_date" DATE
);


CREATE TABLE dept_employee(
	emp_no INTEGER references employees(emp_no),
	dept_no VARCHAR(250) references departments(dept_no)
	
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(250) references departments(dept_no),
	emp_no INTEGER references employees(emp_no)
);


CREATE TABLE salaries(
	emp_no INTEGER references employees(emp_no),
	salary INTEGER
);









