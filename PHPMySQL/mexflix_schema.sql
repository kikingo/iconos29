/*Comentarios en SQL*/

/*https://www.youtube.com/watch?v=i_cVJgIz_Cs*/
DROP DATABASE IF EXISTS mexflix;

CREATE DATABASE IF NOT EXISTS mexflix;

USE mexflix;

CREATE TABLE movieserie(
	imdb_id CHAR(9) PRIMARY KEY,
	title VARCHAR(80) NOT NULL,
	plot TEXT,
	genres VARCHAR(100) NOT NULL,
	author VARCHAR(100) DEFAULT 'Pendiente',
	actors VARCHAR(100) DEFAULT 'Pendiente',
	country VARCHAR(30) DEFAULT 'Desconocido',
	premiere YEAR(4) NOT NULL,
	trailer VARCHAR(150) DEFAULT 'una url genérica',
	poster VARCHAR(150) DEFAULT 'una url genérica',
	rating DECIMAL(2,1) NOT NULL,
	category ENUM('Movie', 'Serie') NOT NULL,
	status_id INTEGER UNSIGNED NOT NULL
)ENGINE=MyISAM DEFAULT CHARSET = utf8;

INSERT INTO movieserie (imdb_id, title, plot, genres, author, actors, country, premiere, trailer, poster, rating, category, status_id) VALUES
	('tt0903747', 'Breaking Bad', 'A chemistry teacher diagnosed with terminal lung cancer teams up with his former student to cook and sell crystal meth.', 'Crime, Drama, Thriller', 'Vince Gilligan', 'Bryan Cranston, Anna Gunn, Aaron Paul, Dean Norris', 'USA', '2008', 'https://www.youtube.com/watch?v=--z4YzxlT8o', 'http://ia.media-imdb.com/images/M/MV5BMTQ0ODYzODc0OV5BMl5BanBnXkFtZTgwMDk3OTcyMDE@._V1_SX300.jpg', 9.5, 'Serie', 4),
	('tt2820466', 'Justice League: The Flashpoint Paradox', 'The Flash finds himself in a war torn alternate timeline and teams up with alternate versions of his fellow heroes to return home and restore the timeline.', 'Animation, Action, Adventure', 'Jay Oliva', 'Justin Chambers, C. Thomas Howell, Michael B. Jordan, Kevin McKidd', 'USA', '2013', 'https://www.youtube.com/watch?v=xe0JiobQ98o', 'http://ia.media-imdb.com/images/M/MV5BOTM0MDI5NTUwM15BMl5BanBnXkFtZTgwMTEyNTEwMDE@._V1_SX300.jpg', 8.1, 'Movie', 2),
	('tt1520211', 'The Walking Dead', 'Rick Grimes is a former Sheriff\'s deputy who has been in a coma for several months after being shot while on duty. When he awakens he discovers that the world has been ravished by a zombie epidemic of apocalyptic proportions, and that he seems to be the only person still alive. After returning home to discover his wife and son missing, he heads for Atlanta to search for his family. Narrowly escaping death at the hands of the zombies on arrival in Atlanta he is aided by another survivor, Glenn, who takes Rick to a camp outside the town. There Rick finds his wife Lori and his son, Carl, along with his partner/best friend Shane and a small group of survivors who struggle to fend off the zombie hordes; as well as competing with other surviving groups who are prepared to do whatever it takes to survive in this harsh new world.', 'Drama, Horror', 'Frank Darabont', 'Andrew Lincoln, Steven Yeun, Chandler Riggs, Norman Reedus', 'USA', '2010', 'https://www.youtube.com/watch?v=R1v0uFms68U', 'http://ia.media-imdb.com/images/M/MV5BMTQ3NzQ2Mzk1OF5BMl5BanBnXkFtZTgwNTAzNjI5NjE@._V1_SX300.jpg', 8.6, 'Serie', 3),
	('tt0479143', 'Rocky Balboa', 'Thirty years after the ring of the first bell, Rocky Balboa comes out of retirement and dons his gloves for his final fight; against the reigning heavyweight champ Mason \'The Line\' Dixon.', 'Drama, Sport', 'Sylvester Stallone', 'Sylvester Stallone, Burt Young, Antonio Tarver, Geraldine Hughes', 'USA','2006', 'https://www.youtube.com/watch?v=8tab8fK2_3w', 'http://ia.media-imdb.com/images/M/MV5BMTM2OTUzNDE3NV5BMl5BanBnXkFtZTcwODczMzkzMQ@@._V1_SX300.jpg', 7.2, 'Movie', 2),
	('tt4158110', 'Mr. Robot', 'Elliot Alderson, a young cyber-security engineer living in New York who assumes the role of a vigilante hacker by night. Elliot meets a mysterious anarchist known as "Mr. Robot" who recruits Elliot to join his team of hackers, "fsociety". Elliot, who has a social anxiety disorder and connects to people by hacking them, is intrigued but uncertain if he wants to be part of the group. The show follows Mr. Robot\'s attempts to engage Elliot in his mission to destroy the corporation Elliot is paid to protect. Compelled by his personal beliefs, Elliot struggles to resist the chance to take down the multinational CEOs that are running (and ruining) the world.', 'Crime, Drama', ' Sam Esmail', 'Rami Malek, Carly Chaikin, Portia Doubleday, Martin Wallström', 'USA', '2015', 'https://www.youtube.com/watch?v=Ug4fRXGyIak', 'http://ia.media-imdb.com/images/M/MV5BMTg3OTQ2NzAzN15BMl5BanBnXkFtZTgwMDUyNjY3NTE@._V1_SX300.jpg', 9.0, 'Serie', 3),
	('tt0468569','The Dark Knight','Batman raises the stakes in his war on crime. With the help of Lieutenant Jim Gordon and District Attorney Harvey Dent, Batman sets out to dismantle the remaining criminal organizations that plague the city streets. The partnership proves to be effective, but they soon find themselves prey to a reign of chaos unleashed by a rising criminal mastermind known to the terrified citizens of Gotham as The Joker.','Action, Crime, Drama','Christopher Nolan','Christian Bale, Heath Ledger, Aaron Eckhart, Michael Caine','USA, UK','2008','https://www.youtube.com/watch?v=EXeTwQWrcwY','http://ia.media-imdb.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_SX300.jpg',9.0,'Movie',2),
	('tt2431438', 'Sense8', 'Sense8 tells the story of eight strangers: Will (Smith), Riley (Middleton), Capheus (Ameen), Sun (Bae), Lito (Silvestre), Kala (Desai), Wolfgang (Riemelt), and Nomi (Clayton). Each individual is from a different culture and part of the world. In the aftermath of a tragic death they all experience through what they perceive as dreams or visions, they suddenly find themselves growing mentally and emotionally connected. While trying to figure how and why this connection happened and what it means, a mysterious man named Jonas tries to help the eight. Meanwhile, another stranger called Whispers attempts to hunt them down, using the same sensate power to gain full access to a sensate\'s mind (thoughts/sight) after looking into their eyes. Each episode reflects the views of the characters interacting with each other while delving deeper into their backgrounds and what sets them apart and brings them together with the others.', 'Drama, Mystery, Sci-Fi', 'J. Michael Straczynski, Andy Wachowski, Lana Wachowski', 'Aml Ameen, Doona Bae, Jamie Clayton, Tina Desai', 'USA', '2015', 'https://www.youtube.com/watch?v=riLgCIvE9aU', 'http://ia.media-imdb.com/images/M/MV5BMTY2MjI4MjkxN15BMl5BanBnXkFtZTgwNjU5Nzk4NTE@._V1_SX300.jpg', 8.4, 'Serie', 3),
	('tt0380538', 'Matando Cabos', 'In Mexico City, the powerful and violent magnate of steel Oscar Cabos catches his daughter Paulina having sex with her boyfriend and his employee Javier "Jaque" and he works Jaque over. On the next day, Jaque pays a visit to Cabos in his office and the angry man comes with a golf club to hit Jaque again. However, Cabos accidentally trips on a golf ball, falls on the floor and faints. Jaque calls his best friend Mudo to help him, but the janitor Nacho finds his boss fainted on the floor and he steals and dresses himself with Cabos\' clothes and jewels. Meanwhile, Nacho\'s son Botcha and his friend Nico have planned to kidnap Cabos and they are waiting for him in the parking garage. When he walks in the parking garage, the two kidnappers hit him on the back of the head, believing that he is Cabos, they cover his head with a bag. They head with the abducted man to the house of Botcha\'s girlfriend Lula. Meanwhile, Jaque and Mudo calls their wrestler friend Ruben "Mascarita" and his midget partner Tony \'El Canibal\' to help them to get rid of Cabos in his birthday party. But both plans do not work well along the night.', 'Action, Adventure, Comedy', 'Alejandro Lozano', 'Tony Dalton, Ana Claudia Talancón, Pedro Armendáriz Jr., Kristoff', 'México', '2004', 'https://www.youtube.com/watch?v=nujJ3sXSU18', 'http://ia.media-imdb.com/images/M/MV5BMTI2MzUzNTc1N15BMl5BanBnXkFtZTcwOTM1NzYyMQ@@._V1_SX300.jpg', 7.6, 'Movie', 2),
	('tt2654620', 'The Strain', 'A thriller that tells the story of Dr. Ephraim Goodweather, the head of the Center for Disease Control Canary Team in New York City. He and his team are called upon to investigate a mysterious viral outbreak with hallmarks of an ancient and evil strain of vampirism. As the strain spreads, Eph, his team, and an assembly of everyday New Yorkers, wage war for the fate of humanity itself.', 'Drama, Horror, Thriller', 'Guillermo del Toro, Chuck Hogan', 'Corey Stoll, David Bradley, Kevin Durand, Richard Sammel', 'USA', '2014', 'https://www.youtube.com/watch?v=RiN8Edb4X2w', 'http://ia.media-imdb.com/images/M/MV5BMjE1MjY3OTg5OV5BMl5BanBnXkFtZTgwOTI1NDcwNjE@._V1_SX300.jpg', 7.5, 'Serie', 3),
	('tt3076658', 'Creed', 'The former World Heavyweight Champion Rocky Balboa serves as a trainer and mentor to Adonis Johnson, the son of his late friend and former rival Apollo Creed.', 'Drama, Sport', 'Ryan Coogler', 'Sylvester Stallone, Michael B. Jordan, Tessa Thompson, Graham McTavish', 'USA', '2015', 'https://www.youtube.com/watch?v=Uv554B7YHk4', 'http://ia.media-imdb.com/images/M/MV5BMTg1NDY1MTM0Ml5BMl5BanBnXkFtZTgwMTU4Njg4NjE@._V1_SX300.jpg', 0, 'Movie', 1);

