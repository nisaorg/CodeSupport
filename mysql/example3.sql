create database bd_juego;
use bd_juego;

create table juego (
     id_juego BIGINT UNSIGNED not null,
     nombre VARCHAR(128) not null,
     fecha DATE,
     rating TINYINT,
     constraint ID_juego_ID primary key (id_juego));

create table plataforma (
     id_plataforma INT UNSIGNED not null,
     nombre VARCHAR(128) not null,
     fecha DATE not null,
     constraint ID_plataforma_ID primary key (id_plataforma));

create table p_TIENE_j (
     id_juego BIGINT UNSIGNED not null,
     id_plataforma INT UNSIGNED not null,
     constraint ID_p_TIENE_j_ID primary key (id_plataforma, id_juego));


alter table p_TIENE_j add constraint EQU_p_TIE_plata
     foreign key (id_plataforma)
     references plataforma(id_plataforma);

alter table p_TIENE_j add constraint REF_p_TIE_juego_FK
     foreign key (id_juego)
     references juego(id_juego);

CREATE VIEW v_juego (id_juego, nombre_juego, fecha_juego, rating_juego, id_plataf, nombre_plataf, fecha_plataf) AS
SELECT j.id_juego, j.nombre, j.fecha, rating, p.id_plataforma, p.nombre, p.fecha
FROM juego j JOIN p_TIENE_j pj ON j.id_juego=pj.id_juego JOIN plataforma p ON p.id_plataforma=pj.id_plataforma;

