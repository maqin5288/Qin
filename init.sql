CREATE USER 'tektree'@'localhost' IDENTIFIED BY 'p@55word';
GRANT ALL PRIVILEGES ON *.* TO 'tektree'@'localhost'  WITH GRANT OPTION;
CREATE USER 'tektree'@'%' IDENTIFIED BY 'p@55word';
GRANT ALL PRIVILEGES ON *.* TO 'tektree'@'%' WITH GRANT OPTION;