CREATE TABLE seasons(
	season_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	serie_id CHAR(9),
	season INTEGER UNSIGNED NOT NULL,
	premiere YEAR(4) NOT NULL,
	chapters INTEGER UNSIGNED NOT NULL
)ENGINE=MyISAM DEFAULT CHARSET = utf8;

INSERT INTO seasons (season_id, serie_id, season, premiere, chapters) VALUES
	(1, 'tt0903747', 1, '2008', 7),
	(2, 'tt0903747', 2, '2009', 13),
	(3, 'tt0903747', 3, '2010', 13),
	(4, 'tt0903747', 4, '2011', 13),
	(5, 'tt0903747', 5, '2012', 16),
	(6, 'tt1520211', 1, '2010', 6),
	(7, 'tt1520211', 2, '2011', 13),
	(8, 'tt1520211', 3, '2012', 16),
	(9, 'tt1520211', 4, '2013', 16),
	(10, 'tt1520211', 5, '2014', 16),
	(11, 'tt1520211', 6, '2015', 16),
	(12, 'tt4158110', 1, '2015', 10),
	(13, 'tt4158110', 2, '2016', 0),
	(14, 'tt2431438', 1, '2015', 12),
	(15, 'tt2431438', 2, '2016', 0),
	(16, 'tt2654620', 1, '2014', 13),
	(17, 'tt2654620', 2, '2015', 13),
	(18, 'tt2654620', 3, '2016', 0);

