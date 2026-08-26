# DDL --> Data Definition Language
# CREATE, ALTER, DROP, TRUNCATE, RENAME

CREATE DATABASE student;

USE student;

CREATE TABLE students(
    stu_id TINYINT,
    name VARCHAR(30),
    course VARCHAR(20),
    ph_no VARCHAR(20)
);

DESC students;

SELECT * FROM students;


# ALTER: To add or remove a column
# MODIFY: To modify a column datatype
# RENAME: To rename a column or table
# DROP: To drop a database or table


# ADD COLUMN SYNTAX:
# ALTER TABLE table_name ADD COLUMN column_name datatype;

ALTER TABLE students
ADD COLUMN email VARCHAR(30);

DESC students;

ALTER TABLE students
ADD COLUMN address VARCHAR(30);

DESC students;


# REMOVE COLUMN SYNTAX:
# ALTER TABLE table_name DROP COLUMN column_name;

ALTER TABLE students
DROP COLUMN ph_no;

DESC students;


# MODIFY COLUMN SYNTAX:
# ALTER TABLE table_name MODIFY COLUMN column_name new_datatype;

ALTER TABLE students
MODIFY COLUMN name CHAR(20);

DESC students;


# RENAME TABLE SYNTAX:
# ALTER TABLE table_name RENAME TO new_table_name;

ALTER TABLE students
RENAME TO stu;

# This gives error because students table no longer exists
# DESC students;

DESC stu;


# RENAME COLUMN SYNTAX:
# ALTER TABLE table_name RENAME COLUMN old_column_name TO new_column_name;

ALTER TABLE stu
RENAME COLUMN name TO stu_name;

DESC stu;


# DROP TABLE
DROP TABLE stu;

# DROP DATABASE
DROP DATABASE student;


# ==================================================
# DML --> Data Manipulation Language
# INSERT, UPDATE, DELETE
# ==================================================

CREATE DATABASE student;

USE student;


CREATE TABLE employee(
    emp_id TINYINT,
    emp_name VARCHAR(30),
    salary DECIMAL(10,2),
    dept_id TINYINT,
    age TINYINT,
    ph_no VARCHAR(20),
    email VARCHAR(40),
    city VARCHAR(40)
);

DESC employee;


# INSERT:

INSERT INTO employee VALUES
(101, 'pooja', 30000, 1, 28, '7897897897', 'pooja@codegnan.com', 'vja'),
(102, 'sneha', 40000, 2, 26, '876567898', 'sneha@codegnan.com', 'hyd'),
(103,'sai', 50000,3,24,7865943456,"sai@fmail.com","vja"),
(104, 'raju', 60000,4,22,864596384,"raju@gmail.com","viz");


# DISPLAY DATA

SELECT * FROM employee;
select salary from employee;
select *from employee where emp_id =101;
SET SQL_SAFE_UPDATES =0;
delete from employee where emp_id=102;

SELECT * FROM employee;

#UPDATE
update employee set salary=50000 where emp_id=101;

SELECT * FROM employee;

update employee set city="hyd" where emp_id=101;


SELECT * FROM employee;

#TRUNCATE SYNTAX:
truncate table table_name;

truncate table employee;

SELECT * FROM employee;
