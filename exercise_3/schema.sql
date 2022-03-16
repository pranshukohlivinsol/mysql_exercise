CREATE TABLE IF NOT EXISTS users (id int AUTO_INCREMENT PRIMARY KEY, name varchar(40) NOT NULL UNIQUE, type enum('admin','normal') NOT NULL);
CREATE TABLE IF NOT EXISTS categories (id int AUTO_INCREMENT PRIMARY KEY, name varchar(40) NOT NULL UNIQUE);
CREATE TABLE IF NOT EXISTS articles (id int AUTO_INCREMENT PRIMARY KEY, title varchar(255) NOT NULL, category_id int NOT NULL, user_id int NOT NULL, created_on DATETIME NOT NULL);
CREATE TABLE IF NOT EXISTS articles_body (article_id int NOT NULL, body text);
CREATE TABLE IF NOT EXISTS comments (id int AUTO_INCREMENT PRIMARY KEY, article_id int NOT NULL, user_id int NOT NULL, created_on DATETIME NOT NULL);
