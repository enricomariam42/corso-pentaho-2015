DROP database IF EXISTS ods ;
CREATE database ods CHARACTER SET utf8 ;

use ods;

CREATE TABLE centri
(
  azienda VARCHAR(64)
, dipartimento VARCHAR(64)
, cod_cdr VARCHAR(16)
, descrizione_cdr VARCHAR(64)
, cod_cdc VARCHAR(16)
, descrizione_cdc VARCHAR(64)
)
;

CREATE USER 'utente_corso'@'%' IDENTIFIED BY 'password' ;
GRANT ALL ON `ods`.* TO 'utente_corso'@'%' ;
FLUSH PRIVILEGES ;


