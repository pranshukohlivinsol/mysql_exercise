CREATE DATABASE bank;
USE bank;
CREATE TABLE IF NOT EXISTS users (id int AUTO_INCREMENT PRIMARY KEY, name varchar(40) NOT NULL, email varchar(40) NOT NULL UNIQUE, account_no BIGINT NOT NULL UNIQUE);
CREATE TABLE IF NOT EXISTS accounts (id int AUTO_INCREMENT PRIMARY KEY, account_no NOT NULL UNIQUE, balance int NOT NULL);
