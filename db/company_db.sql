DROP DATABASE IF EXISTS company_db;
CREATE DATABASE company_db;

USE company_db;

CREATE TABLE departments (
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE roles (
    `id` INT AUTO_INCREMENT,
    `title` VARCHAR(30) NOT NULL,
    `salary` DECIMAL NOT NULL,
    `department_id` INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE employees (
    `id` INT AUTO_INCREMENT,
    `first_name` VARCHAR(30) NOT NULL,
    `last_name` VARCHAR(30) NOT NULL,
    `role_id` INT NOT NULL,
    `manager_id` INT NOT NULL,
    PRIMARY KEY (id)
);



