dump table sqlite 
sqlite3 .database.db .dump > dump.sql
sudo cat dump.sql | python convert.py > mariadb.sql


create domocom db table under mariadb sys
 sudo mysql -uroot -p
 
 CREATE DATABASE domocom;
 CREATE USER 'admin'@'localhost' IDENTIFIED BY 'domocom01';
 GRANT ALL PRIVILEGES ON domocom.* TO 'admin'@'localhost';
 FLUSH PRIVILEGES;
 
 # to delete db  DROP DATABASE domocom;
 # to check db  SHOW DATABASES;
 # to check table SHOW CREATE TABLE  yana_plugin_Home_Check;
 # to check index show indexes from yana_plugin_Home_Check;
 # to work on table  use domocom
 
 
mariadb import dump to mariadb 
 chmod 775 mariadb.sql
 sudo chown www-data:www-data mariadb.sql
 sudo mysql -p -u admin -h 127.0.0.1 domocom < mariadb.sql

 
 
