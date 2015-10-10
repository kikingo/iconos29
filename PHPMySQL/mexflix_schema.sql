/*Comentarios en SQL*/

/*https://www.youtube.com/watch?v=i_cVJgIz_Cs*/
DROP DATABASE IF EXISTS mexflix;

CREATE DATABASE IF NOT EXISTS mexflix;

USE mexflix;

CREATE TABLE movieserie(
	imdb_id CHAR(9) PRIMARY KEY,
	title VARCHAR(80) NOT NULL,
	plot TEXT,
	genres VARCHAR(80) NOT NULL,
	author VARCHAR(80) DEFAULT 'Pendiente',
	actors VARCHAR(255) DEFAULT 'Pendiente',
	country VARCHAR(80) DEFAULT 'Desconocido',
	premiere YEAR(4) NOT NULL,
	trailer VARCHAR(80) DEFAULT 'una url genérica',
	poster VARCHAR(80) DEFAULT 'una url genérica',
	rating DECIMAL(2,1) NOT NULL,
	category ENUM('Película','Serie') NOT NULL,
	status_id INTEGER UNSIGNED NOT NULL
)ENGINE=MyISAM DEFAULT CHARSET = utf8;

CREATE TABLE seasons(
	season_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	serie_id CHAR(9),
	title VARCHAR(80) NOT NULL,
	premiere YEAR(4) NOT NULL,
	chapters INTEGER UNSIGNED NOT NULL
)ENGINE=MyISAM DEFAULT CHARSET = utf8;

CREATE TABLE chapters(
	chapter_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	season_id INTEGER UNSIGNED,
	title VARCHAR(80) NOT NULL
)ENGINE=MyISAM DEFAULT CHARSET = utf8;

CREATE TABLE genres(
	genre_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	genre VARCHAR(80) NOT NULL
)ENGINE=MyISAM DEFAULT CHARSET = utf8;

/*http://www.imdb.com/genre*/
INSERT INTO genres (genre_id, genre) VALUES
	(1, 'Action'),
	(2, 'Adventure'),
	(3, 'Animation'),
	(4, 'Biography'),
	(5, 'Comedy'),
	(6, 'Crime'),
	(7, 'Documentary'),
	(8, 'Drama'),
	(9, 'Family'),
	(10, 'Fantasy'),
	(11, 'Film-Noir'),
	(12, 'Game-Show'),
	(13, 'History'),
	(14, 'Horror'),
	(15, 'Music'),
	(16, 'Musical'),
	(17, 'Mystery'),
	(18, 'News'),
	(19, 'Reality-TV'),
	(20, 'Romance'),
	(21, 'Sci-Fi'),
	(22, 'Sport'),
	(23, 'Talk-Show'),
	(24, 'Thriller'),
	(25, 'War'),
	(26, 'Western');

CREATE TABLE status(
	state_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	state VARCHAR(80) NOT NULL
)ENGINE=MyISAM DEFAULT CHARSET = utf8;

INSERT INTO status (state_id, state) VALUES 
	(1, 'Proximamente'),
	(2, 'Estreno'),
	(3, 'A la Venta'),
	(4, 'En Emisión'),
	(5, 'Finalizada'),
	(6, 'Cancelada');