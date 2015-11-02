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

CREATE TABLE `dim_data` (
  `id` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `anno` int(11) DEFAULT NULL,
  `mese_nr` int(11) DEFAULT NULL,
  `giorno_anno` int(11) DEFAULT NULL,
  `giorno_mese` int(11) DEFAULT NULL,
  `giorno_settimana_nr` int(11) DEFAULT NULL,
  `settimana_anno` int(11) DEFAULT NULL,
  `data_breve` varchar(64) DEFAULT NULL,
  `data_media` varchar(64) DEFAULT NULL,
  `data_lunga` varchar(64) DEFAULT NULL,
  `data_completa` varchar(64) DEFAULT NULL,
  `giorno_della_settimana` varchar(64) DEFAULT NULL,
  `giorno_dell_anno` int(11) DEFAULT NULL,
  `ordinale_giorno_della_settimana_nel_mese` int(11) DEFAULT NULL,
  `mese` varchar(64) DEFAULT NULL,
  `mese_anno` varchar(64) DEFAULT NULL,
  `trimestre` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_dim_data_lookup` (`data`),
  KEY `idx_dim_data_tk` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ;

INSERT INTO dim_data (id,data,anno,mese_nr,giorno_anno,giorno_mese,giorno_settimana_nr,settimana_anno,data_breve,data_media,data_lunga,data_completa,giorno_della_settimana,giorno_dell_anno,ordinale_giorno_della_settimana_nel_mese,mese,mese_anno,trimestre) VALUES (0 /*not nullable*/,{d '0000-00-00'},0,0,0,0,0,0,'Non Disponibile','Non Disponibile','Non Disponibile','Non Disponibile','Non Disponibile',0,0,'Non Disponibile','Non Disponibile','Non Disponibile');

