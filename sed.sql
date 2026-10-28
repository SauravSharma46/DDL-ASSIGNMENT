CREATE DATABASE company_management;
USE company_management;

CREATE TABLE departments (
    department_id INT NOT NULL,
    dept_name VARCHAR(80) NOT NULL,
    city VARCHAR(60)
);    

CREATE TABLE employees (
    employee_id INT NOT NULL,
    employee_name VARCHAR(100) NOT NULL,
    email VARCHAR(120),
    deaprtment_id INT NOT NULL,
    salary DECIMAL (10,2),
    status VARCHAR(20)
);

ALTER TABLE departments ADD PRIMARY KEY(department_id);

ALTER TABLE employees ADD PRIMARY KEY(employee_id);

ALTER TABLE departments ADD COLUMN location_of_type VARCHAR(100);

ALTER TABLE departments RENAME COLUMN dept_name TO department_name;

ALTER TABLE employees MODIFY COLUMN salary DECIMAL(12,2) NOT NULL;

ALTER TABLE employees MODIFY COLUMN status VARCHAR(100) DEFAULT 'ACTIVE';

ALTER TABLE employees MODIFY COLUMN email VARCHAR(120) UNIQUE;

RENAME TABLE employees TO staff;

ALTER TABLE staff ADD CONSTRAINT fk_id FOREIGN KEY (deaprtment_id) REFERENCES departments(department_id);

ALTER TABLE staff MODIFY COLUMN email VARCHAR(120);

ALTER TABLE staff DROP FOREIGN KEY fk_id;

DESCRIBE departments;

ALTER TABLE staff DROP PRIMARY KEY;

DESCRIBE staff;

ALTER TABLE staff ADD PRIMARY KEY(employee_id);

ALTER TABLE departments DROP COLUMN location_of_type;
