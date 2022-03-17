1.
mysqldump -u root -p vtapp > /Users/pranshukohli/vtapp_17_03_22.sql

2.
create database restored;
mysql -u root -p -D restored < /Users/pranshukohli/vtapp_17_03_22.sql
