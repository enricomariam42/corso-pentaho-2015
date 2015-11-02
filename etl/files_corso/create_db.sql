DROP database IF EXISTS corso ;
CREATE database corso CHARACTER SET utf8 ;
-- CREATE USER 'utente_corso'@'%' IDENTIFIED BY 'password' ;
-- GRANT ALL ON `corso`.* TO 'utente_corso'@'%' ;
-- FLUSH PRIVILEGES ;

use corso;

CREATE TABLE `dim_presidio` (
  `id` int(11) NOT NULL,
  `ente` varchar(16) DEFAULT NULL,
  `presidio` varchar(16) DEFAULT NULL,
  `descrizione` varchar(128) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_dim_presidio_lookup` (`ente`,`presidio`),
  KEY `idx_dim_presidio_tk` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ;

INSERT INTO dim_presidio (id,ente,presidio,descrizione,version,date_from,date_to) 
        VALUES (0 /*not nullable*/,'Non Disponibile','Non Disponibile','Non Disponibile',1,{d '1900-01-01'},{d '2200-01-01'});

