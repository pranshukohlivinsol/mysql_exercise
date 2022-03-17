CREATE DATABASE emp_comp;
USE emp_com;

CREATE TABLE IF NOT EXISTS departments (
  id int AUTO_INCREMENT PRIMARY KEY, 
  name varchar(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS employees (
  id int AUTO_INCREMENT PRIMARY KEY,
  name varchar(40) NOT NULL,
  salary int NOT NULL,
  department_id int NOT NULL,
  FOREIGN KEY(department_id) REFERENCES departments(id)
);

CREATE TABLE IF NOT EXISTS commissions (
  id int AUTO_INCREMENT PRIMARY KEY,
  employee_id int NOT NULL,
  commission_amount int NOT NULL,
  FOREIGN KEY (employee_id) REFERENCES employees(id)
);
