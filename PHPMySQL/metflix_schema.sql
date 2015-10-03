--Comentarios en SQL
CREATE DATABASE IF NOT EXISTS metflix;

USE metflix;

CREATE TABLE peliserie(
	peliserie_id CHAR(9) PRIMARY KEY,
	titulo VARCHAR(80) NOT NULL,
	sinopsis TEXT,
	generos_id INTEGER UNSIGNED NOT NULL,
	autor VARCHAR(80) DEFAULT 'Pendiente',
	actores VARCHAR(255) DEFAULT 'Pendiente',
	pais VARCHAR(80) DEFAULT 'Desconocido',
	anio YEAR(4) NOT NULL,
	trailer VARCHAR(80) DEFAULT 'una url genérica',
	poster VARCHAR(80) DEFAULT 'una url genérica',
	puntuacion DECIMAL(2,1) NOT NULL,
	categoria ENUM('Película','Serie') NOT NULL,
	status ENUM('Proximamente','Estreno','A la Venta','En Emisión','Finalizada','Cancelada')
)ENGINE=MyISAM DEFAULT CHARSET = utf8;

CREATE TABLE tempordas(
	temporada_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	serie_id CHAR(9),
	titulo VARCHAR(80) NOT NULL,
	anio YEAR(4) NOT NULL,
	capitulos INTEGER UNSIGNED NOT NULL
)ENGINE=MyISAM DEFAULT CHARSET = utf8;

CREATE TABLE capitulos(
	capitulo_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	temporada_id INTEGER UNSIGNED,
	titulo VARCHAR(80) NOT NULL
)ENGINE=MyISAM DEFAULT CHARSET = utf8;

CREATE TABLE generos(
	genero_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	genero VARCHAR(80) NOT NULL
)ENGINE=MyISAM DEFAULT CHARSET = utf8;

CREATE TABLE generos_x_peliserie(
	gxp_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	genero_id INTEGER UNSIGNED,
	peliserie_id INTEGER UNSIGNED
)ENGINE=MyISAM DEFAULT CHARSET = utf8;