CREATE TABLE chapters(
	chapter_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	season_id INTEGER UNSIGNED,
	title VARCHAR(80) DEFAULT 'Not Available'
)ENGINE=MyISAM DEFAULT CHARSET = utf8;

INSERT INTO chapters (chapter_id, season_id, title) VALUES
	(1, 1, 'Pilot'),
	(2, 1, 'The Cat''s in the Bag...'),
	(3, 1, '...and the Bag''s in the River'),
	(4, 1, 'Cancer Man'),
	(5, 1, 'Gray Matter'),
	(6, 1, 'Crazy Handful of Nothin'''),
	(7, 1, 'A No-Rough-Stuff-Type Deal'),
	(8, 2, 'Seven Thirty-Seven'),
	(9, 2, 'Grilled'),
	(10, 2, 'Bit by a dead bee'),
	(11, 2, 'Down'),
	(12, 2, 'Breakage'),
	(13, 2, 'Peekaboo'),
	(14, 2, 'Negro y azúl'),
	(15, 2, '«Better Call Saul'),
	(16, 2, '4 days out'),
	(17, 2, 'Over'),
	(18, 2, 'Mandala'),
	(19, 2, 'Phoenix'),
	(20, 2, 'ABQ'),
	(21, 3, 'No más'),
	(22, 3, 'Caballo Sin Nombre'),
	(23, 3, 'I.F.T.'),
	(24, 3, 'Green light'),
	(25, 3, 'Más'),
	(26, 3, 'Sunset'),
	(27, 3, 'One Minute'),
	(28, 3, 'I see you'),
	(29, 3, 'Kafkaesque'),
	(30, 3, 'Fly'),
	(31, 3, 'Abiquiu'),
	(32, 3, 'Half Measures'),
	(33, 3, 'Full Measures'),
	(34, 4, 'Box Cutter'),
	(35, 4, 'Thirty-Eight Snub'),
	(36, 4, 'Open House'),
	(37, 4, 'Bullet Points'),
	(38, 4, 'Shotgun'),
	(39, 4, 'Cornered'),
	(40, 4, 'Problem Dog'),
	(41, 4, 'Hermanos'),
	(42, 4, 'Bugs'),
	(43, 4, 'Salud'),
	(44, 4, 'Crawl Space'),
	(45, 4, 'End Times'),
	(46, 4, 'Face off'),
	(47, 5, 'Live Free or Die'),
	(48, 5, 'Madrigal'),
	(49, 5, 'Hazard Play'),
	(50, 5, 'Fifty-one'),
	(51, 5, 'Dead Freight'),
	(52, 5, 'Buyout'),
	(53, 5, 'Say My Name'),
	(54, 5, 'Gliding Over All'),
	(55, 5, 'Blood Money'),
	(56, 5, 'Buried'),
	(57, 5, 'Confessions'),
	(58, 5, 'Rabiod dog'),
	(59, 5, 'To''hajiilee'),
	(60, 5, 'Ozymandias'),
	(61, 5, 'Granite State'),
	(62, 5, 'Felina'),
	(63, 6, 'Days Gone Bye'),
	(64, 6, 'Guts'),
	(65, 6, 'Tell It to the Frogs'),
	(66, 6, 'Vatos'),
	(67, 6, 'Wildfire'),
	(68, 6, 'TS-19'),
	(69, 7, 'What Lies Ahead.'),
	(70, 7, 'Bloodletting.'),
	(71, 7, 'Save The Last One'),
	(72, 7, 'Cherokee Rose'),
	(73, 7, 'Chupacabra'),
	(74, 7, 'Secrets'),
	(75, 7, 'Pretty Much Dead Already'),
	(76, 7, 'Nebraska'),
	(77, 7, 'Triggerfinger'),
	(78, 7, '18 Miles Out '),
	(79, 7, 'Judge, Jury, Executioner'),
	(80, 7, 'Better Angels'),
	(81, 7, 'Beside the Dying Fire'),
	(82, 8, 'Seed'),
	(83, 8, 'Sick'),
	(84, 8, 'Walk with me'),
	(85, 8, 'Killer Within'),
	(86, 8, 'Say The Word'),
	(87, 8, 'Hounded'),
	(88, 8, 'When The Dead Come Knocking'),
	(89, 8, 'Made to Suffer'),
	(90, 8, 'The Suicide King.'),
	(91, 8, 'Home'),
	(92, 8, 'I Aint a Judas'),
	(93, 8, 'Clear'),
	(94, 8, 'Arrow On The Doorpost'),
	(95, 8, 'Prey'),
	(96, 8, 'This Sorrowful Life'),
	(97, 8, 'Welcome To The Tombs'),
	(98, 9, '30 Days Without an Accident'),
	(99, 9, 'Infected'),
	(100, 9, 'Isolation'),
	(101, 9, 'Indifference'),
	(102, 9, 'Internment'),
	(103, 9, 'Live Bait'),
	(104, 9, 'Dead Weight'),
	(105, 9, 'Too Far Gone'),
	(106, 9, 'After'),
	(107, 9, 'Inmates'),
	(108, 9, 'Claimed'),
	(109, 9, 'Still'),
	(110, 9, 'Alone'),
	(111, 9, 'The Grove'),
	(112, 9, 'Us'),
	(113, 9, 'A'),
	(114, 10, 'No Sanctuary'),
	(115, 10, 'Strangers'),
	(116, 10, 'Four Walls and a Roof'),
	(117, 10, 'Slabtown'),
	(118, 10, 'Self Help'),
	(119, 10, 'Consumed'),
	(120, 10, 'Crossed'),
	(121, 10, 'Coda'),
	(122, 10, 'What Happened and What\'s Going On'),
	(123, 10, 'Them'),
	(124, 10, 'The Distance'),
	(125, 10, 'Remember'),
	(126, 10, 'Forget'),
	(127, 10, 'Spend'),
	(128, 10, 'Try'),
	(129, 10, 'Conquer'),
	(130, 11, 'First Time Again'),
	(131, 11, 'JSS'),
	(132, 11, ''),
	(133, 11, ''),
	(134, 11, ''),
	(135, 11, ''),
	(136, 11, ''),
	(137, 11, ''),
	(138, 11, ''),
	(139, 11, ''),
	(140, 11, ''),
	(141, 11, ''),
	(142, 11, ''),
	(143, 11, ''),
	(144, 11, ''),
	(145, 11, ''),
	(146, 12, 'eps1.0_hellofriend.mov'),
	(147, 12, 'eps1.1_ones-and-zer0es.mpeg'),
	(148, 12, 'eps1.2_d3bug.mkv'),
	(149, 12, 'eps1.3_da3m0ns.mp4'),
	(150, 12, 'eps1.4_3xpl0its.wmv'),
	(151, 12, 'eps1.5_br4ve-trave1er.asf'),
	(152, 12, 'eps1.6_v1ew-s0urce.flv'),
	(153, 12, 'eps1.7_wh1ter0se.m4v'),
	(154, 12, 'eps1.8_m1rr0r1ng.qt'),
	(155, 12, 'eps1.9_zer0-day.avi'),
	(156, 14, 'Limbic Resonance'),
	(157, 14, 'I Am Also A We'),
	(158, 14, 'Smart Money\'s on the Skinny Bitch'),
	(159, 14, 'What\'s Going On?'),
	(160, 14, 'Art Is Like Religion'),
	(161, 14, 'Demons'),
	(162, 14, 'WWN Double-D?'),
	(163, 14, 'We Will All Be Judged by the Courage of Our Hearts'),
	(164, 14, 'Death Doesn\'t Let You Say Goodbye'),
	(165, 14, 'What Is Human?'),
	(166, 14, 'Just Turn the Wheel and the Future Changes'),
	(167, 14, 'I Can\'t Leave Her'),
	(168, 16, 'Night Zero'),
	(169, 16, 'The Box'),
	(170, 16, 'Gone Smooth'),
	(171, 16, 'It\'s Not for Everyone'),
	(172, 16, 'Runaways'),
	(173, 16, 'Occultation'),
	(174, 16, 'For Services Rendered'),
	(175, 16, 'Creatures of the Night'),
	(176, 16, 'The Disappeared'),
	(177, 16, 'Loved Ones'),
	(178, 16, 'The Third Rail'),
	(179, 16, 'Last Rites'),
	(180, 16, 'The Master'),
	(181, 17, 'BK, NY'),
	(182, 17, 'By Any Means'),
	(183, 17, 'Fort Defiance'),
	(184, 17, 'The Silver Angel'),
	(185, 17, 'Quick and Painless'),
	(186, 17, 'Identity'),
	(187, 17, 'The Born'),
	(188, 17, 'Intruders'),
	(189, 17, 'The Battle for Red Hook'),
	(190, 17, 'The Assassin'),
	(191, 17, 'Dead End'),
	(192, 17, 'Fallen Light'),
	(193, 17, 'The Night Train');

CREATE TABLE genres(
	genre_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	genre VARCHAR(20) NOT NULL
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
	state VARCHAR(20) NOT NULL
)ENGINE=MyISAM DEFAULT CHARSET = utf8;

INSERT INTO status (state_id, state) VALUES 
	(1, 'Coming Soon'),
	(2, 'Release'),
	(3, 'In Issue'),
	(4, 'Finished'),
	(5, 'Canceled');