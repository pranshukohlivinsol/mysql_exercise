create database bank;
use bank;
CREATE TABLE IF NOT EXISTS users (id int AUTO_INCREMENT PRIMARY KEY, name varchar(40) NOT NULL, email varchar(40) NOT NULL, account_no LONGINT NOT NULL);
