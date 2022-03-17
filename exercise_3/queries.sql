1.
Sample CREATE statements :
INSERT INTO users (name, type) values ("user_1", "admin");
INSERT INTO users (name, type) values ("user_2", "normal");
INSERT INTO users (name, type) values ("user_3", "normal");

INSERT INTO categories (name) values ("tech");
INSERT INTO categories (name) values ("stocks");
INSERT INTO categories (name) values ("gaming");

INSERT INTO articles (title, category_id, user_id, created_on) values ("How to reduce ping??", 3, 2, NOW());
INSERT INTO articles_body (article_id,body) values(3, "<P><H3>There are many ways to reduce ping<H3><BR><span>Article 3</span></P>");

INSERT INTO comments (article_id, user_id, created_on, comment) values (2, 2, NOW(), "comment STOCKS 2");
INSERT INTO comments (article_id, user_id, created_on, comment) values (6, 3, NOW(), "comment on qwerty 1");


2.
SET @U3="user_3";
SELECT a.title, c.name AS category, u.name AS author, a.created_on, ab.body 
  FROM articles AS a JOIN categories AS c JOIN users AS u JOIN articles_body AS ab 
  ON a.category_id=c.id AND a.user_id=u.id AND ab.article_id=a.id AND u.name=@U3;

3.
SELECT a.title, com.comment 
  FROM articles AS a LEFT JOIN comments AS com 
  ON a.id = com.article_id;

4.


5.
SELECT a.title 
  FROM articles as a join comments as com 
  ON a.id = com.article_id 
  group by title limit 1;
  
6.



