1.
CREATE:
INSERT INTO users (name, type) values ("user_1", "admin");
INSERT INTO users (name, type) values ("user_2", "normal");
INSERT INTO users (name, type) values ("user_3", "normal");

INSERT INTO categories (name) values ("tech");
INSERT INTO categories (name) values ("stocks");
INSERT INTO categories (name) values ("gaming");

INSERT INTO articles (title, category_id, user_id, created_on) values ("How to reduce ping??", 3, 2, NOW());
INSERT INTO articles_body (article_id,body) values(3, "<P><H3>There are many ways to reduce ping<H3><BR><span>Article 3</span></P>");

2.
SET @U3="user_3";
SELECT a.title, c.name AS category, u.name AS author, a.created_on, ab.body FROM articles AS a JOIN categories AS c JOIN users AS u JOIN articles_body AS ab ON a.category_id=c.id AND a.user_id=u.id AND ab.article_id=a.id AND u.name=@U3;