create index REF_p_TIE_juego_IND
     on p_TIENE_j (id_juego);
	 
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27434, 'Aquarius', '1970-10-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28543, 'Big Valley', '1970-03-05 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28625, 'Flip A Card', '1970-03-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29629, 'Big Flipper', '1970-01-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29673, 'Cowboy', '1970-01-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (59480, 'Jet Rocket', '1970-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (63742, 'Highnoon', '1970-09-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17852, 'The Oregon Trail', '1971-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (20713, 'Computer Space', '1971-08-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (21627, 'Four Million B.C.', '1971-05-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (24276, 'Galaxy Game', '1971-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27423, '2001', '1971-02-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27425, '4 Square', '1971-06-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27436, 'Astro', '1971-10-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28848, 'Magic Wizard', '1971-12-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29741, 'Hi-Score Pool', '1971-08-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (41588, 'Drop-A-Card', '1971-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8010, 'Submarine', '1972-08-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10663, 'Hamurabi', '1972-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13729, 'Hunt the Wumpus', '1972-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14965, 'Table Tennis', '1972-05-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22195, 'Pong', '1972-11-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28691, 'King Kool', '1972-07-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28747, 'Outer Space', '1972-02-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29619, 'Baseball Champ', '1973-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29666, 'Casino', '1972-06-08 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29789, 'Home Run', '1972-02-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29813, 'Las Vegas', '1972-12-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33456, 'Simon Says', '1972-05-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33457, 'Analogic', '1972-05-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33491, 'Haunted House', '1972-05-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (37739, 'Baseball', '1972-10-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (40947, 'Pong Doubles', '1973-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43951, 'Shooting Gallery', '1972-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (49940, 'Roulette', '1972-08-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (49941, 'States', '1972-08-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (60908, 'Star Trek', '1972-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17392, 'Lemonade Stand', '1973-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (21711, 'Gotcha', '1973-10-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28569, 'Circus', '1973-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28688, 'Jungle King', '1973-05-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28798, 'Soccer', '1973-12-31 00:00:00', NULL);
	
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29681, 'Deluxe World Series', '1974-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29737, 'Hee Haw', '1973-04-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29797, 'Empire', '1973-05-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34860, 'Cube', '1973-04-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (39848, 'Space Race', '1973-07-15 00:00:00', NULL);
	
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43191, 'Fore', '1973-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43194, 'Hi-Lo Ace', '1973-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45390, 'Paddle Battle', '1973-03-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (48048, 'Big Shot', '1973-08-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (55281, 'Jumping Jack', '1973-05-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (59335, 'Playtron', '1973-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (60904, 'Pong-Tron', '1973-07-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (60905, 'Pong-Tron II', '1973-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (60909, 'Computer Space Ball', '1973-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (61449, 'Elepong', '1973-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (61450, 'Pro Hockey', '1973-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (65406, 'Hockey TV', '1973-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4116, 'Wild Gunman', '1974-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13522, 'Qwak', '1974-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (23048, 'Gran Trak 10', '1974-07-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (23131, 'Spasim', '1974-03-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (23137, 'Maze War', '1974-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28154, 'Airfight', '1974-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28565, 'Champ', '1974-02-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28709, 'Magnotron', '1974-08-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29683, 'Dolphin', '1974-03-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29722, 'Gin', '1974-11-15 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29740, 'Hi-Flyer', '1974-08-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (35848, 'Duotron', '1974-09-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36003, 'Amigo', '1974-05-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36499, 'Speed Race', '1974-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36540, 'Basketball', '1974-01-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (38719, 'Big Indian', '1974-02-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (40949, 'Quadrapong', '1974-03-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (40950, 'Super Pong', '1974-01-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (40951, 'PinPong', '1974-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (41531, 'Balloon Gun', '1974-08-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43196, 'Delta Queen', '1974-07-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (49552, 'Wander', '1974-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (16196, 'DND', '1975-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17598, 'Panther', '1975-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19818, 'Videocart-3: Video Blackjack', '1976-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (21625, 'Super Soccer', '1975-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (25853, 'Abra Ca Dabra', '1975-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (25858, 'Aladdin''s Castle', '1975-09-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27403, '300', '1975-08-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27438, 'Atlantis', '1975-01-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27794, 'EVR Race', '1975-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28542, 'Big League', '1975-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28743, 'Olympics', '1975-01-08 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29644, 'Blue Max', '1975-07-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29732, 'Gold Mine', '1975-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29733, 'Gold Record', '1975-04-09 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29798, 'Moria', '1975-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29799, 'pedit5', '1975-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (32574, 'Gun Fight', '1975-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (32676, 'Wheels', '1975-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (32677, 'Wheels II', '1975-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36504, 'Video Action', '1975-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36563, 'Interceptor', '1975-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43193, 'Hi-Deal', '1975-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43197, 'Flicker', '1975-01-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (55280, 'Quick Draw', '1975-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (59484, 'Gun Smoke', '1975-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (61240, 'PT-109', '1975-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (670, 'Videocart-1: Tic-Tac-Toe, Shooting Gallery, Doodle, Quadra-Doodle', '1976-08-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1055, 'Super Breakout', '1977-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1126, 'Attack', '1976-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1811, 'Street Racer', '1977-10-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3206, 'Tanktics: Computer game of Armored Combat on the Eastern Front', '1976-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3225, 'Tennis', '1976-08-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3294, 'Video Olympics', '1977-10-14 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4279, 'Math-A-Magic! / Echo!', '1978-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4787, 'Videocart-6: Math Quiz I - Addition, Subtraction', '1977-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5348, 'Air-Sea Battle', '1977-10-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5368, 'Combat', '1977-10-14 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5719, 'Videocart-5: Space War', '1977-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10752, 'Sea Wolf', '1976-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11208, 'Super Bowl', '1977-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13049, 'Breakout', '1976-05-13 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13617, 'Night Driver', '1976-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14950, 'Death Race', '1976-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15313, 'Videocart-2: Desert Fox, Shooting Gallery', '1976-08-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15441, 'Videocart-4: Spitfire', '1977-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (16028, 'Surround', '1977-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17826, 'Outlaw', '1976-03-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18737, 'Bomber', '1977-04-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19301, 'Colossal Cave Adventure', '1976-04-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19476, 'Basic Math', '1977-09-11 00:00:00', NULL);
	
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19945, 'Indy 500', '1977-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22740, 'Circus', '1977-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (23246, 'Football', '1978-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (26664, 'Videocart-7: Math Quiz II', '1977-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (26665, 'Videocart-8: Magic Numbers', '1977-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (26666, 'Videocart-9: Drag Strip', '1977-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (26667, 'Videocart-10: Maze, Cat and Mouse', '1977-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (26668, 'Videocart-11: Backgammon, Acey-Duecy', '1977-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (26669, 'Videocart-12: Baseball', '1977-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (26670, 'Videocart-13: Torpedo Alley, Robot War', '1977-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (26671, 'Videocart-14: Sonar Search', '1977-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27190, 'Checkmate', '1977-01-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27441, 'Bank Shot', '1976-03-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28507, 'Canada Dry', '1976-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28527, 'Ali-Baba', '1976-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28548, 'Blue Chip', '1976-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28559, 'Butterfly', '1977-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28616, 'Fandango', '1976-05-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28773, 'Road Race', '1976-02-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28800, 'Space Mission', '1976-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28801, 'Space Odyssey', '1976-05-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28810, 'Stampede', '1976-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28825, 'Surf Champ', '1976-08-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29671, 'Cinema', '1976-03-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29793, 'Juke Box', '1976-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (30643, 'Astro Battle', '1977-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (30654, 'Football', '1977-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (30665, 'Tornado Baseball/Tennis/Hockey/Handball', '1977-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34284, '27 Tele-games', '1977-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34579, 'Baseball', '1977-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34580, 'Biorhythm', '1977-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34581, 'Blackjack', '1977-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34582, 'Fun with Numbers', '1977-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34583, 'Gunfighter/Moonship Battle', '1977-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34584, 'Space War', '1977-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34585, 'Speedway/Tag', '1977-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34586, 'Tennis/Squash', '1977-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34587, 'TV School House I', '1977-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34588, 'TV School House II: Math Fun', '1977-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34593, 'Bowling', '1977-01-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34595, 'Doodle', '1977-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (35052, 'Boot Hill', '1977-03-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (35371, 'Airborne Avenger', '1977-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36495, 'Fonz', '1976-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36496, 'Heavyweight Champ', '1976-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36587, 'Speed Race Twin', '1976-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (39316, 'Bazooka', '1977-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (41365, 'The Atarians', '1977-02-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (42238, 'Blockade', '1976-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43195, 'Kick Off', '1977-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45549, 'Mata Hari', '1977-09-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (46966, 'Sprint 2', '1976-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (46967, 'Sprint 4', '1977-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (46968, 'Sprint 8', '1977-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (46999, 'Time 2000', '1977-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (47790, 'Gridiron', '1977-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (47978, 'Aerobatics', '1977-03-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (54276, 'Circus', '1977-04-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (54278, 'Combat', '1977-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (55279, 'Aztec', '1976-07-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (61893, 'Stunt Cycle', '1976-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (62177, 'F-1', '1976-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (65018, 'Depthcharge', '1977-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44, 'Ganbare Goemon Gaiden: Kieta Ougon Kiseru', '1990-01-05 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (58, 'Nederland', '1991-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (80, 'Ruff and Reddy in the Space Adventure', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (87, 'The Immortal', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (143, 'Once Upon A Time: Little Red Riding Hood', '1991-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (192, 'Toppler', '1990-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (231, 'Commander Keen 2: The Earth Explodes', '1990-12-14 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (250, 'SimEarth: The Living Planet', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (289, 'Speedball 2: Brutal Deluxe', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (307, 'Atomic Robo-Kid', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (312, 'Assault City', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (331, 'Bloodwych: Data Disks Vol. 1', '1990-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (342, 'Blind People Simulator', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (349, 'King Neptune''s Adventure', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (359, 'Exterminator', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (400, 'Riding Hero', '1990-07-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (481, 'Accordion', '1990-02-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (486, 'Humbug', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (578, 'Final Zone', '1990-10-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (627, 'Winzer', '1991-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (675, 'Betrayal', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (723, 'Metal Gear 2: Solid Snake', '1990-07-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (782, 'Art Alive', '1991-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (806, 'Tom & Jerry Cat-astrophe', '1990-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (851, 'Olli & Lissa 3: The Candlelight Adventure', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (864, 'Spaceward Ho!', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (881, 'Shingen the Ruler', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1051, 'Zona 0', '1991-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1067, 'Stellar 7', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1134, 'Balance of the Planet', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1166, 'Badlands', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1192, 'Quattro Sports', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1216, 'Deep Dungeon IV: Kuro no Youjutsushi', '1990-04-06 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1220, 'Kabuki: Quantum Fighter', '1990-12-21 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1265, 'Invest', '1991-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1289, 'Tie Break', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1309, 'Boomer''s Adventure in ASMIK World', '1990-04-13 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1332, 'Faces', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1334, 'Super Mario World', '1990-11-21 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1338, 'New Ghostbusters II', '1990-12-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1410, 'Fatal Run', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1428, 'Centurion: Defender of Rome', '1990-05-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1441, 'Elvira: Mistress of the Dark', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1452, 'Chew Man Fu', '1990-03-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1583, 'La Aventura Espacial', '1990-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1622, 'Mission: Impossible', '1990-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1624, 'Destiny of an Emperor', '1990-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1649, 'Super Silverbrothers', '1991-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1656, 'Commander Keen: Invasion of the Vorticons', '1990-12-14 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1659, 'Jupiter''s Masterdrive', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1700, 'Joe Montana Football', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1716, 'StarBlade', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1768, 'Shadow of the Ninja', '1990-08-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1790, 'Rock ''n Ball', '1990-01-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1801, 'Puzzle', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1844, '21-en', '1991-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1853, 'NES Play Action Football', '1990-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1856, 'Quattro Arcade', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1904, 'Facing the Empire', '1991-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1917, 'Hugo''s House of Horrors', '1990-01-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1967, 'Moonbase', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1994, 'Chip ''N Dale: Rescue Rangers', '1990-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2073, 'Street Rod', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2093, 'Lupo Alberto, The VideoGame', '1990-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2119, 'Magician Lord', '1990-04-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2142, 'Soviet', '1990-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2207, 'Bakushou! Star Monomane Shitennou', '1990-09-14 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2213, 'The Lucky Dime Caper starring Donald Duck', '1991-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2231, 'Crystalis', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2277, 'R.B.I. Baseball 2', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2299, 'Rad Racer II', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2307, 'Krazy Kreatures', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2332, 'Continuum', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2336, 'The Bard''s Tale III: Thief of Fate', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2380, 'Bubble Plus', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2388, 'StarTropics', '1990-12-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2418, 'Dragonflight', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2429, 'Growl', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2448, 'Rise of the Dragon', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2487, 'Crystals of Arborea', '1990-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2533, 'Meltdown', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2541, 'Tank Wars', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2554, 'Chip ''N Dale Rescue Rangers: The Adventure in Nimnul''s Castle', '1990-03-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2558, 'Robot II: Das Labyrinth im Wald', '1990-04-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2563, 'James Bond: The Stealth Affair', '1990-06-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2568, 'Wings', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2627, 'Airstrike USA', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2631, 'Infestation', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2642, 'Damocles: Mercenary II', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2653, 'LHX: Attack Chopper', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2685, 'Sol-Feace', '1990-11-22 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2701, 'The Light Corridor', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2764, 'Abadox: The Deadly Inner War', '1990-03-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2790, 'Cloud Kingdoms', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2840, 'Sonic Blast Man', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2848, 'Disc', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2976, 'Carlos Sainz', '1990-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3011, 'Joust VGA', '1990-04-18 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3012, 'Pyramid', '1990-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3019, 'The Secret of Monkey Island', '1990-10-15 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (901, 'Magician', '1991-02-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (61158, 'Mamono Hunter Yohko', '1991-03-22 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5698, 'Manchester United Europe', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (30095, 'Mario Lemieux Hockey', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29965, 'Mario Roulette', '1991-12-13 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19081, 'Martian Memorandum', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (37277, 'Maru''s Mission', '1991-03-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7998, 'Master of Monsters', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (52958, 'Math Blaster Ages 4-6', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27010, 'Mean Machine', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (54126, 'Medal City', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3146, 'Medieval Warriors', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8141, 'Mega Man 4', '1991-12-06 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14547, 'Mega Man II', '1991-12-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17134, 'Mega Man: Dr. Wily''s Revenge', '1991-07-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7238, 'Mega Twins', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5591, 'Megaball', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (60118, 'Megalit', '1991-08-09 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11873, 'Memory', '1991-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9782, 'Mercenary III: The Dion Crisis', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12987, 'Mermaids of Atlantis: The Riddle of The Magic Bubble', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22403, 'Metal Black', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17831, 'Metal Max', '1991-05-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28343, 'Metal Slader Glory', '1991-08-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (54922, 'Metal Stoker', '1991-07-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12296, 'Metal Storm', '1991-02-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5708, 'Metroid II: Return of Samus', '1991-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22059, 'Mickey''s Dangerous Chase', '1991-05-15 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33200, 'Mickey''s Runaway Zoo', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8704, 'Midwinter II: Flames of Freedom', '1991-06-14 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11974, 'MiG-29M Super Fulcrum', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12559, 'Might and Magic III: Isles of Terra', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29302, 'Mike Ditka Power Football', '1991-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8725, 'Mixed-Up Fairy Tales', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3017, 'Momotarou Densetsu Gaiden', '1991-12-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17144, 'Mônica no Castelo do Dragão', '1991-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10528, 'Monkey Island 2:  LeChuck''s Revenge', '1991-12-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3713, 'Monster Business', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (31277, 'Monster Hunt', '1991-03-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (55672, 'Monster Pro Wrestling', '1991-11-22 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (40422, 'Monster Truck Rally', '1991-09-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10514, 'Monuments of Mars', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3610, 'Moonshine Racers', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19285, 'Moonstone: A Hard Days Knight', '1991-04-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9958, 'Moraff''s Blast I', '1991-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7936, 'Moraff''s World', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (55558, 'Morita Shogi PC', '1991-09-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36566, 'Moto Roader II', '1991-03-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18250, 'Murder Makes Strange Deadfellows', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3241, 'Mysterium', '1991-07-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (39087, 'Mystical Fighter', '1991-10-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (46302, 'Nantettatte!! Baseball', '1991-02-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11467, 'NASCAR Track Pack', '1991-06-03 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13478, 'Nekketsu Koukou Dodgeball Bu Kyouteki! Toukyuu Senshi no Maki', '1991-11-08 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4457, 'Neko', '1991-11-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8885, 'NES Open Tournament Golf', '1991-09-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19420, 'Neutopia II', '1991-09-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (474, 'Neverwinter Nights', '1991-03-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6943, 'Nibbles', '1991-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17083, 'Nicky Boom', '1992-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1997, 'Night Creatures', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (16981, 'Night Hawk: F-117A Stealth Fighter 2.0', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (55699, 'Niko Niko Pun', '1991-12-13 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (40614, 'Ninja Clowns', '1991-08-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (20789, 'Ninja Combat', '1991-07-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (25311, 'Ninja Gaiden', '1991-02-09 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1850, 'Ninja Gaiden III: The Ancient Ship of Doom', '1991-06-21 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17825, 'Ninja Gaiden: Shadow', '1991-12-13 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (32637, 'Ninja Pac Man', '1991-02-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15461, 'Ninja Rabbits', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6726, 'No Greater Glory', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6989, 'No Limits', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (20413, 'Nobunaga''s Ambition: Lord of Darkness', '1991-07-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (30887, 'Nolan Ryan''s Baseball', '1991-07-02 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4688, 'Nova 9: Return of Gir Draxon', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (16358, 'Obitus', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (55433, 'Obocchama-kun', '1991-03-15 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13016, 'Oeka Kids: Anpanman no Hiragana Daisuki', '1991-03-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6920, 'Oh No! More Lemmings', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4879, 'Once Upon A Time: Abracadabra', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (26263, 'Onslaught', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2853, 'Operation C', '1991-02-08 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (31114, 'Operation Desert Storm', '1991-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18328, 'Operation Neptune', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13423, 'Operation Secret Storm', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (52568, 'Orbits: Voyage Through the Solar System', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6030, 'Othello', '1991-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17483, 'Out of This World', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8783, 'OutRun Europa', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (62952, 'Outzone', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11102, 'Over Horizon', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (55421, 'Override', '1991-01-08 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14252, 'P. P. Hammer and His Pneumatic Weapon', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (51535, 'Pachiokun 4', '1991-11-22 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (51540, 'Pachiokun: Maboroshi no Densetsu', '1991-04-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (54130, 'Paddle Fighter', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5896, 'Paganitzu', '1991-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (49549, 'Pallanda', '1991-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10572, '101 Dalmatians: Escape From DeVil Manor', '1997-06-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19972, '20 em 1', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5472, '3-D Ultra Pinball: The Lost Continent', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45116, '3D Ultra Mini Golf', '1997-05-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19269, '3DO Games: Decathlon', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18317, '3x3 Eyes: Tenrinougenmu', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22489, '64 Oozumo', '1997-11-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22512, '64 Tamagotchi World!', '1997-12-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6235, '7th Legion', '1997-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6967, 'A Fork in the Tale', '1997-02-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11672, 'A-Type', '1998-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19466, 'A2 Racer', '1997-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (25198, 'Aaron vs. Ruth: Battle of the Big Bats', '1997-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45127, 'ABC Monday Night Football ''98', '1997-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13387, 'ABC Sports Indy Racing', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (20412, 'Absolute Pinball', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3605, 'Ace Combat 2', '1997-08-15 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (37083, 'Achaea, Dreams of Divine Lands', '1997-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1612, 'Achtung Spitfire', '1997-08-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (26955, 'Acrophobia', '1997-11-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (52046, 'Activision Game Vault: Volume 3', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22461, 'Actua Golf 3', '1998-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18644, 'Adventure Interpreter', '1997-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17739, 'AeroFighters Assault', '1997-11-22 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7772, 'Africa Trail', '1997-02-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10485, 'Age of Empires', '1997-10-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (20092, 'Agent Armstrong', '1997-09-18 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7631, 'Ahlgrens Bilspelet', '1997-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (38975, 'AHx-1', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13460, 'AirCars', '1997-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18201, 'Aleshar: The World of Ice', '1997-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45220, 'All Japan Pro Wrestling Featuring Virtua', '1997-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (48783, 'All Star Soccer', '1997-08-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45140, 'All-Star 1997 Featuring Frank Thomas', '1997-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11313, 'Alpha Storm', '1997-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5570, 'Alundra', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (42834, 'American Girls Premiere', '1997-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15543, 'Amok', '1997-01-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19814, 'Amulets and Armor', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8456, 'An Elder Scrolls Legend: Battlespire', '1997-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11680, 'Anastasia: Adventures with Pooka and Bartok', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (39458, 'Anearth Fantasy Stories: First Volume', '1997-03-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (40495, 'Animal Breeder', '1997-09-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (21266, 'Animaniacs Game Pack', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27407, 'Anime Freak FX Vol. 4', '1997-01-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27408, 'Anime Freak FX Vol. 5', '1997-08-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1839, 'Anno 1602: Erschaffung einer neuen Welt - Neue Inseln, Neue Abenteuer', '1998-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (30738, 'Another Fine Mess', '1997-08-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6263, 'Ar''Kritz the Intruder', '1997-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34799, 'Arc Arena: Monster Tournament', '1997-07-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7926, 'Arcade''s Greatest Hits: The Midway Collection 2', '1997-11-21 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (61260, 'Arcana Strikes', '1997-12-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4814, 'Archimedean Dynasty', '1997-04-04 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (51199, 'Arkanoid Returns', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17164, 'Arkanoid: Doh It Again', '1997-01-15 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2690, 'Armed & Delirious', '1997-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (31088, 'Armed Police Batrider', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (16656, 'Armored Core', '1997-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2506, 'Armored Fist 2', '1997-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (24278, 'Assault Suit Leynos 2', '1997-02-21 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (60069, 'Asuka 120% Excellent Burning Fest.', '1997-05-07 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (21763, 'Asuka 120% Limited Burning Fest.', '1997-10-09 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (20362, 'Atlantis: The Lost Tales', '1997-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1019, 'Atomic Bomberman', '1997-07-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27569, 'Automobili Lamborghini', '1997-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4002, 'Avalon', '1998-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45099, 'AYSO Soccer ''97', '1997-03-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (42999, 'Azito', '1997-02-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (50114, 'Babel', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10429, 'Babylon 5: Shadow Wars', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11775, 'Backgammon Deluxe', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14553, 'Backpacker 2', '1997-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (21806, 'Backyard Baseball', '1997-10-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (59797, 'Bakukyuu Renpatsu!! Super B-Daman', '1997-12-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (60964, 'Bakuretsu Hunter R', '1997-08-08 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11990, 'Ballblazer Champions', '1997-03-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14881, 'Balls of Steel', '1997-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4935, 'Barbie Magic Hair Styler', '1997-10-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (23446, 'Baseball Mogul', '1997-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (30421, 'Battle Circuit', '1997-03-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7243, 'Battle Stations', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13006, 'Battle Wrath', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (50384, 'Battle-Girl', '1997-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (181, 'Battleground 4: Shiloh', '1997-01-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4278, 'Battleground 6: Napoleon in Russia', '1997-04-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7644, 'Battleground 7: Bull Run', '1997-04-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11122, 'Battleground 8: Prelude to Waterloo', '1997-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29239, 'Battlestations', '1997-03-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13025, 'Bazooka of the Red Dragon', '1997-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11451, 'Bazooka Sue', '1997-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15798, 'Beast Wars: Transformers', '1997-12-05 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10812, 'Beasts & Bumpkins', '1997-07-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (24517, 'beatmania', '1997-12-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44786, 'Bedlam 2: Absolute Bedlam', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18085, 'Betrayal in Antara', '1997-07-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19402, 'Beyond Time', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34755, 'Big Bass World Championship', '1997-08-07 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10804, 'Bilspel', '1997-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10500, 'Birthright: The Gorgon''s Alliance', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29098, 'Blackout', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15945, 'FIFA 99', '1998-06-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (52045, 'Fighter Pilot', '1998-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13172, 'Fighters Destiny', '1998-01-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (63050, 'Fighting Eyes', '1998-12-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (46742, 'Fighting Illusion: K-1 Grand Prix ''98', '1998-11-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27942, 'Fighting Layer', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19864, 'Final Fantasy Tactics', '1998-01-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9643, 'FireTeam', '1998-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6133, 'Fish Fillets', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (52271, 'Fisher-Price: Ready for School - Kindergarten', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17413, 'Fisherman''s Bait: A Bass Challenge', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3568, 'Flesh Feast', '1998-06-30 00:00:00', NULL);
	

INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8792, 'Formula 1 ''98', '1998-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15636, 'Forsaken', '1998-04-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22752, 'Fox Sports College Hoops ''99', '1998-11-23 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27606, 'Fox Sports Soccer ''99', '1998-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9720, 'Freddi Fish 3: The Case of the Stolen Conch Shell', '1998-01-06 00:00:00', NULL);
	
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (26935, 'Front Office Football', '1998-10-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (24165, 'Fuck Quest', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (46844, 'Fun School 7: For ages 8-11', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6431, 'FunPack 3D', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14485, 'Future Cop LAPD', '1998-12-05 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (494, 'G Darius', '1998-03-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45027, 'G.O.D Pure: Growth or devolution', '1998-02-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12155, 'Gag: Het Impotentie-Mysterie', '1999-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9957, 'Game & Watch Gallery 2', '1998-11-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (24032, 'Game Boy Camera', '1998-02-21 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (37661, 'Game Boy Wars 2', '1998-11-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3273, 'Game, Net & Match!', '1998-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13034, 'Ganbare Goemon: Kuru Nara Koi! Ayashi Geikka no Kuroi Kage', '1998-12-23 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18461, 'Gangsters: Organized Crime', '1998-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17088, 'Ganja Farmer', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43715, 'Gates of Skeldal', '1998-11-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12245, 'Gauntlet Legends', '1998-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (60077, 'Genjuu Ryodan', '1998-06-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (62762, 'Geometry Duel', '1998-10-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2489, 'Get Medieval', '1998-08-22 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17832, 'Get Out', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22833, 'Getter Love!! Cho Renai Party Game', '1998-12-04 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11371, 'Gex: Enter the Gecko', '1998-02-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29119, 'Giften', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (41761, 'Gihren no Yabou', '1998-04-09 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1424, 'Glover', '1998-10-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34658, 'Go! Go! Hitchhike', '1998-07-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (31062, 'Godzilla', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22855, 'Godzilla Generations', '1998-11-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (23227, 'Godzilla Online', '1998-05-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22891, 'Godzilla Trading Battle', '1998-12-03 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44712, 'Goiken Muyou II', '1998-10-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (31063, 'Golden Cue', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2215, 'Golden Nugget 64', '1998-12-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33471, 'Golgo 13: Carlyle no Yabou', '1998-11-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33472, 'Golgo 13: Kenenai Guntai', '1998-11-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (23660, 'Gradius IV Fukkatsu', '1998-03-03 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2416, 'Gran Turismo', '1998-05-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6347, 'Grand Prix Legends', '1998-12-31 00:00:00', NULL);
	
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13567, 'Grand Theft Auto', '1998-02-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13230, 'Grim Fandango', '1998-10-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34874, 'GT 64: Championship Edition', '1998-09-09 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (61259, 'Guardian Force', '1998-08-06 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5248, 'Guardian''s Sword', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5887, 'Gubble 2', '1998-09-26 00:00:00', NULL);
	

INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11813, 'Guilty Gear', '1998-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (23009, 'GuitarFreaks', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (59733, 'Gunbare! Game Tengoku: The Game Paradise 2', '1998-03-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19931, 'Gunbird 2', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (31887, 'Gungriffon II', '1998-04-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45493, 'Gunmen Wars', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19291, 'Gunmetal', '1998-08-04 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45257, 'GUNNM Martian Memory', '1998-08-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5585, 'H.E.D.Z.', '1998-09-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (38314, 'Hakaioh: King of Crusher', '1998-11-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2980, 'Half-Life', '1998-11-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45256, 'HardBall 99', '1998-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5221, 'Hardwar', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11393, 'Harley-Davidson: Race Across America', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (65078, 'Hazard', '1998-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15860, 'Head Rush', '1998-04-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (758, 'Heart of Darkness', '1998-07-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (30464, 'Heiwa Parlor! Mini 8: Pachinko Jikki Simulation Game', '1998-01-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10568, 'Hellnight', '1998-11-06 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19907, 'Heretic II', '1998-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (46373, 'Heroine Dream 2', '1998-06-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (871, 'Hexcite: The Shapes of Victory', '1998-10-21 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3558, 'Hexen II Mission Pack: Portal of Praevus', '1998-03-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9069, 'Hexplore', '1998-08-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (26544, 'High Heat Baseball 1999', '1998-03-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (54369, 'Hissatsu Pachi-Slot Station', '1998-08-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (54371, 'Hissatsu Pachinko Station 3', '1998-12-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (54370, 'Hissatsu Pachinko Station: Monster House Special', '1998-10-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (37025, 'Hiza no Ue no Partner: Kitty on Your Lap', '1998-03-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (62576, 'Hoshi de Hakken!! Tamagotchi', '1998-02-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13462, 'Hot Shots Golf', '1998-04-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5636, 'Hot Wheels: Stunt Track Driver', '1998-10-15 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (32585, 'Hugo: The Evil Mirror', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (42607, 'Chou Kyuukai Miracle Nine', '1995-07-21 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9199, 'Chou Mahou Tairiku Wozz', '1995-08-04 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (50296, 'Christminster', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9249, 'Chrono Trigger', '1995-03-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10820, 'Chronomaster', '1995-12-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44580, 'Citadel', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (53120, 'Classic Road II', '1995-02-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18423, 'ClayFighter 2: Judgment Clay', '1995-01-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (60317, 'Cliff Johnson''s Labyrinth of Crete ', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (31949, 'Clock Tower: The First Fear', '1995-09-14 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19953, 'ClockWerx', '1995-12-08 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (962, 'Clockwork Knight', '1995-05-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29093, 'Clockwork Knight 2', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (31925, 'College Football USA 96', '1995-06-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43820, 'College Football''s National Championship II', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1416, 'Comix Zone', '1995-08-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4384, 'Command & Conquer', '1995-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17525, 'Command Adventures: Starship', '1995-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5544, 'Congo the Movie: Descent into Zinj', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (31291, 'Congo: The Movie - The Lost City of Zinj', '1996-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17434, 'Connections', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7086, 'Conqueror: A.D. 1086', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (41747, 'Construction Bob Escapes from Hell', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (30860, 'Coron Land', '1995-08-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (21288, 'Cosmic Race', '1995-01-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (62694, 'Country Vid Grid', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (30504, 'Crayola: Create a World', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6800, 'Criticom', '1995-11-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (41753, 'Cross Country USA', '1995-01-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (40322, 'Crossed Swords II', '1995-05-02 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9482, 'Cruis''n World', '1996-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5741, 'Crusader: No Remorse', '1995-08-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (550, 'Crypt Killer', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18216, 'Crystal Beans: From Dungeon Explorer', '1995-10-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (25408, 'Cutey Honey FX', '1995-11-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15775, 'Cutthroat Island', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18723, 'Cyber Speedway', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15754, 'Cyberbots: Fullmetal Madness', '1995-04-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11735, 'Cyberia 2: Resurrection', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15632, 'CyberMage: Darklight Awakening', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (20348, 'CyberSpeed', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3779, 'D', '1995-04-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14875, 'D-Day: America Invades', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10730, 'Dagger''s Rage', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (23086, 'Dai-4-Ji Super Robot Taisen', '1995-03-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (55332, 'Daibakushou: Jinsei Gekijou: Zukkoke Salaryman Hen', '1995-12-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (37643, 'Daitoride', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11132, 'Damage: The Sadistic Butchering of Humanity', '1996-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (42337, 'Dangel', '1995-09-09 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (35536, 'Dark Legend', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (16020, 'Dark Seed II', '1995-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12061, 'Dark Universe', '1995-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (41013, 'Darxide', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4987, 'Daryl F. Gates'' Police Quest: SWAT', '1995-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (543, 'Dawn: A New Beginning', '1996-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (40340, 'Dazzleoids: CD-ROM Superheroes on a Binge Against Boredom', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34456, 'Deae Tonosama Appare Ichiban', '1995-03-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33221, 'Death or Glory: Das Erbe von Morgan', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14643, 'Decathlete', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14703, 'Defcon 5', '1995-11-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (46822, 'Dekitate High School', '1995-07-07 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8375, 'Der Langrisser', '1995-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (54094, 'Derby Jockey 2', '1995-09-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (52962, 'Derby Stallion III', '1995-01-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17071, 'Descent', '1995-02-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (38398, 'Descent Mission Builder', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12817, 'Descent: Levels of the World', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (786, 'Destruction Derby', '1995-11-16 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18088, 'Detana!! TwinBee Yahho! Deluxe Pack', '1995-09-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4629, 'Detective Storm', '1996-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6465, 'Dino Dini''s Soccer', '1995-06-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45928, 'Dirt Dash', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (53450, 'Dirt Racer', '1995-05-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (25815, 'Dirt Trax FX', '1995-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (35169, 'Dirty Harry', '1995-03-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3460, 'Discworld', '1995-02-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (320, 'Disney''s Bonkers: Wax Up!', '1995-02-04 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3304, 'Disney''s Magical Quest 3 Starring Mickey and Donald', '1995-12-08 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (30505, 'Disney''s The Lion King: Adventures at Pride Rock', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6921, 'Disney''s Timon & Pumbaa''s Jungle Games', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12842, 'Disney''s Toy Story', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43215, 'Dokapon Gaiden: Honoo no Audition', '1995-12-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34498, 'Doman: Grzechy Ardana', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12398, 'Don''t Wake the SysOp', '1995-09-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (40539, 'Donald Duck no Mahou no Boushi', '1995-08-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (16889, 'Donkey Kong Country 2: Diddy''s Kong Quest', '1995-11-21 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8200, 'Donkey Kong Land', '1995-06-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1713, 'Doom Troopers: Mutant Chronicles', '1995-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (16294, 'Doraemon 4: Nobita to Tsuki no Oukoku', '1995-12-15 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33911, 'Doraemon Yuujou Densetsu', '1995-04-07 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10266, 'Dotso', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1752, 'Double Dragon', '1995-03-03 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15102, 'Doukyuusei 2', '1995-01-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10900, 'Dr. Drago''s Madcap Chase', '1995-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8031, 'Dragon Ball Z Super Gokuden: Kakusei-Hen', '1995-09-22 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11493, 'Dragon Ball Z Super Gokuden: Totsugeki-Hen', '1995-03-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (30308, 'Dragon Ball Z: Goku Gekitōden', '1995-08-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (21997, 'Dragon Ball Z: Shin Butoden', '1995-11-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1490, 'Dragon Ball Z: Ultimate Battle 22', '1995-07-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (30881, 'Dragon History', '1995-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36652, 'Fight ''N'' Jokes', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14583, 'Fighter Ace 3.5', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19043, 'Fighters Megamix', '1997-04-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14996, 'Fighting Force', '1997-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (30402, 'Fighting Illusion K-1 Grand Prix Sho', '1997-01-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29911, 'Fighting Network Rings', '1997-08-07 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13053, 'Final Fantasy VII', '1997-01-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27781, 'Final Furlong', '1997-05-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19524, 'Final Liberation: Warhammer Epic 40,000', '1997-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9620, 'Flight Unlimited II', '1997-12-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7170, 'Flyin'' High', '1997-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14297, 'Flyin'' High Data Disk 1', '1997-11-02 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11107, 'Flying Corps', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15662, 'Flying Dragon', '1997-12-18 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10423, 'Flying Saucer', '1998-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3292, 'Forbes Corporate Warrior', '1997-08-15 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34892, 'Forced Alliance: The Glarious Mandate', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29496, 'Formula 1 ''97', '1997-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9010, 'Formula 1 Championship Edition', '1997-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4886, 'Formula Karts: Special Edition', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22460, 'Fox Sports Golf ''99', '1997-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14081, 'Fragile Allegiance', '1997-03-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19549, 'Freeciv', '1997-06-23 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (365, 'Friday: Death to Arthur Yahtzee', '1998-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (24704, 'Frogger', '1997-11-03 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17836, 'Front Mission 2', '1997-09-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15291, 'Front Mission Alternative', '1997-12-18 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18087, 'Front Page Sports: Baseball Pro ''98', '1997-05-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45177, 'Front Page Sports: Football Pro ''98', '1997-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (878, 'Front Page Sports: Golf', '1997-04-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43298, 'Front Page Sports: Ski Racing', '1997-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14399, 'Front Page Sports: Trophy Rivers', '1997-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (59789, 'Fune Tarou', '1997-08-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (35758, 'Future Racer', '1997-05-23 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8122, 'G-Nome', '1997-02-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12456, 'G-Police', '1997-10-15 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (60479, 'G-Vector', '1997-10-16 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13299, 'Galapagos: Mendel''s Escape', '1997-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (40893, 'Galaxy Fraulein Yuna 3: Lightning Angel', '1997-12-04 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6727, 'Game & Watch Gallery', '1997-05-08 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22264, 'Game Boy Wars Turbo', '1997-06-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (62577, 'Game de Hakken!! Tamagotchi 2', '1997-10-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (32908, 'Game Dev Story', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5082, 'Gamera 2000', '1997-04-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11705, 'Games People Play: Hearts, Spades, and Euchre', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (40972, 'Gegege no Kitarou: Noroi no Nikuto Katachi Tachi', '1997-01-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14899, 'Ghost in the Shell', '1997-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4746, 'Giten Megami Tensei: Tokyo Mokushiroku', '1997-04-04 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5020, 'Goal Storm ''97', '1997-06-05 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44710, 'Goiken Muyou: Anarchy in the Nippon', '1997-10-02 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17921, 'Gold Runner 2000', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3166, 'GoldenEye 007', '1997-08-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10086, 'Gooch Grundy''s X-Decathlon', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43304, 'Gooka', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1173, 'Goosebumps: Attack of the Mutant', '1997-05-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4498, 'Gothos', '1997-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (23462, 'Gradius Gaiden', '1997-08-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36918, 'Grand Slam Turkey Hunt', '1998-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19632, 'Grant - Lee - Sherman: Civil War 2: Generals', '1997-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15744, 'Gravity Angels Part 1: Alien Discovery', '1997-07-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17631, 'Groove on Fight: Gouketsuji Ichizoku 3', '1997-04-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2689, 'Grossology', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10671, 'GT Racing 97', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (20409, 'Guilty Bastards', '1998-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11317, 'Guimo', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11299, 'Gunbee F-99: The Kidnapping of Lady Akiko', '1998-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (16703, 'Gundam 0079', '1997-05-02 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4257, 'Gunple: Gunman''s Proof', '1997-01-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45176, 'Guntu Western Front June, 1944', '1997-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (24657, 'HacX', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (46708, 'Hajime no Ippo: The Fighting!', '1997-07-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2553, 'Halls of the Dead: Faery Tale Adventure II', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (25071, 'Hanagumi Taisen Columns', '1997-03-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15415, 'Harmful Park', '1997-02-14 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28175, 'Harry the Handsome Executive', '1997-09-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3640, 'Harvest Moon GB', '1997-12-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22208, 'Havets Vargar', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12849, 'Heavy Gear', '1997-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14657, 'Heisei Shin Onigashima', '1997-12-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (47081, 'Heiwa Pachinko World 64', '1997-11-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8237, 'Helicops', '1997-03-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9388, 'Henry', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8987, 'Herc''s Adventures', '1997-07-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (41345, 'Herman and the Falling Rocks', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19069, 'Heroes of Might and Magic II: The Price of Loyalty', '1997-04-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15660, 'Hexen II', '1997-08-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (54368, 'Hissatsu Pachinko Station 2', '1997-12-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13140, 'History of the World', '1997-07-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1825, 'Hockey Pong', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7614, 'Hollywood Mogul', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4085, 'Hollywood Monsters', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22594, 'Hoyle Classic Board Games', '1997-11-03 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2261, 'Hoyle Classic Games', '1997-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19784, 'Hoyle Poker', '1997-04-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (39995, 'Hugo 2', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15208, 'Hupchoo: The Gorps and the Sneezing Spell', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14373, 'I-0: Jailbait on Interstate Zero', '1997-01-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (16143, 'iF-16 Fighting Falcon', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10331, 'iF-22', '1997-07-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11571, 'Ignition', '1997-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1479, 'Dylan Dog: Horror Luna Park', '1999-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1590, 'Dynamite Cop!', '1999-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4434, 'Earthworm Jim 3D', '1999-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7846, 'Earthworm Jim: Menace 2 the Galaxy', '1999-11-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18914, 'East Front II', '1999-03-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12250, 'Easy Bake Kitchen', '1999-06-23 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (38659, 'Echo Night 2', '1999-08-05 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3413, 'Ed Hunter', '1999-05-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43139, 'Edgar Torronteras'' eXtreme Biker', '1999-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4499, 'EGG: Elemental Gimmick Gear', '1999-05-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (721, 'Ehrgeiz: God Bless the Ring', '1999-04-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22445, 'Eighteen Wheeler: American Pro Trucker', '2000-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4937, 'Elf Bowling', '1999-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (31976, 'Eliminator', '1999-02-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (23554, 'Elmo''s Number Journey', '1999-11-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8586, 'Emergency Room 2', '1999-01-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (20011, 'Enemy Engaged: Apache/Havoc', '1999-03-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11872, 'Engacho!', '1999-10-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27986, 'Evel Knievel', '1999-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10796, 'EverQuest', '1999-03-16 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12014, 'Evil Zone', '1999-01-14 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4202, 'Evolution: The World of Sacred Device', '1999-01-21 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13363, 'Excelsior Phase Two: Errondor', '1999-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12119, 'Excessive Speed', '1999-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (50304, 'Exhibition', '1999-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8198, 'Expert Pool', '1999-08-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10410, 'Extreme Boards and Blades', '1999-05-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5759, 'Extreme Bullrider', '1999-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22816, 'Extreme Rock Climbing', '1999-11-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45254, 'Extreme Winter Sports', '1999-04-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14794, 'Extreme Wintersports', '1999-04-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13102, 'F-1 World Grand Prix II', '1999-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5634, 'F-22 Lightning 3', '1999-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (49308, 'F.A. Manager', '1999-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (38960, 'F1 World Grand Prix', '1999-12-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (48770, 'F1 World Grand Prix: 1999 Season', '1999-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (285, 'F355 Challenge: Passione Rossa', '1999-07-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43478, 'Famicom Bunko: Hajimari no Mori', '1999-07-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11925, 'Farland Odyssey', '1999-07-09 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22465, 'Faselei!', '1999-12-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6708, 'Fatal Fury: First Contact', '1999-05-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8285, 'Fatal Fury: Wild Ambition', '1999-01-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (30687, 'Faust: The Seven Games of the Soul', '1999-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (42333, 'Favorite Dear', '1999-02-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13190, 'Fengse Huanxiang', '1999-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (57751, 'Fever: Sankyo Koushiki Pachinko Simulation for WonderSwan', '1999-12-09 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29370, 'FIFA 2000', '1999-11-15 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (25377, 'Fighter Maker', '1999-05-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1482, 'Fighter Squadron: The Screaming Demons over Europe', '1999-02-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18715, 'Fighting Force 2', '1999-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18904, 'Fighting Steel: World War II Surface Combat 1939-1942', '1999-05-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4338, 'Final Fantasy Anthology', '1999-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18707, 'Final Fantasy Collection', '1999-03-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12277, 'Final Fantasy VIII', '1999-02-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18830, 'Final Fight Revenge', '1999-07-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14404, 'Finger Flashing', '1999-07-15 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13073, 'Fire Emblem: Thracia 776', '1999-09-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14202, 'Fire Pro Wrestling G', '1999-06-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34759, 'Fisherman''s Bait 2: Big Ol'' Bass', '1999-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12506, 'Flanker 2.0', '1999-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6925, 'Flight Unlimited III', '1999-09-06 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14040, 'Fly!', '1999-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (50128, 'For a Change', '1999-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8625, 'Force 21', '1999-07-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4939, 'Formula One 99', '1999-10-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27614, 'Fox Sports NBA Basketball 2000', '1999-10-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29057, 'Frame Gride', '1999-07-15 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10911, 'Freddi Fish 4: The Case of the Hogfish Rustlers of Briny Gulch', '1999-10-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12541, 'Freespace 2', '1999-10-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45260, 'Freestyle Boardin'' ''99', '1999-02-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17595, 'Front Mission 3', '1999-09-02 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (26946, 'Front Office Football 2', '1999-08-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45336, 'Full Strength Strongman Competition', '1999-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (46332, 'Fun! Fun! Pingu', '1999-11-18 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34479, 'Furbyland', '1999-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2724, 'FX Chess', '1999-12-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3386, 'G-Police: Weapons of Justice', '1999-08-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (60291, 'G1 Jockey', '1999-03-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2845, 'Gabriel Knight 3: Blood of the Sacred, Blood of the Damned', '1999-10-05 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (41205, 'Gaia Crusaders', '1999-07-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (999, 'Gallop Racer', '1999-03-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27619, 'Gallop Racer 3: One and Only Road to Victory', '1999-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17416, 'Game & Watch Gallery 3', '1999-04-08 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9454, 'Ganbare Goemon: Mononoke Douchuu Tobidase Nabe-Bugyou!', '1999-12-16 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4545, 'Ganbare Goemon: Mononoke Sugoroku', '1999-12-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5971, 'Ganbare Goemon: Tengu-to no Gyuakushu!', '1999-01-14 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12644, 'Ganryu', '1999-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45318, 'Ganso Jajamaru-kun', '1999-04-15 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10674, 'Garou: Mark of the Wolves', '1999-11-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (25064, 'Gate Keepers', '1999-12-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8716, 'Gearhead Garage', '1999-06-15 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (24306, 'Gekisou TomaRunner', '1999-07-22 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (35490, 'Generation Girl Gotta Groove', '1999-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12992, 'GermNation', '2000-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44916, 'Germs: Nerawareta Machi', '1999-07-22 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34917, 'Getter Robo Daikessen!', '1999-09-09 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22910, 'Gex 3 Deep Pocket Gecko', '1999-12-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (20330, 'Gex 3: Deep Cover Gecko', '1999-03-16 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1538, 'Ghoul Panic', '1999-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12315, 'Dangerous Dave''s Risky Rescue', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (301, 'Dare to Dream', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (146, 'Dark Sun: Shattered Lands', '1993-09-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12901, 'Daryl F. Gates'' Police Quest: Open Season', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14231, 'Dashin'' Desperadoes', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18561, 'Dave Goes Nutz', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22135, 'Daytona USA', '1993-08-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (32780, 'Dead of the Brain 2', '1993-11-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19194, 'Deep Duck Trouble starring Donald Duck', '1993-05-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11739, 'Deep II: The Center of the Earth', '1993-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9573, 'Defender of the Crown II', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (35799, 'Dennis the Menace', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (64727, 'DeQuoter', '1993-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18634, 'Der Planer', '1994-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15726, 'Die Sage von Nietoom', '1994-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (57376, 'Dino Jnr. in Canyon Capers ', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18743, 'Dinopark Tycoon', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12368, 'Dinosaur Adventure 3-D', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (58607, 'Dinosaur Park', '1993-07-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5656, 'Dirty Larry: Renegade Cop', '1993-01-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (57536, 'Dirty Racing', '1993-01-08 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19944, 'Disney''s Aladdin', '1993-11-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2099, 'Disney''s Beauty and the Beast: Belle''s Quest', '1993-08-21 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7073, 'Disney''s Beauty and the Beast: Roar of the Beast', '1993-06-16 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (16592, 'Disney''s Chip ''N Dale Rescue Rangers 2', '1993-12-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33748, 'Dolucky no Kusayakiu', '1993-12-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (47884, 'Donna Matrix', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7326, 'Doom', '1993-12-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14046, 'Doraemon 2: Nobita no Toys Land Daibouken', '1993-12-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33901, 'Doraemon vs. the Dream Thief and the Seven Gozansu', '1993-03-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8686, 'Doraemon: Nobita to Yousei no Kuni', '1993-02-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33934, 'Doraemon: Nora no Suke no Yabou', '1993-04-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5150, 'DOSMINE', '1993-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36029, 'Double Clutch', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (64726, 'Double Match', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12628, 'Double Switch', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (51036, 'Double Yakuman', '1993-03-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (51042, 'Double Yakuman II', '1993-09-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (51041, 'Double Yakuman Jr.', '1993-08-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19840, 'Downtown Nekketsu Baseball Monogatari', '1993-12-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11442, 'Dr. Robotnik''s Mean Bean Machine', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (59588, 'Dr. Tomy', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19070, 'Dracula Unleashed', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (30319, 'Dragon Ball Z', '1993-04-08 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6075, 'Dragon Ball Z Gaiden: Saiyajin Zetsumetsu Keikaku', '1993-08-06 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (30322, 'Dragon Ball Z V.R.V.S', '1993-08-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (21941, 'Dragon Ball Z: Super Butoden', '1993-03-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (21943, 'Dragon Ball Z: Super Butoden 2', '1993-12-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36095, 'Dragon Force: The Day 3', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7005, 'Dragon Slayer: Eiyuu Densetsu II', '1993-06-04 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1164, 'Dragon Warrior I & II', '1993-12-18 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11980, 'Dragon: The Bruce Lee Story', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (46015, 'Dragon''s Earth', '1993-01-22 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12980, 'Dragon''s Lair III: The Curse of Mordread', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19853, 'Dragon''s Revenge', '1993-12-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2757, 'Dual Orb', '1993-04-16 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14532, 'DuckTales 2', '1993-04-23 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (20021, 'Duke Nukem II', '1993-12-03 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29066, 'Dune: The Battle for Arrakis', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12256, 'Dungeon', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28173, 'Dungeon Explorer II', '1993-03-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5370, 'Dungeon Hack', '1993-12-23 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (32643, 'Dungeon Magic', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3014, 'Dungeon Rogue', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22870, 'Dungeons & Dragons: Tower of Doom', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43527, 'Dyna Brothers 2', '1993-12-03 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (25118, 'Dynabusters', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (47480, 'Dynamic Stadium', '1993-11-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (32293, 'Dziedzictwo Gigantow', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9116, 'EA Sports Double Header', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9286, 'Ecco the Dolphin', '1993-06-06 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (23341, 'Eco Fighters', '1993-12-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18998, 'EcoQuest 2: Lost Secret of the Rainforest', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (32810, 'Edo no Kiba', '1993-03-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11101, 'Eishockey Manager', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1455, 'El Principio del Fin', '1994-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33856, 'Elfaria', '1993-01-03 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34393, 'Eliminate Down', '1993-06-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4847, 'Elysium', '1993-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15482, 'Empire Deluxe', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (59467, 'Empire of Angels I', '1993-03-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12199, 'Epic Pinball', '1993-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13849, 'Equinox', '1993-11-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15067, 'Eric the Unready', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13852, 'Escape from Monster Manor', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29193, 'ESPN Baseball Tonight', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (16444, 'Eternal Champions', '1993-08-14 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (60973, 'Etoile Princesse', '1993-03-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (64757, 'Euchre', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3442, 'European Champions', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7235, 'Evasive Action', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (49737, 'Evolve! Lite', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (20429, 'Excelsior Phase One: Lysandia', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (37641, 'F-1 Sensation', '1993-01-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33105, 'F-117 Night Storm', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3725, 'F1', '1993-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (38982, 'F1 Pole Position 2', '1993-12-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (38012, 'F1 ROC II: Race of Champions', '1993-03-05 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (32152, 'Family Dog', '1993-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (41172, 'Famista 3', '1993-10-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9396, 'Robbbot', '1986-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (35266, 'Rock', '1985-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10321, 'Rockman', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3703, 'Rodeo', '1986-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (62685, 'Roland''s Ratrace ', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4490, 'Romance of the Three Kingdoms', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15457, 'Rush''n Attack', '1985-07-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (82, 'Saboteur', '1985-05-09 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1823, 'Sabre Wulf', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (48911, 'Satellite 7', '1985-12-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (402, 'Scenery Disk 6', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (31923, 'Scooter Shooter', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12255, 'Seas of Blood', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (49705, 'Secret of Kandar', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1432, 'Section-Z', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10256, 'Serpy', '1986-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (49824, 'Seventh Cavalry', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33087, 'Sex Games', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (32773, 'Shanghai Kid', '1985-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15974, 'Shao-Lin''s Road', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15994, 'Sherlock Holmes: Another Bow', '1985-05-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (62520, 'Shiro to Kuro no Densetsu: Hyakki-Hen', '1985-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (37297, 'Shootout', '1985-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7565, 'Silent Service', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (35622, 'Six-Gun Shootout: Gunfights of the Wild West', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9799, 'Skeet Shootin''', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (63912, 'Ski Command', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (20115, 'Skool Daze', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (32478, 'Sky Destroyer', '1985-11-14 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (16382, 'Sky Kid', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12955, 'Soccer', '1985-04-09 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10494, 'SoftAid', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11241, 'Sopwith', '1985-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (35373, 'Sorcerer', '1985-03-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7938, 'Soul of a Robot', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3576, 'Space Doubt', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (50232, 'Space Freeks', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6036, 'Space Harrier', '1985-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (42561, 'Space Pilot II', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4771, 'Speedway', '1986-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (56907, 'Spell of Destruction', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (16877, 'Spellbound', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12026, 'Spellbreaker', '1985-09-16 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15794, 'Spy vs. Spy: The Island Caper', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19746, 'Stack-Up', '1985-07-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (41204, 'Star Luster', '1985-12-06 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10447, 'Star Raiders II', '1986-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (728, 'Star Rank Boxing', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (910, 'Star Trek: The Kobayashi Alternative', '1985-03-04 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17895, 'Starion', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (31522, 'Stomp', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22143, 'Strategic Conquest', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8926, 'Subnodule', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2257, 'Sum Ducks', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12353, 'Summer Games II', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (59199, 'Super Game Collection', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (62160, 'Super Huey', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3842, 'Super Huey UH-IX', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15544, 'Super Mario Bros.', '1985-09-13 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10535, 'Super Robin Hood', '1985-11-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (64265, 'Super Soccer', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (32029, 'Super Tennis', '1985-12-22 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (30325, 'Superman: The Game', '1985-04-18 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (35252, 'Tag-Team Pinball', '1985-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1933, 'Tank', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27374, 'Taskmaster', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7615, 'Tau Ceti', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (16551, 'Teddy Boy', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (65184, 'Tehkan World Cup', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12084, 'Temple of Apshai Trilogy', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17727, 'Tenshitachi no Gogo', '1985-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44069, 'Terebi Oekaki', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9474, 'Thai Boxing', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (56809, 'That''s the Spirit', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5131, 'The Crimson Crown', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13647, 'The Dolphin''s Pearl', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44539, 'The Earth Fighter Rayieza', '1985-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1751, 'The Eidolon', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (16111, 'The Empire Fights Back', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12286, 'The Fairyland Story', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (16047, 'The Fellowship of the Ring', '1985-08-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (20170, 'The Fourth Protocol', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (38654, 'The Great Gonzo in WordRider', '1985-05-16 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (64552, 'The Human Race ', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (38957, 'The Land', '1985-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10100, 'The Last V8', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2387, 'The Mist', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8598, 'The Movie Monster Game', '1986-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1996, 'The Neverending Story', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44411, 'The Pyramids of Egypt', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (195, 'The Rocky Horror Show', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44537, 'The Screamer', '1985-05-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14586, 'The Way of the Exploding Fist', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4049, 'The Wizard of Oz', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5111, 'Theatre Europe', '1985-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14476, 'Thexder', '1985-04-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (57835, 'They Sold a Million', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9351, 'Thing on a Spring', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43148, 'Tim Love''s Cricket', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2021, 'Time Gal', '1985-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4167, 'Lucky Luke', '1998-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7807, 'Lucky Luke: On the Dalton''s Trail', '1998-05-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33579, 'Lunatic Dawn III', '1998-12-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33468, 'Lupin Sansei', '1998-11-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33461, 'Lupin Sansei: Pyramid no Kenja', '1998-08-06 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8354, 'M.A.X. 2: Mechanized Assault & Exploration', '1998-06-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10944, 'M1 Tank Platoon 2', '1998-02-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17132, 'Machi', '1998-01-22 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13996, 'Madden NFL 99', '1998-07-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (773, 'Madou Monogatari', '1998-07-23 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19038, 'Magic Knight Rayearth', '1998-12-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13717, 'Magic School Bus Volcano Adventure', '1998-05-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2532, 'Magic: The Gathering - Duels of the Planeswalkers', '1998-01-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (62799, 'Magical Kanan', '1998-12-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (46929, 'Maho Shojo Pretty Sammy: Heart no Kimochi', '1998-01-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14051, 'Major League Baseball Featuring Ken Griffey Jr', '1998-05-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (41012, 'Makeruna! Makendou Z', '1998-03-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18804, 'Mankind', '1998-11-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11172, 'March Madness ''98', '1998-02-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29970, 'Mario no Photopi', '1998-12-02 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6424, 'Mario Party', '1998-12-18 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (32691, 'Mars Rising', '1998-01-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8605, 'Marvel vs. Capcom: Clash of Super Heroes', '1998-01-23 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (20245, 'Master of Monsters: Disciples of Gaia', '1998-08-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (47921, 'Masters ''98: Haruka Naru Augusta', '1998-12-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12057, 'MechCommander', '1998-05-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34365, 'MechCommander: Desperate Measures', '1998-07-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (35190, 'Medarot Parts Collection', '1998-03-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (35191, 'Medarot Parts Collection 2', '1998-05-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3457, 'MediEvil', '1998-10-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13218, 'Mega Man & Bass', '1998-04-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7901, 'Mega Man Legends', '1998-08-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (46757, 'Meitantei Conan: Giwaku no Gouka Ressha', '1998-08-07 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (26028, 'Melon Chan''s Growth Diary', '1998-10-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22913, 'Men in Black: The Series', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19049, 'Mental Kombat', '1998-08-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (16140, 'Metal Gear Solid', '1998-09-03 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (840, 'Metal Slug 2: Super Vehicle - 001/II', '1998-02-23 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18368, 'Metaloids', '1999-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (16448, 'Michael Ninn''s Latex: The Game', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5089, 'Michael Owen’s World League Soccer ‘99', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29084, 'Mickey Mouse Magic Wands!', '1998-05-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (21812, 'Microshaft Winblows 98', '1998-01-05 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45201, 'Microsoft Baseball 3D', '1998-05-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13228, 'Microsoft Combat Flight Simulator: WWII Europe Series', '1998-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18109, 'Microsoft Golf 1998 Edition', '1998-04-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45261, 'Microsoft Golf 1999 Edition', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9605, 'Microsoft Revenge of Arcade', '1998-07-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45159, 'Midnight Run', '1998-03-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2183, 'MiG-29 Fulcrum', '1998-10-06 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17886, 'Might and Magic VI: The Mandate of Heaven', '1998-04-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (48910, 'Mikagura Shoujo Tanteidan', '1998-09-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22760, 'Mike Piazza''s Strike Zone', '1998-06-16 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3405, 'Milo''s Astro Lanes', '1998-11-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28346, 'Mini Yonku Let''s & Go!!: Power WGP 2', '1998-10-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15004, 'Mitsumete Knight', '1998-03-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34158, 'Mizzurna Falls', '1998-12-23 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5123, 'MLB 99', '1998-04-14 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (37551, 'Mobile Suit Gundam: Char''s Counterattack', '1998-12-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10548, 'Mobility: A City in Motion', '1999-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (40214, 'Momotaro Dentetsu Jr.', '1998-07-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (40224, 'Momotarou Densetsu', '1998-12-23 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8071, 'Monaco Grand Prix Racing Simulation 2', '1998-06-02 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (35168, 'Monster Bash', '1998-07-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (41180, 'Monster Race', '1998-03-06 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (47412, 'Monster Race Okawari', '1998-10-02 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6529, 'Monster Truck Madness 2', '1998-04-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18386, 'Monsterseed', '1998-05-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6220, 'Montezuma''s Return', '1998-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45446, 'Montezuma''s Return!', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11826, 'Monty Python''s Looney Bin', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17368, 'Morpheus', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12110, 'Moto Racer 2', '1998-08-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4603, 'Motocross Madness', '1998-08-14 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (24373, 'Motorhead', '1998-03-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45319, 'Motteke Tamago Ganbare Kamonohashi', '1998-07-02 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10417, 'Mühle-Online', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (42022, 'Mujintou Monogatari 4', '1998-09-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44709, 'Mujintou Monogatari R: Futari no Love Love Ai Land', '1998-05-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (30498, 'Muppets on the Go', '1998-04-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (49735, 'Murder on the Eurasia Express', '1998-11-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (30684, 'Mysteriet på Greveholm 2: Resan till Planutus', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6243, 'Mystical Ninja Starring Goemon', '1998-04-16 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (20240, 'Myth II: Soulblighter', '1998-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12857, 'N₂O Nitrous Oxide', '1998-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17468, 'Nahan: The Ultimate 3D Puzzle Game', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (526, 'NAM', '1998-07-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3615, 'Namco Anthology Vol. 2', '1998-09-23 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (23870, 'Nanoloop', '1998-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (61273, 'Nanosaur', '1998-04-06 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (752, 'Nanosaur Extreme', '1998-12-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18807, 'NASCAR 99', '1998-09-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11823, 'NASCAR Racing - 1999 Edition', '1998-12-07 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4936, 'NBA Full Court Press', '1998-03-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11866, 'NBA in the Zone ''98', '1998-01-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (20342, 'NBA Jam 99', '1998-12-04 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2861, 'NBA Live 99', '1998-10-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (21744, 'NBA ShootOut 98', '1998-02-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3259, 'NCAA Football 99', '1998-08-05 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6365, 'NCAA GameBreaker 99', '1998-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (26439, 'SpongeBob SquarePants Underpants Slam!', '2007-12-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28967, 'SpongeBob SquarePants: Atlantis Squarepantis', '2007-11-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8335, 'Sports Game Pack (Manager Edition)', '2007-11-15 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (64629, 'Sprout', '2007-03-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (49625, 'Spy Games: Elevator Mission', '2007-11-16 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22162, 'Spyglass Board Games', '2007-08-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17969, 'SSX Blur', '2007-02-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (21108, 'Star Ocean: First Departure', '2007-12-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17105, 'Star Trek: Conquest', '2007-11-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (20614, 'Star Wars Battlefront: Renegade Squadron', '2007-10-09 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2144, 'Star Wolves 2', '2007-12-05 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27915, 'Stargate Online Trading Card Game', '2007-04-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12898, 'Stars over Half Moon Bay', '2008-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10479, 'Starship Kingdom', '2007-01-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12551, 'Steam', '2007-04-02 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (21814, 'Steel Horizon', '2007-03-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (38093, 'Stolen in 60 Seconds', '2007-06-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7109, 'Stranded II', '2007-06-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4205, 'Strategy Game Pack Volume 1', '2007-11-15 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27496, 'Strawberry Shortcake: The Four Seasons Cake', '2007-12-06 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22986, 'Street Trace:NYC', '2007-08-22 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (30286, 'Street Warrior', '2007-01-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3469, 'Strike Ball 2 Deluxe', '2007-03-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9751, 'Strip4', '2007-11-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12167, 'Stuntman: Ignition', '2007-08-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (25015, 'Sudoku', '2007-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (20615, 'Summon Night: Twin Age', '2007-08-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (62570, 'Sumomomo Momomo ~Shijou Saikyou no Yome~ Keishou Shimasho!? Koi no Hanamuko Soudatsusen!!', '2007-06-21 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10585, 'Sumotori Dreams', '2007-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (25546, 'SunAge: Battle for Elysium', '2007-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2271, 'Sunset Runner', '2007-10-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22319, 'Super Collapse! 3', '2007-05-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22316, 'Super Fruit Fall', '2007-07-07 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12446, 'Super Granny 4', '2007-12-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (16094, 'Super Mario Galaxy', '2007-11-01 00:00:00', 5);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (39957, 'Super Marisa World', '2007-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12739, 'Super Paper Mario', '2007-04-09 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1052, 'Super PickUps', '2007-10-16 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5845, 'Super Puzzle Fighter II Turbo HD Remix', '2007-08-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22660, 'Super Robot Wars OG: Original Generations', '2007-06-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (23222, 'Super Robot Wars Original Generation Gaiden', '2007-12-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (26893, 'Super Robot Wars Scramble Commander the 2nd', '2007-11-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (21244, 'Super Robot Wars W', '2007-03-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (21456, 'Super Rub ''a'' Dub', '2007-05-02 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (21387, 'Super Speed Machines', '2007-03-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (793, 'Super Stardust HD', '2007-06-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (24256, 'Super Swing Golf Season 2', '2007-12-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12731, 'Supercow', '2007-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1901, 'Supreme Commander', '2007-02-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18048, 'Supreme Commander: Forged Alliance', '2007-11-06 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7576, 'Surf''s Up', '2007-05-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (25170, 'Suujin Taisen', '2007-06-07 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (50136, 'Suveh Nux', '2007-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22554, 'Suzumiya Haruhi no Yakusoku', '2007-12-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22536, 'Swashbucklers: Blue vs Grey', '2007-11-08 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22538, 'SWAT: Target Liberty', '2007-10-16 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12352, 'Swatches', '2007-12-13 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8726, 'Switchball', '2007-06-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22777, 'Sword of the New World: Granado Espada', '2007-07-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11279, 'Sword of the Stars: Born of Blood', '2007-06-06 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (20320, 'Synaesthete', '2007-10-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (32746, 'Syobon Action', '2007-06-15 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2992, 'Syphon Filter: Combat Ops', '2007-11-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9084, 'Syphon Filter: Logan''s Shadow', '2007-10-02 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13691, 'TAGAP: The Apocalyptic Game About Penguins', '2007-07-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22176, 'Taiko no Tatsujin DS', '2007-07-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7781, 'Taito Legends 2', '2007-03-16 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (21295, 'Taito Memories II Gekan', '2007-03-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (21955, 'Taito Memories II Joukan', '2007-01-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (25911, 'Tales of Fandom Vol. 2 Luke/Tear Version', '2007-06-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (21444, 'Tales of Innocence', '2007-12-06 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (23342, 'Tales of Pirates', '2007-03-15 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (21990, 'Tales of the World: Radiant Mythology', '2007-07-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (62581, 'Tamagotchi no Appare! Niji-Venture', '2007-03-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (62578, 'Tamagotchi no Furi Furi Kagekidan!', '2007-12-06 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (24381, 'Tank Beat', '2007-06-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (25417, 'Tanoshii Youchien: Kotoba to Asobo!', '2007-09-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (30849, 'Tarr Chronicles', '2007-09-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18162, 'Team Fortress 2', '2007-10-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12700, 'Teeworlds', '2007-08-05 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19150, 'Tekkyuuman', '2007-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (23811, 'Telly Addicts', '2007-11-02 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (21331, 'Tenchu Z', '2007-06-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (23662, 'Tengen Toppa Gurren Lagann', '2007-10-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8983, 'Terminator Revenge', '2007-12-02 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (16743, 'Terrorist Takedown: War in Colombia', '2007-01-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (26432, 'Tetris Evolution', '2007-03-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (21539, 'Tetris Splash', '2007-10-03 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (24086, 'Tetris Zone', '2007-08-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15989, 'Th3 Plan', '2007-04-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6175, 'The Aly & AJ Adventure', '2007-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15699, 'The Amazing Flying Brothers', '2007-07-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9916, 'The Apprentice: Los Angeles', '2007-04-13 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36841, 'The Battle of YuYu Hakusho: Shitou! Ankoku Bujutsukai! 120%', '2007-01-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27493, 'The Bee Game', '2007-10-15 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18255, 'The BIGS', '2007-06-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27900, 'The Cheetah Girls: Pop Star Sensations', '2007-10-09 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4133, 'The Chosen: Well of Souls', '2007-10-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (51, 'The Crackwell Legacy', '2007-07-02 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9201, 'The Darkness', '2007-06-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (35817, 'The Chosen', '2011-07-05 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44469, 'The Chronicles of Shakespeare: Romeo & Juliet', '2011-10-05 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36576, 'The Clockwork Man', '2011-08-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (32422, 'The Clockwork Man: The Hidden World', '2011-09-23 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33074, 'The Cursed Crusade', '2011-10-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36678, 'The Dark Meadow', '2011-10-06 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36866, 'The Dating Game', '2011-03-16 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (30144, 'The Dishwasher: Vampire Smile', '2011-04-06 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33394, 'The Elder Scrolls V: Skyrim', '2011-11-11 00:00:00', 4);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33128, 'The Fancy Pants Adventures', '2011-04-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (31525, 'The First Templar', '2011-05-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (40722, 'The Flower Shop: WInter in Fairbrook', '2011-12-08 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (42758, 'The Fruit of Grisaia', '2011-02-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34766, 'The Green Hornet: Wheels of Justice', '2011-01-14 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34073, 'The Gunstringer', '2011-09-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34219, 'The Haunted: Hells Reach', '2011-10-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (32831, 'The History Channel: Great Battles - Medieval', '2011-05-06 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (32696, 'The Ico & Shadow of the Colossus Collection', '2011-09-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (32031, 'THE iDOLM@STER 2', '2011-02-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (58727, 'The iDOLM@STER Cinderella Girls', '2011-03-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (37219, 'The Idolmaster: Gravure for You! Vol. 1', '2011-10-02 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (37518, 'The Idolmaster: Gravure for You! Vol. 2', '2011-11-23 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (37519, 'The Idolmaster: Gravure for You! Vol. 3', '2011-12-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (55248, 'The Infinite Black', '2011-08-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (47276, 'The King of Fighters Encounter', '2011-10-18 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (23397, 'The Kore Gang: Outvasion from Inner Earth', '2011-10-04 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (39618, 'The Last Rocket', '2011-08-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29904, 'The Last Story', '2011-01-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44178, 'The Legend of the Dragonflame High School: Youth Battle Story', '2011-01-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (37074, 'The Legend Of Zelda: Four Swords Anniversary Edition', '2011-09-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (26934, 'The Legend of Zelda: Skyward Sword', '2011-11-18 00:00:00', 4);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33226, 'The Lord of the Rings Online: Rise of Isengard', '2011-09-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (30425, 'The Lord of the Rings: War in the North', '2011-11-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (35802, 'The Lost Town - The Dust', '2011-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (41602, 'The Love Letter', '2011-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (49927, 'The Matter of the Monster', '2011-05-07 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (54161, 'The Mirror Lied', '2011-09-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (38074, 'The Moogies', '2011-12-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (31578, 'The Mummy Online', '2011-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (30913, 'The Next Big Thing', '2011-04-21 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (42201, 'The Oregon Trail: American Settler', '2011-11-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (35805, 'The Penguins of Madagascar: Dr. Blowhole Returns Again!', '2011-09-13 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (47559, 'The Pilgrim''s Progress: The Video Game', '2011-06-13 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36778, 'The Price Is Right: Decades', '2011-10-18 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36122, 'The Rockin'' Dead', '2011-05-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44575, 'The Rolling Stones', '2011-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33892, 'The Seller', '2011-01-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34709, 'The Sims 3: Generations', '2011-05-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33372, 'The Sims 3: Outdoor Living Stuff', '2011-02-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (35521, 'The Sims 3: Pets', '2011-10-18 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36024, 'The Sims 3: Town Life Stuff', '2011-07-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (32248, 'The Sims Medieval', '2011-03-22 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (35872, 'The Sims Medieval: Pirates and Nobles', '2011-08-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (35546, 'The Sims Social', '2011-08-09 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (47406, 'The Smurfs', '2011-07-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (35350, 'The Smurfs Dance Party', '2011-07-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34256, 'The Tiny Bang Story', '2011-04-22 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33731, 'The Tomb Raider Trilogy', '2011-03-22 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (61570, 'The Treasures of Montezuma 3', '2011-05-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (38063, 'The Ultimate Battle of the Sexes: Quiz & Play!', '2011-12-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (35489, 'The War of the Worlds', '2011-10-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (40823, 'The Wavy Tube Man Chronicles', '2011-09-13 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28178, 'The Witcher 2: Assassins of Kings', '2011-05-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43646, 'The World''s Biggest Pac-Man', '2011-04-13 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33065, 'Theatre of War 3: Korea', '2011-03-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (46324, 'Them: The Summoning', '2011-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (37677, 'THOR Son of Asgard', '2011-05-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29196, 'Thor: God of Thunder', '2011-04-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36669, 'Thor: Son of Asgard', '2011-05-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34289, 'Tic', '2011-06-21 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33691, 'Tiger Woods PGA Tour 12: The Masters', '2011-03-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (37896, 'Tiki Towers 2: Monkey Republic', '2011-01-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (47055, 'Time of Fury', '2011-11-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36736, 'Tiny Heroes', '2011-09-15 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36288, 'Tiny Invaders', '2011-09-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (35773, 'Tiny Tower', '2011-06-23 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34383, 'Tiny Wings', '2011-02-18 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (38243, 'TNA Wrestling iMPACT!', '2011-05-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36750, 'To Heart 2 DX Plus', '2011-09-22 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (40683, 'To Heart 2: Dungeon Travelers', '2011-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36242, 'To the Moon', '2011-11-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45614, 'Toaru Majutsu no Index', '2011-01-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (31771, 'Tom Clancy''s Ghost Recon: Shadow Wars', '2011-03-22 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (38279, 'Tom Clancy’s Rainbow Six: Shadow Vanguard', '2011-12-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34288, 'Top Shot Arcade', '2011-03-15 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (32594, 'Top Spin 4', '2011-03-15 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34497, 'Toriko: Gourmet Survival', '2011-08-04 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (40627, 'Toro''s Friend Network', '2011-12-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (31531, 'Total War: Shogun 2', '2011-05-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (60074, 'Touch Battle Tank 3D', '2011-10-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36424, 'Touch My Katamari', '2011-12-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34887, 'Touhou 13 Ten Desires', '2011-08-13 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34741, 'Touhou Sky Arena', '2011-03-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (63140, 'Touki Kyouka', '2011-08-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (35683, 'Tour de France 2011', '2011-07-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (32453, 'Tower Bloxx: New York', '2011-01-05 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (35786, 'Tower Defense: Lost Earth', '2011-06-14 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (42483, 'Toy Cars', '2011-04-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (37783, 'Toy Shot', '2011-12-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34419, 'Toy Soldiers: Cold War', '2011-08-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44049, 'Flipper', '2013-08-09 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44702, 'Foiled', '2013-11-09 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (41470, 'Folk Tale', '2013-05-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43522, 'Football Manager 2014', '2013-10-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44762, 'Football Manager Handheld 2014', '2013-11-18 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44461, 'FootLOL', '2013-09-05 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (53205, 'Forbidden Planet', '2013-09-23 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (41938, 'Forced', '2013-10-23 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43733, 'Forge Quest', '2013-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43586, 'Formula Truck 2013', '2013-04-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44593, 'Fort Defense', '2013-05-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44692, 'FortressCraft Evolved!', '2013-12-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (62111, 'Fortune Cookies', '2013-06-04 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (42693, 'Forza Motorsport 5', '2013-11-22 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (39282, 'Foul Play', '2013-09-18 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45169, 'Fox Tales: The Skeleton King', '2013-09-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (42743, 'Franchise Hockey Manager 2013', '2013-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (65327, 'Freecell Solitaire', '2013-10-16 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (42576, 'Freedom Fall', '2013-07-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (50342, 'Front Office Football Seven', '2013-12-13 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (47042, 'Frozen Free Fall', '2013-11-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (46901, 'Frozen: Olaf''s Quest', '2013-11-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43248, 'Fruitcraft', '2013-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (40944, 'Full Bore', '2013-09-04 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (48355, 'Fureraba: Friend to Lover', '2013-06-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (35545, 'Fuse', '2013-05-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (48139, 'Fuuraiki 3', '2013-05-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (46958, 'Gaiabreaker', '2013-12-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43915, 'Gaist Crusher', '2013-12-05 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (42017, 'Galactic Reign', '2013-03-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (47740, 'Galaga Special Edition', '2013-01-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43238, 'Galaxy at War Online', '2013-05-22 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (38557, 'Game & Wario', '2013-06-23 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (41146, 'Game Dev Tycoon', '2013-08-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (47983, 'Game of War: Fire Age', '2013-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43937, 'Game Stock Car 2013', '2013-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44338, 'Gangs of Space', '2013-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (49078, 'Gardening Mama 2: Forest Friends', '2013-09-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (42545, 'Gardenscapes 2', '2013-04-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44637, 'Garfield Kart', '2013-11-13 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (52580, 'Garfield Saves The Holidays', '2013-12-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (41488, 'Garfield''s Escape', '2013-01-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43042, 'Garfield''s Wild Ride', '2013-06-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44015, 'Gas Guzzlers Extreme', '2013-10-08 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45519, 'Gaurodan', '2013-07-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (38481, 'Gears of War: Judgment', '2013-03-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (41083, 'Geisha Novia', '2013-01-07 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44421, 'Gender Bender DNA Twister Extreme', '2013-08-13 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (40103, 'General Conflict', '2013-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (40252, 'Generation of Chaos: Pandora’s Reflection', '2013-02-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44432, 'Gentlemen!', '2013-11-05 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (42750, 'GeoGuessr', '2013-05-09 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (40128, 'Germinator', '2013-02-13 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45497, 'Geten no Hana', '2013-03-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43397, 'Getsuei Gakuen Kou', '2013-10-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43240, 'Ghostbusters', '2013-01-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44033, 'Giana Sisters: Twisted Dreams - Rise of the Owlverlord', '2013-09-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44031, 'Giant Boulder of Death', '2013-09-06 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (38615, 'Ginga Force', '2013-02-14 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (61506, 'Gingiva', '2013-09-22 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (60445, 'Gintama no Sugoroku', '2013-01-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (37482, 'Girl Fight', '2013-09-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43325, 'Girls'' Fashion Shoot', '2013-11-22 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45456, 'Glacier Blast', '2013-09-13 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44136, 'Glare', '2013-10-09 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43719, 'Glass Heart Princess: PLATINUM', '2013-11-07 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36280, 'Go Home Dinosaurs!', '2013-03-14 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (39810, 'God Eater 2', '2013-11-14 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (40922, 'God Mode', '2013-04-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (38043, 'God of War: Ascension', '2013-03-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43362, 'Gods Will Be Watching', '2013-04-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44625, 'Gomo', '2013-12-06 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (38327, 'Gone Home', '2013-08-15 00:00:00', 5);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (40835, 'Goodbye Deponia', '2013-10-18 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45323, 'Goscurry', '2013-12-03 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (39193, 'Gran Turismo 6', '2013-12-05 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36765, 'Grand Theft Auto V', '2013-09-17 00:00:00', 5);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (47748, 'Grand Truckismo', '2013-11-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43732, 'Gravi', '2013-03-05 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (41663, 'Gravitrex Plus', '2013-02-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44627, 'Gravity Badgers', '2013-10-23 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (55669, 'Gravity Blocks: The Last Rotation', '2013-12-03 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (40586, 'Great Battle!! Tezuka All Stars', '2013-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43095, 'Great Permutator', '2013-03-21 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33118, 'GRID 2', '2013-05-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (47791, 'Gridiron Thunder', '2013-12-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (62962, 'Grimoire no Shisho', '2013-06-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (48624, 'Growtopia', '2013-01-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (44810, 'Grumpy Cat: Unimpressed', '2013-12-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (37673, 'Guacamelee!', '2013-04-09 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (50541, 'Guacamelee! Gold Edition', '2013-08-08 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (41126, 'Gun Commando', '2013-01-23 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (42595, 'Gun Monkeys', '2013-06-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (39798, 'Guncraft', '2013-08-09 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (39853, 'Gundam Breaker', '2013-06-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36961, 'Gunpoint', '2013-06-03 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (42623, 'Gunpowder', '2013-01-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45059, 'Gunslinger Stratos 2', '2013-11-07 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43026, 'Gunslugs', '2013-01-16 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (41368, 'Gunstringer: Dead Man Running', '2013-01-03 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (31179, 'Lego Creator: Harry Potter', '2002-02-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28232, 'Lego Island: Xtreme Stunts', '2002-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1764, 'LEGO Racers & LEGO Racers 2', '2002-05-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (35072, 'LEGO Soccer Mania', '2002-06-07 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (26967, 'Lemonade Tycoon', '2002-05-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (35806, 'Lethal Skies Elite Pilot: Team SW', '2002-05-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28449, 'Letter Drop 2', '2003-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (24706, 'Liberal Crime Squad', '2002-12-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27283, 'Lilie no Atelier: Salburg no Renkinjutsushi 3', '2002-04-04 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (65463, 'Lilo & Stitch: Hawaiian Adventure', '2002-06-22 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (16375, 'Links 2003', '2002-09-16 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6523, 'Links 2003: Championship Edition', '2002-09-16 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9812, 'Little Fighter 2', '2002-01-18 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4715, 'LMA Manager 2003', '2002-11-15 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10617, 'Loons: The Fight for Fame', '2002-09-15 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6929, 'Lord of the Shades', '2003-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1007, 'Lost Kingdoms', '2002-05-22 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36332, 'Lost Memory of Angel Frane 2', '2002-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (53820, 'Love Game''s Wai Wai Tennis Plus', '2002-03-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5395, 'Lunar Legend', '2002-12-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (48287, 'Lupin the 3rd: The Typing', '2002-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17061, 'Lupin the 3rd: Treasure of the Sorcerer King', '2002-11-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7910, 'Lux', '2002-11-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19057, 'Machop at Work', '2002-09-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12108, 'Mad Maestro!', '2002-03-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15987, 'Madden NFL 2003', '2002-08-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15879, 'Mafia', '2002-08-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (52760, 'Magi Death Fight: Mahou Gakuen', '2002-07-04 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9409, 'Magic Pengel: The Quest for Color', '2002-03-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9558, 'Magic: The Gathering Online', '2002-06-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (65108, 'Magical Broom eXtreme', '2002-02-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6750, 'Magische Kristalle', '2003-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14463, 'Mahjongger', '2002-05-07 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2530, 'MakeBridge', '2003-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17948, 'Mall Tycoon', '2002-02-04 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17765, 'Manhole-e', '2002-09-02 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13480, 'Maniac Jackson and the Moonwalking Mindbenders', '2003-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9034, 'Marble Blast Gold', '2002-12-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4660, 'Mario Party 4', '2002-10-21 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6207, 'Mary-Kate and Ashley: Girls Night Out', '2002-03-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14, 'Mary-Kate and Ashley: Sweet 16: Licensed to Drive', '2002-11-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5342, 'Masq', '2002-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12429, 'Master Rallye', '2002-04-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8730, 'Masters of the Universe: He-Man: Power of Greyskull', '2002-10-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7099, 'Mat Hoffman''s Pro BMX 2', '2002-08-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (54267, 'Matt Hayes'' Fishing', '2002-03-22 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10717, 'Maximo: Ghosts to Glory', '2002-02-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (40748, 'MaXXed Out Racing', '2002-09-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (24180, 'Mazan: Flash of the Blade', '2002-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12876, 'Mech Platoon', '2002-01-03 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17438, 'MechAssault', '2002-11-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19442, 'MechWarrior 4: Clan ''Mech Pak', '2002-07-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5305, 'MechWarrior 4: Inner Sphere ''Mech Pak', '2002-06-15 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (934, 'MechWarrior 4: Mercenaries', '2002-11-07 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (23056, 'Medabots AX: Rokusho/Metabee', '2002-06-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (23060, 'Medabots: Rokusho/Metabee', '2002-11-22 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4522, 'Medal of Honor: Allied Assault', '2002-01-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15051, 'Medal of Honor: Allied Assault - Spearhead', '2002-11-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4857, 'Medal of Honor: Frontline', '2002-05-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (31527, 'Medarot G Kabuto/Kuwagata', '2002-06-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19641, 'Medieval: Total War', '2002-08-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2731, 'Mega Man Zero', '2002-04-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (39923, 'Meitantei Conan: Saikou no Aibou', '2002-04-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22574, 'Melty Blood', '2002-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (53812, 'Memorial Series: Sunsoft vol. 4', '2002-02-14 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (53813, 'Memorial Series: Sunsoft vol. 5', '2002-03-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (53815, 'Memorial Series: Sunsoft vol. 6', '2002-11-21 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19775, 'MemoTrimo', '2003-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2524, 'Men in Black II: Alien Escape', '2002-06-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (31426, 'Men in Black II: Crossfire', '2002-06-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (84, 'Mensch Ärgere Dich Nicht!', '2003-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9106, 'Metal Dungeon', '2002-02-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (21654, 'Metal Gear Solid 2: Substance', '2002-11-05 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2018, 'Metal Slug 4', '2002-06-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45017, 'Metalgun Slinger', '2002-09-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10323, 'Metroid Fusion', '2002-11-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15473, 'Metroid Prime', '2002-11-18 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (26711, 'Metropolismania', '2002-10-03 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19175, 'Michael Schumacher Racing World Kart 2002', '2002-09-18 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2637, 'Micro Commandos', '2002-09-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36264, 'Micro Machines', '2002-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4554, 'Microsoft Combat Flight Simulator 3: Battle For Europe', '2002-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17248, 'Microsoft Train Simulator: Paint Shed', '2002-11-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11396, 'Might and Magic IX', '2002-03-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3318, 'Mike Tyson Heavyweight Boxing', '2002-06-23 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45984, 'Mimesis Online', '2002-01-16 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28112, 'Mini Golf Master 2', '2002-01-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (25393, 'Mini Moni Shakkato Tambourine The Piyon', '2002-09-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15659, 'Minnnni-Golf', '2002-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2571, 'Minority Report: Everybody Runs', '2002-11-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14874, 'Missing on Lost Island', '2002-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (39540, 'Missing Parts 2: The Tantei Stories', '2002-10-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (39539, 'Missing Parts: The Tantei Stories', '2002-01-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33169, 'Mistænkt 2: Ulvespor', '2002-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (20027, 'Mister Mosquito', '2002-03-14 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34536, 'MLB 2003', '2002-06-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18355, 'MLB SlugFest 20-03', '2002-06-21 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2078, 'Mobile Forces', '2002-08-16 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22717, 'Mobile Suit Gundam: Federation vs. Zeon', '2002-09-09 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (31241, 'Mobile Suit Gundam: Lost War Chronicles', '2002-08-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (43557, 'Flight Academy', '2002-08-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5017, 'Flipull', '2002-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6822, 'Follow Hoothoot', '2002-08-23 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22700, 'Forever Kingdom', '2002-01-22 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (54374, 'Formation Soccer 2002', '2002-05-02 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11266, 'Formula One 2002', '2002-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (32948, 'Formula One Arcade', '2002-07-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12658, 'FourFourTwo Touchline Passion', '2002-10-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6479, 'Freedom Force', '2002-01-09 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19510, 'Frequon Invaders', '2002-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4859, 'Frogger Advance: The Great Quest', '2002-05-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6258, 'Frogger Beyond', '2002-12-06 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8683, 'Frogger''s Adventures 2: The Lost Wand', '2002-11-05 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (26947, 'Front Office Football: The Fourth Edition', '2002-10-23 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (30672, 'Frontline Attack: War Over Europe', '2002-11-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (46270, 'Frozen Bubble', '2002-02-08 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5904, 'Full Moon in San Francisco', '2002-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (42973, 'Fushigi no Dungeon: Furai no Shiren Gaiden: Jokenji Asuka Kenzan!', '2002-02-07 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17230, 'FX Chess Plus', '2002-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (64681, 'G-Stream G2020', '2002-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4188, 'G.I. Combat: Episode 1 - Battle of Normandy', '2002-11-04 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1610, 'Gaea Fallen', '2002-01-08 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (39726, 'Gakuen Heaven: Boy''s Love Scramble', '2002-08-02 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (24947, 'Galaxy Angel', '2002-08-23 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1456, 'Game & Watch Gallery 4', '2002-10-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18899, 'Gatchaman: The Shooting', '2002-06-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5748, 'GeneRally', '2002-05-16 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (47093, 'Generation of Chaos Next', '2002-04-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10990, 'Genma Onimusha', '2002-01-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (39719, 'GetAmped', '2002-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (54596, 'Ghost Vibration', '2002-07-04 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7708, 'Gitaroo Man', '2002-02-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1773, 'Global Operations', '2002-03-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (46011, 'Global Touring Challenge: Africa', '2002-06-14 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (57741, 'Glove on Fight', '2002-05-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11422, 'GO, Poliwrath!', '2002-09-16 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15623, 'Go! Go! Beckham! Adventure On Soccer Island', '2002-08-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (29924, 'GoDai: Elemental Force', '2002-01-21 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6680, 'GodPey', '2002-05-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2806, 'Godzilla: Destroy All Monsters Melee', '2002-10-08 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18444, 'Godzilla: Domination', '2002-11-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18390, 'Goemon: New Age Shutsudou!', '2002-02-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4277, 'Golden Sun: The Lost Age', '2002-06-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8262, 'Golf Adventure Galaxy', '2003-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2884, 'Golf Resort Tycoon II', '2002-02-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15128, 'Gore: Ultimate Soldier', '2002-06-05 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7482, 'Gran Turismo Concept: 2001 Tokyo', '2002-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7313, 'Gran Turismo Concept: 2002 Tokyo-Geneva', '2002-07-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (21390, 'Gran Turismo Concept: 2002 Tokyo-Seoul', '2002-05-16 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36328, 'Grand Battle! 2', '2002-03-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7723, 'Grand Prix 4', '2002-09-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17036, 'Grand Theft Auto: Vice City', '2002-10-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14159, 'Grandia Xtreme', '2002-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13586, 'Gravedigger', '2002-12-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (26415, 'Gravity Games Bike: Street Vert Dirt', '2002-06-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (53850, 'Green''s Xmas Collection', '2002-12-21 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4177, 'Gremlins: Stripe Vs. Gizmo', '2002-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (65293, 'Grim & Evil: Battle Forts', '2002-07-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (25702, 'Groove Adventure Rave', '2002-01-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (25705, 'Groove Adventure Rave: Hikari to Yami no Daikessen', '2002-03-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (25703, 'Groove Adventure Rave: Mikan no Hiseki', '2002-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (25704, 'Groove Adventure Rave: Plue no Daibouken', '2002-07-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12194, 'GT Advance 2: Rally Racing', '2002-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14054, 'GuessWhat', '2003-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19133, 'Gun Metal', '2002-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1647, 'Gundam Battle Assault 2', '2002-07-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9037, 'Gungrave', '2002-09-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5716, 'GunValkyrie', '2002-03-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (57139, 'Gunvari Collection + Time Crisis', '2002-12-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15541, 'Gutterball 3D', '2002-07-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34475, 'Hajime no Ippo: The Fighting!', '2002-12-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (62797, 'Happy Bell Lovex2 Honeymoon', '2002-05-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (53822, 'Hard Hitter 2', '2002-02-07 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (16901, 'Hard Truck: 18 Wheels of Steel', '2002-08-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (39956, 'Hardcore Pinball', '2002-12-16 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8370, 'Harry Potter and the Chamber of Secrets', '2002-11-14 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (24351, 'Harukanaru Toki no Naka de 2', '2002-02-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4228, 'Haven: Call of the King', '2002-11-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19316, 'Headhunter', '2002-05-09 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8349, 'Hearts of Iron', '2002-11-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (980, 'Hegemonia: Legions of Iron', '2002-11-13 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34667, 'Her Knights: All for the Princess', '2002-04-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3004, 'Herdy Gerdy', '2002-03-04 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (16609, 'Hero X', '2002-06-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10692, 'Heroes of Might and Magic IV', '2002-03-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (634, 'Heroes of Might and Magic IV: The Gathering Storm', '2002-09-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14702, 'Het Labyrint van Toetanchamon', '2002-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (32329, 'Hey Arnold! The Movie', '2002-05-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14109, 'Hidden Invasion', '2002-07-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (16036, 'High Heat Major League Baseball 2003', '2002-03-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (23887, 'Higurashi no Naku Koro ni: Onikakushi-hen', '2002-08-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (23888, 'Higurashi no Naku Koro ni: Watanagashi-hen', '2002-12-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45031, 'Hikaru no Go 2', '2002-07-18 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45030, 'Hikaru no Go: Heian Gensou Ibunroku', '2002-05-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45029, 'Hikaru no Go: Insei Choujou Kessen', '2002-12-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9693, 'Hired Team: Trial GOLD', '2002-04-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7004, 'Hitman 2: Silent Assassin', '2002-10-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (63059, 'Hittin Switchez', '2002-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36351, 'Hobo Soccer', '2002-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9622, 'Hold Down Hoppip', '2002-02-22 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10258, 'Battle Hunter', '2001-04-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12054, 'Battle Realms', '2001-11-07 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (45871, 'Battlecruiser Millennium', '2001-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (24524, 'beatmania 6thMIX -THE UK UNDERGROUND MUSIC-', '2001-07-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22327, 'beatmania IIDX 4th style', '2001-03-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22328, 'beatmania IIDX 5th style', '2001-08-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (47729, 'Beatmania III: Append 6th Mix', '2001-07-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (24533, 'beatmania THE SOUND OF TOKYO!', '2001-03-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6375, 'Becher''s Dream', '2002-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14169, 'Bejeweled', '2001-05-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36482, 'Benjamin Blumchen: Ein verruckter Tag Im Zoo', '2001-11-06 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (57, 'Beyblade', '2001-12-13 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22871, 'Beyond Atlantis II', '2001-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36486, 'Bibi Blocksberg: Im Bann der Hexenkugel', '2001-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (40660, 'Big Air Wakeboarding', '2001-05-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11902, 'Biko 2', '2001-01-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18623, 'Black & White', '2001-03-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (42259, 'Black Bass with Blue Marlin', '2001-05-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15165, 'Black Penguin', '2001-11-23 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (21473, 'Blade of Darkness', '2001-02-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (47306, 'Blade of Honor', '2001-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (24082, 'Blast Lacrosse', '2001-05-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19353, 'Blasterball 2: Revolution', '2002-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7118, 'Blobula', '2001-10-22 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27685, 'Block Wars', '2001-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8018, 'Blood Wake', '2001-12-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17818, 'Blue Wing Blitz', '2001-07-05 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36429, 'Blue''s Clues: Blue''s Alphabet Book', '2001-01-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34829, 'Boards and Blades 2', '2001-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36442, 'Bob the Builder: Fix it Fun!', '2001-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13321, 'Boku Wa Koukuu Kansei-An', '2001-03-21 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33908, 'Boku, Doraemon', '2001-01-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33469, 'Bomberman 64', '2001-12-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18180, 'Bomberman Online', '2001-10-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9113, 'Bomberman Tournament', '2001-10-08 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10839, 'Bounty Hunter Sara: Holy Mountain no Teiou', '2001-05-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34792, 'Bowling', '2001-05-14 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14768, 'Boxing Fever', '2001-10-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15017, 'Boys Only Club', '2001-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1082, 'BrainBurst!', '2002-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36553, 'Brave Saga Shinshou Astaria', '2001-01-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10686, 'BrickAttack', '2002-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4283, 'Bumper Wars', '2001-01-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (20484, 'Burnout', '2001-11-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (60926, 'Buttsubushi', '2001-03-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2322, 'Cabela''s 4x4 Off-Road Adventure', '2001-02-13 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34831, 'Cabela''s 4x4 Off-Road Adventure 2', '2001-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (50594, 'Cabela''s Big Game Hunter: Ultimate Challenge', '2001-12-04 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (6895, 'Cabela''s Ultimate Deer Hunt', '2001-08-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4870, 'Caesar''s Palace Advance: Millenium Gold Edition', '2001-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8492, 'Capcom vs. SNK 2: Mark of the Millennium', '2001-08-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22081, 'Car Battler Joe', '2001-11-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18836, 'Carnivores: Ice Age', '2001-01-15 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14334, 'CART Fury: Championship Racing', '2001-05-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10068, 'Casper: Spirit Dimensions', '2001-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13197, 'Castlevania: Circle of the Moon', '2001-03-21 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (47831, 'Castrol Honda VTR', '2001-02-09 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10233, 'Catan: Die Erste Insel', '2001-03-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19971, 'Cave Dig 3', '2001-12-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19116, 'Cel Damage', '2001-11-14 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11998, 'Championship Manager Quiz', '2001-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17370, 'Championship Manager: Season 01/02', '2001-10-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27630, 'Championship Motocross 2001 featuring Ricky Carmichael', '2001-01-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (23247, 'Charge n Blast', '2001-02-07 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2887, 'Charlie II', '2001-11-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36567, 'Chee-Chai Alien', '2001-02-23 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (165, 'Cheerios Play Time', '2001-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (825, 'Chemicus: Journey to the Other Side', '2001-09-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (48309, 'Chess', '2001-11-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33985, 'Chibi Maruko-Chan: Go Chounai Minna de Game Dayo!', '2001-08-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36577, 'Chou Gals! Kotobuki Ran', '2001-07-26 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8396, 'Chromatron', '2002-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1758, 'CIA Operative: Solo Missions', '2001-05-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (20397, 'City Crisis', '2001-07-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10157, 'Clive Barker''s Undying', '2001-02-19 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (54183, 'Club Kart: European Session', '2001-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (20183, 'Codename: Outbreak', '2001-11-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12795, 'CoLoBot', '2001-08-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1271, 'Columns Crown', '2001-12-13 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18759, 'Comanche 4', '2001-11-12 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1704, 'Combat Two', '2001-08-11 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5550, 'Command & Conquer: Yuri''s Revenge', '2001-10-10 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (21209, 'Commander Keen', '2001-05-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19695, 'Commandos 2: Men of Courage', '2001-09-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15008, 'Confidential Mission', '2001-06-14 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3537, 'Conflict Zone', '2001-10-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10533, 'Conker''s Bad Fur Day', '2001-03-04 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (7070, 'Conquest: Frontier Wars', '2001-08-14 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18640, 'Conway''s Game of Life', '2001-01-13 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22290, 'Cosmic Rift', '2001-04-18 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (22783, 'Cosmic Smash', '2001-09-13 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (9413, 'Cossacks: European Wars', '2001-04-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (64271, 'Country Varmint Hunter', '2001-10-15 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (54032, 'Crackin'' DJ Part 2', '2001-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (68, 'Crash Bandicoot: The Wrath of Cortex', '2001-10-29 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (57299, 'Crazy Arcade', '2001-10-16 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1346, 'Crazy Minigolf', '2001-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18195, 'Crazy Taxi 2', '2001-05-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12907, 'Crescendo', '2001-09-18 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34865, 'Cricket 2002', '2001-12-14 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (49622, 'I-Xera', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (39603, 'Ide Yosuke Meijin no Jissen Mahjong', '1987-09-24 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (41181, 'Igo: Kyuu Roban Taikyoku', '1987-04-14 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (42255, 'Ikinari Musician', '1987-03-05 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27688, 'Illusion', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11901, 'Image Fight', '1988-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (39522, 'Imitation City', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (23511, 'Implosion', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27886, 'In Eighty Days Around The World', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (5271, 'Incredible Shrinking Sphere', '1987-11-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11460, 'Indian Mission', '1988-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (369, 'Indiana Jones in Revenge of the Ancients', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17232, 'Indoor Sports', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (39610, 'Indora no Hikari', '1987-10-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27962, 'Indy 500', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (17347, 'Insanity Fight', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (16939, 'International Karate +', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13735, 'Invitation', '1987-05-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (482, 'Iznogoud', '1987-12-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34868, 'J.B. Harold Series #2: Manhattan Requiem - Angels Flying in the Dark', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (20347, 'J.J. & Jeff', '1987-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1977, 'Jacaranda Jim', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4678, 'Jack the Nipper 2: In Coconut Capers', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11679, 'Jagur 5', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3793, 'James Bond 007 in The Living Daylights: The Computer Game', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3560, 'Jaws', '1987-11-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (38599, 'JESUS', '1987-04-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (39384, 'Jikai Shounen Mettomag', '1987-07-03 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (39778, 'Jikuu Yuten: Debias', '1987-11-27 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (18523, 'JJ - Tobidase Daisakusen Part 2', '1987-12-07 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (16291, 'Joe Blade', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34666, 'Jongbou', '1987-07-18 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (39606, 'Kalin no Tsurugi', '1987-10-02 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33070, 'Karaoke Studio', '1987-07-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28115, 'Karate King', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2057, 'Karnov', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (39672, 'Kick Challenger: Air Foot', '1987-11-20 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (52756, 'Kid no Horehore Daisakusen', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14570, 'Kiki Kaikai: Dotou-hen', '1987-08-28 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (15042, 'Kikstart 2', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (42313, 'Kinetic Connection Vol. II', '1987-05-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (40834, 'King Kong 2: Yomigaeru Densetsu', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10130, 'Kingdom of Kroz', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36216, 'Kinnikuman: Kinnikusei Oui Soudatsusen', '1987-05-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (16161, 'Knight Orc', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (23733, 'Knightmare', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (20383, 'Knightmare II: The Maze of Galious', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13779, 'Krakout', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (64605, 'Kromazone', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (12779, 'Kung Fu Kid', '1987-05-17 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (39605, 'Kyonshies 2', '1987-09-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11303, 'La Abadía del Crimen', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2028, 'La Guerra de las Vajillas', '1988-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (36501, 'Labyrinth: Maou no Meikyuu', '1987-01-07 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (11615, 'Lady Safari', '1988-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (48839, 'Land of Neverwhere', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10041, 'Laplace no Ma', '1987-04-07 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34183, 'Laser War', '1987-03-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10868, 'Last Ninja 2: Back with a Vengeance', '1988-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (57842, 'Laurel & Hardy', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8548, 'Lawn Mower', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (62679, 'Lazer Tag', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (16011, 'Le Maître des Âmes', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (10292, 'League Challenge', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4068, 'Legacy of the Wizard', '1987-07-09 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4990, 'Leisure Suit Larry 1:  In the Land of the Lounge Lizards', '1987-07-05 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (4941, 'Lethal Labyrinth', '1987-06-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (23750, 'Level 5', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28349, 'Leviathan', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (38103, 'Liar: Legend of the Sword', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (64406, 'Liberator ', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (14678, 'Life & Death', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (13960, 'Life Force', '1987-09-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (1151, 'Little Princess', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (63900, 'Locodriver', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (63901, 'Locodriver 2', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (63902, 'Locodriver 3', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (39246, 'Loretta no Shouzou', '1987-02-18 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (42270, 'Lost Word of Jenny', '1987-03-25 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (33521, 'Lupin III: Pandora no Isan', '1987-11-06 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (20380, 'M.A.C.H. - Maneuverable Armed Computer Humans', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2344, 'Mach 3', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (26010, 'Mad Mix Game: The Pepsi Challenge', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27384, 'Madballs', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (20013, 'Magnetik Tank', '1987-01-01 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (34663, 'Mahjong Kazoku', '1987-08-04 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (39796, 'Mahjong Sengoku Jidai', '1987-10-18 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (62524, 'Makai Fukkatsu', '1987-04-30 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (28445, 'Mandroid', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (2037, 'Maniac Mansion', '1987-10-05 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (42253, 'Marchen Veil', '1987-03-03 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (39060, 'Mario Bros. II', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27523, 'MASK', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (27616, 'MASK II', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8231, 'Masters of the Universe: The Arcade Game', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (47370, 'Masters of the Universe: The Movie', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (19611, 'Match Day II', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (3789, 'Mavis Beacon Teaches Typing!', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (48840, 'Mayhem', '1987-12-31 00:00:00', NULL);
	
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (8128, 'Mean Streak', '1987-12-31 00:00:00', NULL);
		
INSERT INTO juego (id_juego, nombre, fecha, rating) VALUES (0, 'Juego sin plataforma', NULL, NULL);
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (26, '3DO', '1993-08-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (125, 'Acorn Archimedes', '1987-07-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (148, 'Action Max', '1986-12-21');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (93, 'Adventure Vision', '1982-11-01');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (155, 'Amazon Fire TV', '2014-04-02');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (1, 'Amiga', '1985-07-23');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (39, 'Amiga CD32', '1993-09-17');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (11, 'Amstrad CPC', '1984-06-21');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (123, 'Android', '2008-09-30');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (12, 'Apple II', '1977-06-30');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (38, 'Apple IIgs', '1986-11-18');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (159, 'Apple TV', '2015-10-26');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (100, 'Aquarius', '1983-06-01');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (84, 'Arcade', '1971-08-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (99, 'Arcadia 2001', '1982-03-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (40, 'Atari 2600', '1977-10-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (67, 'Atari 5200', '1982-03-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (70, 'Atari 7800', '1986-06-30');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (24, 'Atari 8-bit', '1979-11-30');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (7, 'Atari Lynx', '1989-09-30');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (13, 'Atari ST', '1985-04-01');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (120, 'Bally Astrocade', '1977-01-01');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (127, 'Bandai Playdia', '1994-10-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (110, 'BBC Micro', '1981-09-30');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (140, 'Browser', '1991-08-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (126, 'Casio Loopy', '1995-10-01');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (149, 'Casio PV-1000', '1983-10-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (27, 'CD-i', '1991-12-03');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (66, 'Channel F', '1976-07-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (47, 'ColecoVision', '1982-08-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (58, 'Commodore 128', '1985-01-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (150, 'Commodore 16', '1984-09-01');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (14, 'Commodore 64', '1982-08-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (142, 'Commodore CDTV', '1991-03-01');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (62, 'Commodore PET/CBM', '1977-07-15');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (61, 'Dragon 32/64', '1982-08-15');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (37, 'Dreamcast', '1998-11-27');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (106, 'DSiWare', '2008-12-24');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (135, 'Epoch Cassette Vision', '1981-07-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (91, 'Famicom Disk System', '1983-07-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (108, 'FM Towns', '1989-03-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (114, 'FM-7', '1982-11-01');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (164, 'Fuze Tomahawk F1', '2016-06-01');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (166, 'Gamate', '1990-12-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (3, 'Game Boy', '1989-04-21');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (4, 'Game Boy Advance', '2001-03-21');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (57, 'Game Boy Color', '1998-10-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (5, 'Game Gear', '1990-10-28');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (158, 'Game Master', '1990-12-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (105, 'Game Wave', '2005-10-01');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (77, 'Game.Com', '1997-09-30');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (23, 'GameCube', '2001-09-14');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (133, 'GamePark 32', '2001-11-23');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (6, 'Genesis', '1988-10-29');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (78, 'Gizmondo', '2005-10-01');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (104, 'HyperScan', '2006-10-01');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (51, 'Intellivision', '1979-01-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (121, 'iPad', '2010-04-27');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (96, 'iPhone', '2007-06-29');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (72, 'iPod', '2001-10-23');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (28, 'Jaguar', '1993-11-30');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (171, 'Jaguar CD', '1995-09-21');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (144, 'Leapfrog Didj', '2008-08-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (89, 'Leapster', '2003-11-29');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (152, 'Linux', '1991-10-05');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (170, 'Luxor ABC80', '1978-08-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (17, 'Mac', '1984-01-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (137, 'Mega Duck', '1993-08-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (153, 'Memorex MD 2500 VIS', '1992-12-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (168, 'MicroBee', '1982-02-01');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (90, 'Microvision', '1979-11-05');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (15, 'MSX', '1983-06-16');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (34, 'N-Gage', '2003-10-07');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (115, 'NEC PC-6001', '1981-11-01');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (109, 'NEC PC-8801', '1981-01-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (112, 'NEC PC-9801', '1982-10-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (25, 'Neo Geo', '1990-01-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (59, 'Neo Geo CD', '1994-10-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (80, 'Neo Geo Pocket', '1999-08-06');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (81, 'Neo Geo Pocket Color', '1999-03-16');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (156, 'New Nintendo 3DS', '2014-10-11');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (117, 'Nintendo 3DS', '2011-02-26');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (138, 'Nintendo 3DS eShop', '2011-06-14');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (43, 'Nintendo 64', '1996-06-23');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (101, 'Nintendo 64DD', '1999-11-30');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (52, 'Nintendo DS', '2004-11-21');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (21, 'Nintendo Entertainment System', '1983-07-15');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (157, 'Nintendo Switch', '2017-03-03');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (85, 'NUON', '1999-03-09');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (74, 'Odyssey', '1972-08-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (60, 'Odyssey 2', '1978-12-02');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (154, 'Ouya', '2013-06-25');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (94, 'PC', '1981-08-12');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (75, 'PC-FX', '1994-12-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (83, 'Pinball', '');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (92, 'Pioneer LaserActive', '1993-08-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (102, 'Pippin', '1995-09-01');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (111, 'PLATO', '1960-01-01');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (22, 'PlayStation', '1994-12-03');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (19, 'PlayStation 2', '2000-03-04');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (35, 'PlayStation 3', '2006-11-11');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (146, 'PlayStation 4', '2013-11-15');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (88, 'PlayStation Network (PS3)', '2006-11-01');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (116, 'PlayStation Network (PSP)', '2008-10-21');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (143, 'PlayStation Network (Vita)', '2012-02-12');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (18, 'PlayStation Portable', '2005-03-24');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (129, 'PlayStation Vita', '2012-02-29');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (134, 'Pokémon mini', '2001-11-30');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (103, 'R-Zone', '1995-01-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (131, 'RCA Studio II', '1977-01-01');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (107, 'RDI Halcyon', '1984-12-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (162, 'SAM Coupé', '1989-12-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (98, 'Satellaview', '1995-04-30');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (42, 'Saturn', '1994-11-22');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (31, 'Sega 32X', '1994-12-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (29, 'Sega CD', '1992-10-15');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (8, 'Sega Master System', '1985-10-20');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (118, 'Sega Pico', '1993-12-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (141, 'Sega SG-1000', '1983-07-15');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (128, 'Sharp MZ', '1978-05-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (113, 'Sharp X1', '1982-01-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (95, 'Sharp X68000', '1987-03-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (160, 'Sony SMC-777', '1982-12-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (151, 'Super A''Can', '1995-10-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (136, 'Super Cassette Vision', '1984-07-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (9, 'Super Nintendo Entertainment System', '1990-11-21');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (119, 'SuperGrafx', '1989-11-30');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (48, 'TI-99/4A', '1981-06-30');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (165, 'Tomy Tutor', '1982-12-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (63, 'TRS-80', '1980-10-01');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (68, 'TRS-80 CoCo', '1980-12-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (55, 'TurboGrafx-16', '1987-10-30');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (53, 'TurboGrafx-CD', '1988-12-04');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (82, 'V.Smile', '2005-08-29');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (76, 'Vectrex', '1982-11-30');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (30, 'VIC-20', '1980-05-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (163, 'View-Master Interactive Vision', '1988-12-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (79, 'Virtual Boy', '1995-07-02');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (169, 'VTech Socrates', '1988-12-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (147, 'Watara Supervision', '1992-01-01');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (36, 'Wii', '2006-11-19');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (87, 'Wii Shop', '2006-11-30');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (139, 'Wii U', '2012-11-18');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (124, 'Windows Phone', '2010-11-14');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (65, 'WonderSwan', '1999-03-01');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (54, 'WonderSwan Color', '2000-12-09');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (132, 'XaviXPORT', '2004-08-28');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (32, 'Xbox', '2001-11-30');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (20, 'Xbox 360', '2005-11-22');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (86, 'Xbox 360 Games Store', '2005-11-30');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (145, 'Xbox One', '2013-11-22');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (122, 'Zeebo', '2009-06-25');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (64, 'Zodiac', '2003-10-31');
	
INSERT INTO plataforma (id_plataforma, nombre, fecha) VALUES (16, 'ZX Spectrum', '1982-04-20');
	
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27434, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28543, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28625, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29629, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29673, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (59480, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (63742, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (63742, 140);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17852, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17852, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17852, 24);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17852, 63);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17852, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20713, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21627, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24276, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27423, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27425, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27436, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28848, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29741, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41588, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8010, 74);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10663, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10663, 62);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10663, 63);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10663, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10663, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13729, 48);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14965, 74);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22195, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22195, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28691, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28747, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29619, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29666, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29789, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29813, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33456, 74);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33457, 74);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33491, 74);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37739, 74);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40947, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43951, 74);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (49940, 74);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (49941, 74);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (60908, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17392, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21711, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28569, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28688, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28798, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29681, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29737, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29797, 111);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39848, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43191, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43194, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45390, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (48048, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (55281, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (59335, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (60904, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (60905, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (60909, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (61449, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (61450, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4116, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4116, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4116, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13522, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13522, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13522, 39);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13522, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23048, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23131, 111);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23137, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23137, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28154, 111);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28565, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28709, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29683, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29722, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29740, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35848, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36003, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36499, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36540, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38719, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40949, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40950, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40951, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41531, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43196, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16196, 111);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17598, 111);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19818, 66);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21625, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (25853, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (25858, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27403, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27438, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27794, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28542, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28743, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29644, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29732, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29733, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29798, 111);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29799, 111);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32574, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32574, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32574, 120);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32676, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32677, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36504, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36563, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43193, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43197, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (55280, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (59484, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (61240, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (670, 66);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1055, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1055, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1055, 24);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1055, 40);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1055, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1055, 67);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1055, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1055, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1055, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1055, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1126, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1811, 40);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1811, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3206, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3206, 24);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3206, 62);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3206, 63);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3225, 66);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3294, 40);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4279, 60);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4787, 66);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5348, 40);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5348, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5348, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5368, 40);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5368, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5368, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5719, 66);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10752, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10752, 30);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10752, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11208, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13049, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13049, 40);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13049, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13049, 85);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13049, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13049, 100);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13617, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13617, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13617, 40);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13617, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13617, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14950, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14950, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15313, 66);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15441, 66);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16028, 40);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17826, 40);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17826, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17826, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17826, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18737, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18737, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19301, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19301, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19301, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19476, 40);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19945, 40);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22740, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23246, 40);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23246, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23246, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26664, 66);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26665, 66);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26666, 66);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26667, 66);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26668, 66);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26669, 66);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26670, 66);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26671, 66);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27190, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27190, 120);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27441, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28507, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28527, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28548, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28559, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28616, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28773, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28800, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28801, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28810, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28825, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29671, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29793, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30643, 120);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30654, 120);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30665, 120);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34284, 40);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34579, 131);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34580, 131);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34581, 131);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34582, 131);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34583, 131);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34584, 131);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34585, 131);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34586, 131);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34587, 131);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34588, 131);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34593, 131);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34595, 131);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35052, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35371, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36495, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36496, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36587, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39316, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41365, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42238, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43195, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45549, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (46966, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (46967, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (46968, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (46999, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47790, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47978, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (54276, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (54278, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (55279, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (61893, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (62177, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (65018, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (65018, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (65018, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (58, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (80, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (80, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (80, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (80, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (87, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (87, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (87, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (87, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (87, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (87, 38);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (87, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (143, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (143, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (143, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (192, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (231, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (250, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (250, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (250, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (250, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (250, 29);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (250, 53);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (250, 55);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (250, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (250, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (250, 95);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (250, 108);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (289, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (289, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (289, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (289, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (289, 8);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (289, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (289, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (289, 39);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (289, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (289, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (289, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (289, 125);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (307, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (307, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (307, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (307, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (307, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (307, 95);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (312, 8);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (331, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (331, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (342, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (342, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (342, 140);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (349, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (359, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (359, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (359, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (359, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (359, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (359, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (400, 25);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (400, 59);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (400, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (481, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (486, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (578, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (578, 95);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (627, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (627, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (627, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (627, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (675, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (675, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (675, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (675, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (723, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (723, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (723, 129);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (723, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (782, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (806, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (851, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (851, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (851, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (864, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (864, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (864, 72);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (864, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (864, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (864, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (864, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (881, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1051, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1051, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1051, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1051, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1067, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1067, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1067, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1067, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1067, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1134, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1134, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1166, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1166, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1166, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1166, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1166, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1166, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1166, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1192, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1192, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1192, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1216, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1220, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1265, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1265, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1265, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1265, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1289, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1289, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1289, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1289, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1289, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1289, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1309, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1332, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1332, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1332, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1334, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1334, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1334, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1334, 156);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1338, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1338, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1410, 40);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1410, 70);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1428, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1428, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1428, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1441, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1441, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1441, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1441, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1452, 55);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1452, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1452, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1583, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1583, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1583, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1583, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1583, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1583, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1583, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1622, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1624, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1649, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1656, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1659, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1659, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1700, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1700, 8);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1700, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1716, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1716, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1716, 26);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1716, 29);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1716, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1768, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1768, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1768, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1768, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1790, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1801, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1844, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1853, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1853, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1853, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1856, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1856, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1904, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1917, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1967, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1967, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1994, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1994, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2073, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2073, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2073, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2073, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2093, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2093, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2093, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2093, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2119, 25);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2119, 59);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2119, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2119, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2119, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2119, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2119, 145);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2119, 146);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2119, 157);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2142, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2142, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2142, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2142, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2207, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2213, 5);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2213, 8);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2231, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2231, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2277, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2277, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2277, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2277, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2277, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2277, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2299, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2307, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2332, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2332, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2332, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2336, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2336, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2336, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2336, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2380, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2380, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2388, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2388, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2388, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2418, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2418, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2418, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2429, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2429, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2448, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2448, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2448, 29);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2448, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2487, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2487, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2487, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2533, 70);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2541, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2541, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2554, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2558, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2563, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2563, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2563, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2568, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2568, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2627, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2627, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2627, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2631, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2631, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2631, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2631, 108);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2642, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2642, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2653, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2653, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2685, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2685, 29);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2685, 95);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2701, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2701, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2701, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2701, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2701, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2701, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2701, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2764, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2790, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2790, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2790, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2790, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2840, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2840, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2848, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2848, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2848, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2848, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2976, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2976, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2976, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2976, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3011, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3012, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3012, 147);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3019, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3019, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3019, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3019, 29);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3019, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3019, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3019, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3019, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3019, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3019, 108);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3019, 142);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (901, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (61158, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5698, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5698, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5698, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5698, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5698, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5698, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5698, 125);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30095, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29965, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19081, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19081, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37277, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37277, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7998, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7998, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7998, 53);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7998, 112);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27010, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (54126, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3146, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3146, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8141, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8141, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8141, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8141, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8141, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8141, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8141, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8141, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8141, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8141, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8141, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14547, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14547, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17134, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17134, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7238, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7238, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7238, 53);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7238, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7238, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7238, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5591, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (60118, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11873, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9782, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9782, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12987, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22403, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22403, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17831, 18);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17831, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17831, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17831, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28343, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28343, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (54922, 55);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12296, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5708, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5708, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22059, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33200, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33200, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33200, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33200, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8704, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8704, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8704, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11974, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11974, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11974, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11974, 125);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12559, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12559, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12559, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12559, 29);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12559, 53);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12559, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12559, 108);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29302, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8725, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3017, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3017, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3017, 55);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17144, 8);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10528, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10528, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10528, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10528, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10528, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10528, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10528, 108);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10528, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3713, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3713, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31277, 24);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (55672, 55);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40422, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10514, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3610, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3610, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3610, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19285, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19285, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9958, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7936, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (55558, 55);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36566, 55);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36566, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36566, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36566, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18250, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3241, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39087, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (46302, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11467, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13478, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4457, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4457, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8885, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8885, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8885, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8885, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8885, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19420, 55);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19420, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19420, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (474, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6943, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17083, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17083, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17083, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17083, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17083, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1997, 55);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16981, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16981, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16981, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (55699, 55);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40614, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (25311, 5);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1850, 7);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1850, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1850, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1850, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1850, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17825, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32637, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15461, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15461, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15461, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15461, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6726, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6726, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6726, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6989, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6989, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20413, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20413, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20413, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20413, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20413, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20413, 53);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20413, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20413, 95);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20413, 108);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20413, 112);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30887, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4688, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4688, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16358, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16358, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16358, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16358, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (55433, 55);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13016, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6920, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6920, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6920, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6920, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6920, 162);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4879, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4879, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4879, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26263, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26263, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26263, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26263, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26263, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2853, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31114, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18328, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18328, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13423, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (52568, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6030, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17483, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17483, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17483, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17483, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17483, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17483, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17483, 26);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17483, 29);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17483, 38);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17483, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17483, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17483, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17483, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17483, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17483, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17483, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17483, 145);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17483, 146);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17483, 154);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8783, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8783, 5);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8783, 8);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8783, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8783, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8783, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8783, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (62952, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (62952, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11102, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (55421, 55);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (55421, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (55421, 95);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14252, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14252, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (51535, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (51540, 53);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (54130, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5896, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (49549, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10572, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19972, 8);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5472, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5472, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45116, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19269, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18317, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18317, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22489, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22512, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6235, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6967, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11672, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19466, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (25198, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45127, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13387, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20412, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3605, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37083, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37083, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37083, 140);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37083, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1612, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1612, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26955, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (52046, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22461, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22461, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18644, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17739, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7772, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7772, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10485, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10485, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20092, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20092, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7631, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38975, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13460, 28);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18201, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45220, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (48783, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45140, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11313, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5570, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5570, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5570, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42834, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42834, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15543, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15543, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19814, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8456, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11680, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11680, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39458, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40495, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21266, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27407, 75);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27408, 75);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1839, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30738, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6263, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34799, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34799, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7926, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7926, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (61260, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4814, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (51199, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (51199, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (51199, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17164, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17164, 98);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2690, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31088, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16656, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16656, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2506, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24278, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (60069, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (60069, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (60069, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21763, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20362, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20362, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20362, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1019, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27569, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4002, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45099, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42999, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42999, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50114, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50114, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50114, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50114, 140);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50114, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10429, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11775, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14553, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14553, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21806, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21806, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (59797, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (60964, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11990, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14881, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4935, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23446, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30421, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7243, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7243, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13006, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50384, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50384, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (181, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4278, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7644, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11122, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29239, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29239, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13025, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11451, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15798, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15798, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10812, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24517, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44786, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18085, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19402, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34755, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34755, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10804, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10500, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29098, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15945, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15945, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15945, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15945, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (52045, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13172, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (63050, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (46742, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27942, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19864, 18);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19864, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19864, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9643, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6133, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6133, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6133, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (52271, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (52271, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17413, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3568, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10423, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8792, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15636, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15636, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15636, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22752, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27606, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27606, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9720, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9720, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9720, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (365, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26935, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24165, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24165, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (46844, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6431, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14485, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14485, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14485, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14485, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14485, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (494, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (494, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (494, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (494, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (494, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45027, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12155, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9957, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9957, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24032, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37661, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37661, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3273, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13034, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18461, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17088, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43715, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43715, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43715, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43715, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12245, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12245, 37);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12245, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12245, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (60077, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (62762, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2489, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17832, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22833, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11371, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11371, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11371, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11371, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11371, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29119, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41761, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1424, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1424, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1424, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34658, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31062, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22855, 37);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23227, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22891, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44712, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44712, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31063, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2215, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33471, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33472, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23660, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2416, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6347, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36918, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13567, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13567, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13567, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13230, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13230, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13230, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13230, 146);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13230, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34874, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (61259, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (61259, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5248, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5887, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20409, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11813, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11813, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11813, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11813, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23009, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23009, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (59733, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11299, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19931, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19931, 37);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19931, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31887, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45493, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19291, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19291, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45257, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5585, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38314, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2980, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2980, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2980, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2980, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45256, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5221, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11393, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11393, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (65078, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15860, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15860, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (758, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (758, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30464, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10568, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19907, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19907, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19907, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (46373, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (46373, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (871, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (871, 65);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3558, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9069, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26544, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (54369, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (54371, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (54370, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37025, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (62576, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13462, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5636, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5636, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32585, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32585, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42607, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9199, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50296, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50296, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50296, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50296, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50296, 63);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50296, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50296, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50296, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50296, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50296, 140);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50296, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9249, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9249, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9249, 52);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9249, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9249, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9249, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9249, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9249, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9249, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9249, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10820, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44580, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44580, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44580, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44580, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (53120, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18423, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (60317, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (60317, 27);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (60317, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31949, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31949, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31949, 65);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31949, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31949, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31949, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19953, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19953, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19953, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19953, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19953, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (962, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29093, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31925, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43820, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1416, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1416, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1416, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1416, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1416, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1416, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1416, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1416, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1416, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4384, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4384, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4384, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4384, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4384, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17525, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5544, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31291, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17434, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17434, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7086, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41747, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30860, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21288, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (62694, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30504, 118);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6800, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6800, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41753, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40322, 59);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9482, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9482, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5741, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5741, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5741, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5741, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (550, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (550, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (550, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18216, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (25408, 75);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15775, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15775, 5);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15775, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15775, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18723, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15754, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15754, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15754, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15754, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15754, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15754, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11735, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15632, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20348, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20348, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3779, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3779, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3779, 26);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3779, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3779, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14875, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14875, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10730, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23086, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23086, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (55332, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37643, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37643, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11132, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42337, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42337, 112);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35536, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35536, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35536, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35536, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35536, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16020, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16020, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16020, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16020, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12061, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41013, 31);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4987, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (543, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40340, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34456, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33221, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14643, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14643, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14703, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14703, 26);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14703, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14703, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (46822, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8375, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8375, 75);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8375, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (54094, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (52962, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17071, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17071, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17071, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17071, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17071, 125);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38398, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12817, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12817, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (786, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (786, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (786, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (786, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (786, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18088, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18088, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4629, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6465, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6465, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6465, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6465, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6465, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45928, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (53450, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (25815, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35169, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3460, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3460, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3460, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3460, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (320, 5);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (320, 8);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3304, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3304, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30505, 118);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6921, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6921, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6921, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12842, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12842, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12842, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12842, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43215, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43215, 98);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34498, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12398, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40539, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16889, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16889, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16889, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16889, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16889, 156);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8200, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8200, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1713, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1713, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16294, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33911, 26);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10266, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1752, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1752, 25);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1752, 59);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1752, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1752, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1752, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15102, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15102, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15102, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15102, 75);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15102, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10900, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8031, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11493, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30308, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21997, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1490, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30881, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36652, 52);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36652, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36652, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14583, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19043, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19043, 77);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14996, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14996, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14996, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14996, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14996, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30402, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29911, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13053, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13053, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13053, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13053, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13053, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13053, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13053, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13053, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13053, 146);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27781, 36);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27781, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19524, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9620, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7170, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14297, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11107, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15662, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3292, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34892, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29496, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29496, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9010, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9010, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4886, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4886, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22460, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22460, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14081, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14081, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19549, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19549, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19549, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19549, 140);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19549, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24704, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24704, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17836, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17836, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17836, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15291, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15291, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15291, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18087, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45177, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (878, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14399, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (59789, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35758, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8122, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12456, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12456, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12456, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12456, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (60479, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13299, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13299, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40893, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6727, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6727, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22264, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (62577, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32908, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32908, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32908, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5082, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11705, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40972, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14899, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4746, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4746, 112);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5020, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44710, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17921, 68);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3166, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10086, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43304, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1173, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4498, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4498, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23462, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19632, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15744, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17631, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17631, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2689, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10671, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11317, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16703, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16703, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16703, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16703, 102);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4257, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45176, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24657, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (46708, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2553, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (25071, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (25071, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15415, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28175, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3640, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3640, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3640, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22208, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12849, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14657, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14657, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14657, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47081, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8237, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9388, 77);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8987, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8987, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8987, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41345, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19069, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15660, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15660, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (54368, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13140, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1825, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7614, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4085, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22594, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2261, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19784, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39995, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15208, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14373, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14373, 140);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16143, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10331, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11571, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11571, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11571, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1479, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1590, 37);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1590, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4434, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4434, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7846, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18914, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12250, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38659, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38659, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38659, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3413, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43139, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4499, 37);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (721, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (721, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (721, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (721, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (721, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22445, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22445, 23);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22445, 37);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22445, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4937, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31976, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31976, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23554, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23554, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8586, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8586, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20011, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11872, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11872, 65);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27986, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10796, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10796, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12014, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4202, 37);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13363, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12119, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50304, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50304, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50304, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50304, 140);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50304, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8198, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10410, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5759, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22816, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45254, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14794, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13102, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5634, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (49308, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38960, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38960, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (48770, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (285, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (285, 37);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (285, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43478, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43478, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11925, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22465, 80);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22465, 81);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6708, 81);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8285, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8285, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8285, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8285, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30687, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42333, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13190, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (57751, 65);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29370, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29370, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29370, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (25377, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (25377, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1482, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18715, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18715, 37);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18904, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4338, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18707, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12277, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12277, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12277, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18830, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18830, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14404, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14404, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14404, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13073, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13073, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13073, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13073, 156);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14202, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14202, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14202, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34759, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12506, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6925, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14040, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14040, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50128, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50128, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50128, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50128, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50128, 63);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50128, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50128, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50128, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50128, 140);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50128, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8625, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8625, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4939, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4939, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27614, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29057, 37);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10911, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10911, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12541, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45260, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17595, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17595, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17595, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17595, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26946, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45336, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (46332, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34479, 77);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34479, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2724, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3386, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (60291, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2845, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41205, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (999, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27619, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17416, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17416, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9454, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4545, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5971, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12644, 25);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12644, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45318, 65);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10674, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10674, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10674, 25);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10674, 37);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10674, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10674, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10674, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10674, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10674, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10674, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10674, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10674, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10674, 146);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10674, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10674, 155);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10674, 157);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (25064, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8716, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24306, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24306, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24306, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24306, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35490, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12992, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44916, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34917, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22910, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20330, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20330, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20330, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20330, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1538, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12315, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (301, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (146, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12901, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12901, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14231, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18561, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22135, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22135, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22135, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22135, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22135, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22135, 103);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32780, 112);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19194, 5);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19194, 8);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11739, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9573, 39);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35799, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35799, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35799, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35799, 39);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (64727, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18634, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15726, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (57376, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18743, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18743, 26);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18743, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12368, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12368, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (58607, 166);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5656, 7);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (57536, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19944, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19944, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19944, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19944, 5);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19944, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19944, 8);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19944, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19944, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19944, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19944, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2099, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7073, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16592, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33748, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47884, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7326, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7326, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7326, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7326, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7326, 26);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7326, 28);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7326, 31);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7326, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7326, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7326, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7326, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7326, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14046, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33901, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8686, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33934, 5);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5150, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36029, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (64726, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12628, 29);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12628, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12628, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (51036, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (51042, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (51041, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19840, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11442, 5);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11442, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11442, 8);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11442, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11442, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11442, 117);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (59588, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19070, 29);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19070, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30319, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6075, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30322, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21941, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21943, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21943, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36095, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7005, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7005, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7005, 53);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7005, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7005, 109);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1164, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1164, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11980, 5);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11980, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11980, 8);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11980, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11980, 28);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (46015, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12980, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12980, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12980, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19853, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2757, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14532, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14532, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20021, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20021, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20021, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29066, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12256, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28173, 53);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28173, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28173, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28173, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5370, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32643, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3014, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22870, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43527, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (25118, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47480, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32293, 24);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9116, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9286, 5);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9286, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9286, 8);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9286, 29);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9286, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9286, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9286, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9286, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9286, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23341, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18998, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32810, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11101, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1455, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33856, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34393, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4847, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4847, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15482, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (59467, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (59467, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (59467, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12199, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13849, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15067, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13852, 26);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29193, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29193, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29193, 29);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29193, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16444, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16444, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16444, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (60973, 95);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (64757, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3442, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3442, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3442, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7235, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (49737, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20429, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37641, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33105, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3725, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3725, 5);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3725, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3725, 8);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3725, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3725, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38982, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38012, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32152, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41172, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9396, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35266, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10321, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10321, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10321, 30);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3703, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (62685, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (62685, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4490, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4490, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4490, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4490, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4490, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4490, 65);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4490, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4490, 109);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4490, 112);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15457, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15457, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15457, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15457, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15457, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15457, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15457, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15457, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15457, 91);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15457, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15457, 110);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15457, 150);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (82, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (82, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (82, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (82, 150);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1823, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1823, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1823, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1823, 110);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (48911, 8);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (402, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (402, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (402, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (402, 24);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31923, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31923, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31923, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12255, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12255, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12255, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (49705, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1432, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1432, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1432, 91);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10256, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (49824, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33087, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32773, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15974, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15974, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15974, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15974, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15994, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15994, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15994, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (62520, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37297, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7565, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7565, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7565, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7565, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7565, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7565, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7565, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7565, 24);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7565, 38);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7565, 58);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7565, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35622, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35622, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9799, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (63912, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20115, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20115, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32478, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16382, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16382, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16382, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16382, 136);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16382, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16382, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12955, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12955, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12955, 91);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12955, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10494, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10494, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11241, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35373, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7938, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7938, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7938, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3576, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3576, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50232, 150);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6036, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6036, 5);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6036, 8);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6036, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6036, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6036, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6036, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6036, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6036, 31);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6036, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6036, 55);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6036, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6036, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6036, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6036, 95);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6036, 109);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6036, 113);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6036, 114);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6036, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42561, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4771, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (56907, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (56907, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16877, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16877, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16877, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16877, 24);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12026, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12026, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12026, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12026, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12026, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12026, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12026, 24);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12026, 38);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12026, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15794, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15794, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15794, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15794, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15794, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15794, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15794, 24);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19746, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41204, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41204, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41204, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41204, 95);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41204, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10447, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10447, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10447, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10447, 24);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (728, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (728, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (728, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (910, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (910, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (910, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17895, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17895, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17895, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31522, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22143, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22143, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8926, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2257, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12353, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12353, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12353, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12353, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12353, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12353, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12353, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12353, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (59199, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (62160, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (62160, 24);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3842, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3842, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3842, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3842, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3842, 24);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3842, 70);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3842, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15544, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15544, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15544, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15544, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15544, 91);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15544, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15544, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10535, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10535, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10535, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10535, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10535, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10535, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (64265, 136);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32029, 8);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30325, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30325, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30325, 24);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35252, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1933, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1933, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1933, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1933, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1933, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27374, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7615, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7615, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7615, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7615, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7615, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16551, 6);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16551, 8);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16551, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (65184, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12084, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12084, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12084, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12084, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12084, 24);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12084, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17727, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17727, 109);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44069, 141);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9474, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9474, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9474, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9474, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9474, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9474, 58);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9474, 110);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9474, 150);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (56809, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5131, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5131, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5131, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5131, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5131, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5131, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13647, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44539, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44539, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44539, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44539, 109);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44539, 113);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44539, 114);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1751, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1751, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1751, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1751, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1751, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1751, 24);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16111, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12286, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12286, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12286, 95);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16047, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16047, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16047, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16047, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16047, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16047, 61);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16047, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16047, 110);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20170, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20170, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20170, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20170, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38654, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (64552, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38957, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10100, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10100, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10100, 24);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10100, 58);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2387, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2387, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8598, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8598, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1996, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1996, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1996, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1996, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1996, 24);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44411, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44411, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (195, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (195, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (195, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (195, 58);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44537, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44537, 109);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44537, 112);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44537, 113);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14586, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14586, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14586, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14586, 110);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14586, 150);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4049, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4049, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4049, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4049, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5111, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5111, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5111, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5111, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5111, 24);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14476, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14476, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14476, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14476, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14476, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14476, 38);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14476, 68);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14476, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14476, 109);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14476, 112);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14476, 113);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14476, 114);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14476, 128);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (57835, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (57835, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (57835, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9351, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9351, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43148, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43148, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43148, 61);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2021, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2021, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2021, 29);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2021, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2021, 92);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4167, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7807, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7807, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33579, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33468, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33461, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8354, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10944, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17132, 18);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17132, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17132, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13996, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13996, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13996, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (773, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19038, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13717, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13717, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2532, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (62799, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (46929, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14051, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41012, 75);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18804, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11172, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29970, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6424, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32691, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8605, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8605, 37);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8605, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20245, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20245, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20245, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47921, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12057, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34365, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35190, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35191, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3457, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3457, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3457, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13218, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13218, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13218, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7901, 18);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7901, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7901, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7901, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7901, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7901, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (46757, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26028, 80);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22913, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19049, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19049, 40);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16140, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16140, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16140, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (840, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (840, 25);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (840, 59);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (840, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (840, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (840, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (840, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (840, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (840, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (840, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (840, 145);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (840, 146);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (840, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (840, 157);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18368, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16448, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5089, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5089, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29084, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21812, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21812, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45201, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13228, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18109, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45261, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9605, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45159, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2183, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17886, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (48910, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (48910, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (48910, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (48910, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22760, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3405, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28346, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15004, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34158, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5123, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37551, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10548, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40214, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40224, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8071, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8071, 37);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8071, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8071, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35168, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41180, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41180, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47412, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6529, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18386, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6220, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45446, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45446, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11826, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17368, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17368, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12110, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12110, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4603, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24373, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24373, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24373, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24373, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45319, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45319, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10417, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42022, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44709, 42);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30498, 118);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (49735, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30684, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30684, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6243, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20240, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20240, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12857, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12857, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12857, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12857, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17468, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (526, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3615, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23870, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23870, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23870, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (61273, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (752, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (752, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18807, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18807, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11823, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4936, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11866, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11866, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20342, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20342, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2861, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2861, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2861, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21744, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3259, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3259, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6365, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26439, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28967, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28967, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28967, 36);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28967, 52);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8335, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (64629, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (49625, 36);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22162, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17969, 36);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21108, 18);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17105, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17105, 36);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20614, 18);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2144, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27915, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12898, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10479, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12551, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21814, 18);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21814, 52);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38093, 124);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7109, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4205, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27496, 52);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22986, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30286, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3469, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9751, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12167, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12167, 20);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12167, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12167, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (25015, 105);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20615, 52);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (62570, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10585, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10585, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10585, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10585, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (25546, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (25546, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2271, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22319, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22319, 18);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22319, 52);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22319, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22316, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22316, 36);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22316, 52);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22316, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22316, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12446, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16094, 36);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16094, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39957, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12739, 36);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12739, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1052, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1052, 36);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5845, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5845, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5845, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22660, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23222, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26893, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21244, 52);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21456, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21387, 52);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (793, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24256, 36);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12731, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12731, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1901, 20);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1901, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18048, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7576, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7576, 18);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7576, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7576, 20);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7576, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7576, 36);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7576, 52);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7576, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (25170, 52);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50136, 3);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50136, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50136, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50136, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50136, 63);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50136, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50136, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50136, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50136, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50136, 140);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50136, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22554, 18);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22536, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22536, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22538, 18);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22538, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12352, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8726, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8726, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8726, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22777, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11279, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20320, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32746, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32746, 140);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2992, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9084, 18);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9084, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9084, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13691, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22176, 52);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7781, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7781, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7781, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21295, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21955, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (25911, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (25911, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21444, 52);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23342, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21990, 18);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (62581, 52);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (62578, 36);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24381, 52);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (25417, 52);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30849, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18162, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18162, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18162, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12700, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12700, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19150, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23811, 18);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23811, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23811, 36);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23811, 52);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23811, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21331, 20);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23662, 52);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8983, 140);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16743, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26432, 20);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21539, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24086, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24086, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15989, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15989, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6175, 52);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15699, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9916, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36841, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27493, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27493, 52);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18255, 18);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18255, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18255, 20);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18255, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18255, 36);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27900, 52);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4133, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (51, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9201, 20);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9201, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35817, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44469, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36576, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36576, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36576, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32422, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32422, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32422, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33074, 20);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33074, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33074, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33074, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33074, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36678, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36678, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36866, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30144, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30144, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30144, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30144, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33394, 20);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33394, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33394, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33394, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33394, 145);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33394, 146);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33394, 157);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33128, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33128, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31525, 20);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31525, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31525, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40722, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40722, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40722, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40722, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42758, 18);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42758, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42758, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42758, 129);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42758, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34766, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34766, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34073, 20);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34073, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34219, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34219, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34219, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32831, 20);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32831, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32831, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32831, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32696, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32696, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32031, 20);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32031, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32031, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (58727, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (58727, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (58727, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (58727, 140);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37219, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37518, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37519, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (55248, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (55248, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (55248, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (55248, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (55248, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47276, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23397, 36);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39618, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39618, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39618, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29904, 36);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44178, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37074, 106);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37074, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26934, 36);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26934, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33226, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30425, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30425, 20);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30425, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30425, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30425, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30425, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35802, 106);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41602, 140);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (49927, 140);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (54161, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38074, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38074, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31578, 140);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30913, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30913, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30913, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30913, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42201, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42201, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42201, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35805, 20);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35805, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35805, 36);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35805, 52);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47559, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36778, 20);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36778, 36);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36778, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36778, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36778, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36778, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36122, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44575, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33892, 52);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33892, 106);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34709, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34709, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33372, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33372, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35521, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35521, 20);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35521, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35521, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35521, 117);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36024, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36024, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32248, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32248, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35872, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35872, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35546, 140);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47406, 52);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35350, 36);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34256, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34256, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34256, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34256, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33731, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (61570, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (61570, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (61570, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (61570, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38063, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38063, 36);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35489, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40823, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40823, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28178, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28178, 20);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28178, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28178, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28178, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43646, 140);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33065, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (46324, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (46324, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37677, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37677, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29196, 18);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29196, 20);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29196, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29196, 36);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29196, 52);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29196, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29196, 117);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36669, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34289, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33691, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33691, 20);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33691, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33691, 36);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33691, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33691, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33691, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33691, 124);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37896, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37896, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37896, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37896, 124);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47055, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36736, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36736, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36288, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36288, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35773, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35773, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35773, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34383, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34383, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38243, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38243, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38243, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36750, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40683, 18);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40683, 129);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40683, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36242, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36242, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36242, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45614, 18);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31771, 117);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31771, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38279, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38279, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38279, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34288, 36);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32594, 20);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32594, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32594, 36);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32594, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32594, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34497, 18);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34497, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40627, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31531, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (60074, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36424, 129);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36424, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34887, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34741, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34741, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34741, 146);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (63140, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35683, 20);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35683, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35683, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35683, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32453, 124);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35786, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42483, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42483, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37783, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37783, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37783, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34419, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34419, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44049, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44049, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44049, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44049, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44049, 154);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44702, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41470, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41470, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43522, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43522, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43522, 129);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43522, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43522, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44762, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44762, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44762, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44461, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44461, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (53205, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41938, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41938, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41938, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41938, 145);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41938, 146);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41938, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43733, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43733, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43586, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44593, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44593, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44593, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44593, 146);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44692, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (62111, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (62111, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (62111, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42693, 145);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39282, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39282, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39282, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39282, 146);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45169, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45169, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45169, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42743, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (65327, 154);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42576, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42576, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42576, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42576, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42576, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50342, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47042, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47042, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47042, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47042, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47042, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47042, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47042, 124);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47042, 145);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47042, 146);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (46901, 52);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (46901, 117);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43248, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43248, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43248, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43248, 154);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40944, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40944, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (48355, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (48355, 129);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (48355, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35545, 20);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35545, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35545, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (48139, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (48139, 129);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (48139, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (46958, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43915, 117);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43915, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47740, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43238, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43238, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38557, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41146, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41146, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41146, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47983, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47983, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47983, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43937, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44338, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44338, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44338, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (49078, 117);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (49078, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42545, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44637, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44637, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44637, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44637, 117);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44637, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44637, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44637, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (52580, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (52580, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (52580, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41488, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41488, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41488, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43042, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43042, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43042, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43042, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44015, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44015, 145);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45519, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45519, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45519, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45519, 154);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38481, 20);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38481, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41083, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44421, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44421, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44421, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40252, 18);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40252, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44432, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44432, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44432, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44432, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42750, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42750, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42750, 140);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42750, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40128, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40128, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45497, 18);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45497, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43397, 129);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43397, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43240, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43240, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44033, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44033, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44033, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44031, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44031, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44031, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38615, 20);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (61506, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (60445, 18);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (60445, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37482, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37482, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43325, 117);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45456, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44136, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44136, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44136, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43719, 18);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36280, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39810, 18);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39810, 129);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39810, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40922, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40922, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40922, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38043, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38043, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43362, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43362, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43362, 140);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43362, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44625, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44625, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38327, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38327, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38327, 145);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38327, 146);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38327, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40835, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40835, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40835, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45323, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45323, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45323, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45323, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45323, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45323, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45323, 154);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39193, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39193, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36765, 20);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36765, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36765, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36765, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36765, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36765, 145);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36765, 146);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47748, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47748, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47748, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47748, 140);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47748, 154);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43732, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43732, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43732, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43732, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43732, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41663, 76);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44627, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44627, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44627, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44627, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44627, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44627, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44627, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44627, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (55669, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (55669, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (55669, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40586, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40586, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43095, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43095, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43095, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33118, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33118, 20);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33118, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33118, 86);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33118, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33118, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47791, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47791, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47791, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47791, 154);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (62962, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44810, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44810, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44810, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (44810, 140);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37673, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37673, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37673, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37673, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (37673, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50541, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50541, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50541, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41126, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41126, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41126, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42595, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42595, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39798, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39853, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39853, 129);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39853, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36961, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36961, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36961, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42623, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45059, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43026, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43026, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43026, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43026, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43026, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43026, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43026, 154);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41368, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41368, 124);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31179, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28232, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28232, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28232, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1764, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35072, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35072, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35072, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26967, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26967, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26967, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (35806, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28449, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24706, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24706, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27283, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (65463, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16375, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6523, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9812, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4715, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4715, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10617, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6929, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1007, 23);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36332, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (53820, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (53820, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5395, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (48287, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17061, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7910, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7910, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19057, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12108, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15987, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15987, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15987, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15987, 23);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15987, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15987, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15879, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15879, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15879, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (52760, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9409, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9558, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (65108, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6750, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14463, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2530, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17948, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17765, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13480, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9034, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9034, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4660, 23);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6207, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14, 23);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5342, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12429, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12429, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8730, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7099, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7099, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7099, 23);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7099, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (54267, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10717, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10717, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40748, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24180, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12876, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17438, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17438, 78);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19442, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5305, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (934, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23056, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23060, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23060, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4522, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4522, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15051, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15051, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4857, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4857, 23);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4857, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4857, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31527, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19641, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2731, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2731, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39923, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22574, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (53812, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (53812, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (53812, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (53813, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (53813, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (53813, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (53815, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (53815, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (53815, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19775, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2524, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2524, 23);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31426, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (84, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9106, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21654, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21654, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21654, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2018, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2018, 25);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2018, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2018, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2018, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45017, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10323, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10323, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10323, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15473, 23);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15473, 36);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26711, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19175, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19175, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2637, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36264, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36264, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36264, 23);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36264, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4554, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17248, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11396, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3318, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3318, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45984, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28112, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (25393, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15659, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2571, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2571, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2571, 23);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2571, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14874, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39540, 37);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39539, 37);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33169, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20027, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34536, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18355, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18355, 23);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18355, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2078, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22717, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22717, 37);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22717, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (31241, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (43557, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5017, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6822, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22700, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (54374, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11266, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32948, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12658, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6479, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6479, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19510, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19510, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4859, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6258, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6258, 23);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6258, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6258, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8683, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26947, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (30672, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (46270, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (46270, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (46270, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (46270, 124);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (46270, 152);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (46270, 154);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5904, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42973, 37);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17230, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (64681, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (64681, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4188, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1610, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39726, 18);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39726, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39726, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39726, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39726, 129);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39726, 143);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24947, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24947, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1456, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1456, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18899, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5748, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47093, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10990, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39719, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39719, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39719, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39719, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39719, 157);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (54596, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7708, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1773, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (46011, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (57741, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11422, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15623, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (29924, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6680, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2806, 23);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2806, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18444, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18390, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4277, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4277, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8262, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2884, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15128, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7482, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7313, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21390, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36328, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7723, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17036, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17036, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17036, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17036, 35);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17036, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17036, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17036, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17036, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14159, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13586, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26415, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26415, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (53850, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4177, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (65293, 140);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (25702, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (25705, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (25703, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (25704, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12194, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14054, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19133, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19133, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1647, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9037, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5716, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (57139, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15541, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15541, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34475, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (62797, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (53822, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16901, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39956, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8370, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8370, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8370, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8370, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8370, 23);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8370, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8370, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8370, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24351, 18);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24351, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24351, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4228, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19316, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19316, 37);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8349, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8349, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (980, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34667, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34667, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34667, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34667, 133);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3004, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16609, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10692, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10692, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (634, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14702, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (32329, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14109, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14109, 23);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16036, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16036, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16036, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23887, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23887, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23887, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23888, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23888, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45031, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45030, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45029, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9693, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7004, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7004, 23);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7004, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7004, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7004, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (63059, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36351, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9622, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10258, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10258, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12054, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (45871, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24524, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22327, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22327, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22328, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22328, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47729, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24533, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6375, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14169, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14169, 72);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14169, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14169, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14169, 140);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36482, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (57, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22871, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22871, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22871, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22871, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22871, 121);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36486, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40660, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11902, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18623, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18623, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42259, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15165, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21473, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47306, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (24082, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19353, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7118, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27685, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8018, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17818, 54);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17818, 65);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36429, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34829, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36442, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13321, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33908, 37);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33469, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18180, 37);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9113, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10839, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10839, 37);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34792, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14768, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15017, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1082, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36553, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10686, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4283, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20484, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20484, 23);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20484, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (60926, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2322, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34831, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (50594, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6895, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (6895, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4870, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8492, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8492, 23);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8492, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8492, 37);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8492, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8492, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22081, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22081, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18836, 18);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18836, 72);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18836, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18836, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18836, 116);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18836, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14334, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10068, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10068, 23);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13197, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13197, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47831, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10233, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10233, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19971, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19116, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19116, 23);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19116, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19116, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11998, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11998, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11998, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17370, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17370, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17370, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27630, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27630, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23247, 37);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2887, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36567, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (165, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (165, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (825, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (825, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (48309, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (48309, 88);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33985, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36577, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8396, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8396, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1758, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20397, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10157, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10157, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (54183, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20183, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12795, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1271, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18759, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1704, 40);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5550, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (21209, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19695, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19695, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19695, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19695, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15008, 37);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15008, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3537, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3537, 37);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3537, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10533, 43);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (7070, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18640, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22290, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22783, 37);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (22783, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (9413, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (64271, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (64271, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (64271, 57);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (64271, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (54032, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (68, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (68, 23);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (68, 32);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (57299, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1346, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18195, 37);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12907, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34865, 19);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34865, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (49622, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39603, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41181, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (41181, 91);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42255, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27688, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11901, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11901, 55);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11901, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11901, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11901, 95);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11901, 108);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39522, 109);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39522, 115);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23511, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23511, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27886, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27886, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27886, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5271, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5271, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5271, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (5271, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11460, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11460, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (369, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (369, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (369, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17232, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17232, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17232, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17232, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17232, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17232, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39610, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27962, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17347, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (17347, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16939, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16939, 4);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16939, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16939, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16939, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16939, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16939, 22);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16939, 39);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16939, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13735, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (482, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (482, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (482, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (482, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34868, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34868, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34868, 92);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34868, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34868, 95);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34868, 96);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34868, 109);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34868, 112);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34868, 114);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34868, 123);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34868, 157);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20347, 55);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20347, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1977, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4678, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4678, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4678, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4678, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11679, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3793, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3793, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3793, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3793, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3793, 24);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3793, 110);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3560, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38599, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38599, 109);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38599, 113);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38599, 114);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39384, 91);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39778, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (18523, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16291, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16291, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16291, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16291, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16291, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16291, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16291, 24);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16291, 110);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34666, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39606, 91);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33070, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28115, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28115, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28115, 150);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2057, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2057, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2057, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2057, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2057, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2057, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2057, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39672, 91);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (52756, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (52756, 146);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14570, 91);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15042, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15042, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15042, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15042, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (15042, 58);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42313, 91);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (40834, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10130, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36216, 91);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16161, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16161, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16161, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16161, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16161, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16161, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16161, 24);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16161, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23733, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23733, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23733, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20383, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20383, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13779, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13779, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13779, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13779, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13779, 110);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (64605, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (12779, 8);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39605, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11303, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11303, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11303, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11303, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2028, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2028, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2028, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (36501, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (11615, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (48839, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10041, 9);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10041, 53);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10041, 59);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10041, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10041, 109);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10041, 112);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34183, 83);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10868, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10868, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10868, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10868, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10868, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10868, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10868, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10868, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10868, 110);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (57842, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8548, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (62679, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (62679, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (62679, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16011, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (16011, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10292, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10292, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10292, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10292, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10292, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10292, 24);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (10292, 110);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4068, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4068, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4990, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4990, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4990, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4990, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (4941, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (23750, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28349, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28349, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28349, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28349, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28349, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (38103, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (64406, 150);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14678, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14678, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14678, 17);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14678, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (14678, 108);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13960, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13960, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13960, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13960, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13960, 55);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13960, 84);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13960, 87);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13960, 138);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13960, 139);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (13960, 146);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (1151, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (63900, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (63901, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (63902, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39246, 8);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39246, 141);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42270, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (33521, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20380, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2344, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2344, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2344, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2344, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2344, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26010, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26010, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26010, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26010, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26010, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26010, 58);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (26010, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27384, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27384, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27384, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20013, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20013, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (20013, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (34663, 91);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39796, 8);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (62524, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (62524, 109);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (62524, 113);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28445, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (28445, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2037, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2037, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2037, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2037, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2037, 21);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (2037, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42253, 91);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (42253, 112);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (39060, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27523, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (27616, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8231, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8231, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47370, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47370, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47370, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (47370, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19611, 11);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19611, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19611, 15);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (19611, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3789, 1);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3789, 12);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3789, 13);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3789, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (3789, 94);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (48840, 16);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8128, 14);
	
INSERT INTO p_TIENE_j (id_juego, id_plataforma) VALUES (8128, 16);
	