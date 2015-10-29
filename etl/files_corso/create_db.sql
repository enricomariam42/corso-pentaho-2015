DROP database IF EXISTS corso ;
CREATE database corso CHARACTER SET utf8 ;
CREATE USER 'utente_corso'@'%' IDENTIFIED BY 'password' ;
GRANT ALL ON `corso`.* TO 'utente_corso'@'%' ;
FLUSH PRIVILEGES ;

use corso;

CREATE TABLE IF NOT EXISTS dim_presidio
(
  id INT(11) NOT NULL PRIMARY KEY
, ente VARCHAR(8)
, presidio VARCHAR(8)
, descrizione VARCHAR(256)
, version INT(11)
, date_from DATETIME
, date_to DATETIME
)
;CREATE INDEX idx_dim_presidio_lookup ON dim_presidio(ente, presidio)
;
CREATE INDEX idx_dim_presidio_tk ON dim_presidio(id)
;

CREATE TABLE IF NOT EXISTS dim_data
(
  id INT not null
, date_field DATETIME
, year INT
, month INT
, day_of_year INT
, day_of_month INT
, day_of_week INT
, week_of_year INT
, day_of_week_desc VARCHAR(30)
, day_of_week_short_desc VARCHAR(3)
, month_desc VARCHAR(30)
, month_short_desc VARCHAR(3)
, quarter VARCHAR(15)
, PRIMARY KEY (`id`)
, KEY `idx_DIM_DATE_lookup` (`date_field`)
, KEY `idx_DIM_DATE_tk` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8
;


