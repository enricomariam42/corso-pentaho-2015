DROP database IF EXISTS corso ;
CREATE database corso CHARACTER SET utf8 ;
CREATE USER 'utente_corso'@'%' IDENTIFIED BY 'password' ;
GRANT ALL ON `corso`.* TO 'utente_corso'@'%' ;
FLUSH PRIVILEGES ;


