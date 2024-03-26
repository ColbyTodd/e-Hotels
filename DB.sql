-- ----------------------------
-- Table structure for hotel_chain
-- ----------------------------
DROP TABLE IF EXISTS hotel_chain CASCADE;
CREATE TABLE hotel_chain (
  id serial PRIMARY KEY,
  name varchar(100) NOT NULL,
  number_of_hotels int NOT NULL CHECK (number_of_hotels > 0),
  address_of_central_offices varchar(100) NOT NULL
);

-- ----------------------------
-- Records of hotel_chain
-- ----------------------------
insert into hotel_chain (id, name, number_of_hotels, address_of_central_offices) values (1, 'Bogisich LLC', 8, '81396 Kings Crossing');
insert into hotel_chain (id, name, number_of_hotels, address_of_central_offices) values (2, 'Kunde LLC', 8, '458 Clove Center');
insert into hotel_chain (id, name, number_of_hotels, address_of_central_offices) values (3, 'Stamm, Bins and Hirthe', 8, '92044 Village Alley');
insert into hotel_chain (id, name, number_of_hotels, address_of_central_offices) values (4, 'Vandervort, Leannon and Koelpin', 8, '5 Rowland Court');
insert into hotel_chain (id, name, number_of_hotels, address_of_central_offices) values (5, 'Price, Schulist and Gusikowski', 8, '033 Kropf Circle');

-- ----------------------------
-- Table structure for hotel_chain_email
-- ----------------------------
DROP TABLE IF EXISTS hotel_chain_email CASCADE;
CREATE TABLE hotel_chain_email (
  id serial PRIMARY KEY,
  hotel_chain_id int NOT NULL,
  email varchar(100) NOT NULL CHECK (email LIKE '_%@_%._%'),
  FOREIGN KEY (hotel_chain_id) REFERENCES hotel_chain(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- ----------------------------
-- Records of hotel_chain_email
-- ----------------------------
insert into hotel_chain_email (id, hotel_chain_id, email) values (1, 1, 'vjinkin0@biblegateway.com');
insert into hotel_chain_email (id, hotel_chain_id, email) values (2, 4, 'mpartner1@gizmodo.com');
insert into hotel_chain_email (id, hotel_chain_id, email) values (3, 3, 'bgrealey2@mlb.com');
insert into hotel_chain_email (id, hotel_chain_id, email) values (4, 2, 'qbehrendsen3@goo.gl');
insert into hotel_chain_email (id, hotel_chain_id, email) values (5, 5, 'jkorneluk4@cbc.ca');
insert into hotel_chain_email (id, hotel_chain_id, email) values (6, 2, 'sphilippault5@homestead.com');
insert into hotel_chain_email (id, hotel_chain_id, email) values (7, 1, 'ggreenhow6@bizjournals.com');
insert into hotel_chain_email (id, hotel_chain_id, email) values (8, 4, 'bclayfield7@cam.ac.uk');
insert into hotel_chain_email (id, hotel_chain_id, email) values (9, 3, 'abevans8@bloglovin.com');
insert into hotel_chain_email (id, hotel_chain_id, email) values (10, 3, 'nwardrope9@telegraph.co.uk');
insert into hotel_chain_email (id, hotel_chain_id, email) values (11, 5, 'cwardingtona@github.io');
insert into hotel_chain_email (id, hotel_chain_id, email) values (12, 2, 'jmcmeekinb@mlb.com');
insert into hotel_chain_email (id, hotel_chain_id, email) values (13, 5, 'bgippsc@ibm.com');
insert into hotel_chain_email (id, hotel_chain_id, email) values (14, 2, 'mbellinod@squidoo.com');
insert into hotel_chain_email (id, hotel_chain_id, email) values (15, 5, 'kmaylotte@adobe.com');
insert into hotel_chain_email (id, hotel_chain_id, email) values (16, 3, 'ccarressf@booking.com');
insert into hotel_chain_email (id, hotel_chain_id, email) values (17, 5, 'dcamillettig@odnoklassniki.ru');
insert into hotel_chain_email (id, hotel_chain_id, email) values (18, 3, 'amckimmh@elegantthemes.com');
insert into hotel_chain_email (id, hotel_chain_id, email) values (19, 5, 'aclemoni@seesaa.net');
insert into hotel_chain_email (id, hotel_chain_id, email) values (20, 1, 'mprattenj@linkedin.com');
insert into hotel_chain_email (id, hotel_chain_id, email) values (21, 4, 'czimekk@fda.gov');
insert into hotel_chain_email (id, hotel_chain_id, email) values (22, 4, 'bclixbyl@geocities.jp');
insert into hotel_chain_email (id, hotel_chain_id, email) values (23, 4, 'rhuguevillem@adobe.com');
insert into hotel_chain_email (id, hotel_chain_id, email) values (24, 4, 'arustmann@google.fr');
insert into hotel_chain_email (id, hotel_chain_id, email) values (25, 2, 'btalboyo@aboutads.info');

-- ----------------------------
-- Table structure for hotel_chain_phone
-- ----------------------------
DROP TABLE IF EXISTS hotel_chain_phone CASCADE;
CREATE TABLE hotel_chain_phone (
  id serial PRIMARY KEY,
  hotel_chain_id int NOT NULL,
  phone varchar(10) NOT NULL CHECK (phone SIMILAR TO '[0-9]{10}'),
  FOREIGN KEY (hotel_chain_id) REFERENCES hotel_chain(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- ----------------------------
-- Records of hotel_chain_phone
-- ----------------------------
insert into hotel_chain_phone (id, hotel_chain_id, phone) values (1, 3, '5507622114');
insert into hotel_chain_phone (id, hotel_chain_id, phone) values (2, 3, '2789493898');
insert into hotel_chain_phone (id, hotel_chain_id, phone) values (3, 2, '9799755046');
insert into hotel_chain_phone (id, hotel_chain_id, phone) values (4, 4, '6496654195');
insert into hotel_chain_phone (id, hotel_chain_id, phone) values (5, 3, '7041348608');
insert into hotel_chain_phone (id, hotel_chain_id, phone) values (6, 4, '4958105477');
insert into hotel_chain_phone (id, hotel_chain_id, phone) values (7, 5, '6558881644');
insert into hotel_chain_phone (id, hotel_chain_id, phone) values (8, 5, '5122829480');
insert into hotel_chain_phone (id, hotel_chain_id, phone) values (9, 1, '2136884987');
insert into hotel_chain_phone (id, hotel_chain_id, phone) values (10, 3, '7758524832');
insert into hotel_chain_phone (id, hotel_chain_id, phone) values (11, 3, '5778543906');
insert into hotel_chain_phone (id, hotel_chain_id, phone) values (12, 5, '6216315936');
insert into hotel_chain_phone (id, hotel_chain_id, phone) values (13, 3, '6802413863');
insert into hotel_chain_phone (id, hotel_chain_id, phone) values (14, 5, '4428300685');
insert into hotel_chain_phone (id, hotel_chain_id, phone) values (15, 5, '4019511032');
insert into hotel_chain_phone (id, hotel_chain_id, phone) values (16, 2, '4619312404');
insert into hotel_chain_phone (id, hotel_chain_id, phone) values (17, 5, '9062049990');
insert into hotel_chain_phone (id, hotel_chain_id, phone) values (18, 1, '9344636136');
insert into hotel_chain_phone (id, hotel_chain_id, phone) values (19, 2, '7315455124');
insert into hotel_chain_phone (id, hotel_chain_id, phone) values (20, 4, '3024016191');

-- ----------------------------
-- Table structure for hotel
-- ----------------------------
DROP TABLE IF EXISTS hotel CASCADE;
CREATE TABLE IF NOT EXISTS hotel (
  id serial UNIQUE,
  hotel_chain_id int NOT NULL REFERENCES hotel_chain(id) ON DELETE CASCADE ON UPDATE CASCADE,
  name varchar(100) NOT NULL,
  category int NOT NULL CHECK (category > 0 and category <= 5),
  number_of_rooms int NOT NULL CHECK (number_of_rooms > 0),
  address varchar(100) NOT NULL,
  email varchar(100) NOT NULL CHECK (email LIKE '_%@_%._%'),
  phone varchar(10) NOT NULL CHECK (phone SIMILAR TO '[0-9]{10}'),
  city varchar(100) NOT NULL,
  PRIMARY KEY (id, hotel_chain_id)
);

-- ----------------------------
-- Records of hotel
-- ----------------------------
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (1, 1, 'Ventosanzap', 4, 5, '37638 Blackbird Road', 'jsilcocks0@telegraph.co.uk', '6562220132', 'Krasnogorskoye');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (2, 2, 'Latlux', 5, 5, '5 Fremont Way', 'pfenny1@un.org', '1833879867', 'Tenri');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (3, 3, 'Vagram', 2, 5, '3 Trailsway Lane', 'droycraft2@w3.org', '7462380664', 'Cantao-an');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (4, 4, 'Pannier', 5, 5, '105 Manufacturers Hill', 'sbassano3@yolasite.com', '1117262096', 'San Sebastian');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (5, 5, 'Duobam', 5, 5, '75933 Troy Circle', 'slarwell4@paginegialle.it', '9576077471', 'San Sebastian');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (6, 1, 'Sub-Ex', 3, 5, '686 International Center', 'mklebes5@hp.com', '6557985233', 'San Sebastian');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (7, 2, 'Fix San', 1, 5, '87 Coolidge Plaza', 'vfalconbridge6@squidoo.com', '7131346784', 'San Sebastian');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (8, 3, 'Otcom', 1, 5, '713 Bluejay Place', 'dbolingbroke7@statcounter.com', '2791250933', 'San Sebastian');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (9, 4, 'Fintone', 2, 5, '3 Fairview Road', 'kfaltin8@sitemeter.com', '6148051352', 'Guatire');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (10, 5, 'Bamity', 4, 5, '47 Gateway Crossing', 'abould9@biglobe.ne.jp', '9606324674', 'Kalian');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (11, 1, 'Lotlux', 5, 5, '36613 Mcbride Point', 'nfeldmessera@plala.or.jp', '7955428805', 'Ágios Efstrátios');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (12, 2, 'Voltsillam', 1, 5, '67337 Butterfield Lane', 'tstronoughb@discovery.com', '5344877612', 'Jiaocheng');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (13, 3, 'Tempsoft', 5, 5, '0625 Anhalt Way', 'weriec@intel.com', '9051331235', 'Bromma');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (14, 4, 'Zoolab', 1, 5, '6 Westport Lane', 'kmacgillacolmd@nsw.gov.au', '3828876801', 'Yinjiang');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (15, 5, 'Lotstring', 2, 5, '8950 Ruskin Alley', 'msandercocke@hp.com', '1337461326', 'Winschoten');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (16, 1, 'Subin', 4, 5, '0475 Hudson Avenue', 'svinerf@slashdot.org', '5067220877', 'Kafr Şaqr');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (17, 2, 'Y-find', 2, 5, '58 Stephen Plaza', 'msilverwoodg@parallels.com', '6042184897', 'Jibu Hulangtu');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (18, 3, 'Keylex', 5, 5, '1 Rutledge Plaza', 'awestrawh@vkontakte.ru', '5315321529', 'Semampir');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (19, 4, 'Stim', 1, 5, '7 Summerview Place', 'ccrystali@hhs.gov', '9543254057', 'Itambacuri');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (20, 5, 'Tresom', 5, 5, '45 Gina Drive', 'dhindgej@sakura.ne.jp', '8933699187', 'Krasnoarmiys’k');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (21, 1, 'Y-find', 2, 5, '80914 Eagan Park', 'ctortisk@over-blog.com', '1536917463', 'Zhuping');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (22, 2, 'Bigtax', 3, 5, '99906 Eagle Crest Trail', 'cgonthierl@youtube.com', '3686476178', 'Oughterard');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (23, 3, 'Subin', 1, 5, '57648 Hanson Lane', 'akiffem@spotify.com', '5885719363', 'Akarakar');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (24, 4, 'Greenlam', 1, 5, '7 Anderson Lane', 'amedlinn@cnn.com', '5176329706', 'Wysoka');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (25, 5, 'Zamit', 1, 5, '585 Dunning Avenue', 'vdemangeoto@bizjournals.com', '6616387999', 'Berlin');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (26, 1, 'Bytecard', 2, 5, '9 Kennedy Crossing', 'jkeayp@engadget.com', '9678497950', 'Oster');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (27, 2, 'Tres-Zap', 3, 5, '25092 Oneill Circle', 'mbothenq@webs.com', '3024680230', 'Heping');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (28, 3, 'Daltfresh', 3, 5, '23 Kensington Crossing', 'hmorecomber@uol.com.br', '7896099342', 'Tiandu');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (29, 4, 'Alpha', 4, 5, '82 Roth Hill', 'tsollys@themeforest.net', '1581910215', 'Quintã');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (30, 5, 'Duobam', 4, 5, '54852 Crescent Oaks Trail', 'gwreyt@blinklist.com', '1325285615', 'Bezerros');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (31, 1, 'Solarbreeze', 5, 5, '117 Union Circle', 'cmongeotu@telegraph.co.uk', '4515888470', 'Darovskoy');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (32, 2, 'Vagram', 5, 5, '33870 Caliangt Hill', 'baddisonv@nature.com', '9712360709', 'Nantes');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (33, 3, 'Voyatouch', 4, 5, '75145 John Wall Terrace', 'asyvretw@bravesites.com', '4396592435', 'Prámanta');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (34, 4, 'Flexidy', 3, 5, '179 Chive Crossing', 'rpauleyx@cyberchimps.com', '3784875876', 'Kigali');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (35, 5, 'Zathin', 1, 5, '28415 Burning Wood Street', 'aedwardy@whitehouse.gov', '1273347175', 'Xindu');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (36, 1, 'Hatity', 2, 5, '63 Autumn Leaf Drive', 'ucaldowz@reuters.com', '2041249307', 'Kilingi-Nõmme');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (37, 2, 'Redhold', 3, 5, '9 Westend Plaza', 'icroke10@unesco.org', '9078995256', 'Anchorage');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (38, 3, 'Flexidy', 1, 5, '7661 Pawling Trail', 'tdeaguirre11@boston.com', '2248848639', 'Qiaojia');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (39, 4, 'Cardguard', 3, 5, '83 Tony Place', 'atwell12@cnbc.com', '7708217514', 'Chambellan');
insert into hotel (id, hotel_chain_id, name, category, number_of_rooms, address, email, phone, city) values (40, 5, 'Daltfresh', 3, 5, '24 Sommers Street', 'wcranch13@ovh.net', '5321267347', 'Zagoryanskiy');

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS room CASCADE;
CREATE TABLE room (
    id serial UNIQUE,
    hotel_id int NOT NULL REFERENCES hotel(id) ON DELETE CASCADE ON UPDATE CASCADE,
    hotel_chain_id int NOT NULL REFERENCES hotel_chain(id) ON DELETE CASCADE ON UPDATE CASCADE,
    price int NOT NULL CHECK (price > 0),
    amenities varchar(100),
    capacity int NOT NULL CHECK (capacity > 0),
    room_view varchar(8) CHECK (room_view = 'sea' OR room_view = 'mountain'),
    extendable boolean NOT NULL,
    problems boolean NOT NULL,
    status boolean NOT NULL,
    PRIMARY KEY (id, hotel_id, hotel_chain_id)
);

-- ----------------------------
-- Records of room
-- ----------------------------
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (1, 1, 1, 137.63, null, 3, null, false, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (2, 2, 2, 849.78, null, 5, 'mountain', false, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (3, 3, 3, 757.41, 'toaster', 5, null, false, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (4, 4, 4, 720.83, 'parking', 2, null, true, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (5, 5, 5, 541.81, 'breakfast', 8, 'sea', true, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (6, 6, 1, 792.83, 'toaster', 8, 'sea', true, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (7, 7, 2, 479.51, 'hot tub', 7, 'mountain', false, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (8, 8, 3, 131.71, 'toaster', 6, 'mountain', true, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (9, 9, 4, 776.39, null, 1, null, false, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (10, 10, 5, 232.36, 'kitchen', 5, 'sea', false, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (11, 11, 1, 541.9, 'parking', 8, 'mountain', false, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (12, 12, 2, 157.61, 'toaster', 1, 'sea', true, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (13, 13, 3, 608.3, 'parking', 1, 'mountain', true, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (14, 14, 4, 441.35, 'parking', 9, null, false, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (15, 15, 5, 371.72, null, 2, 'sea', true, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (16, 16, 1, 646.93, 'toiletries', 6, 'sea', false, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (17, 17, 2, 602.5, 'toiletries', 3, 'mountain', true, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (18, 18, 3, 928.79, 'kitchen', 7, null, true, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (19, 19, 4, 430.47, 'hot tub', 4, null, false, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (20, 20, 5, 770.64, 'toiletries', 4, null, true, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (21, 21, 1, 629.78, 'breakfast', 2, 'mountain', false, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (22, 22, 2, 811.34, 'kitchen', 2, 'mountain', true, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (23, 23, 3, 155.28, 'hot tub', 6, 'mountain', true, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (24, 24, 4, 795.61, 'parking', 8, 'mountain', true, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (25, 25, 5, 775.64, 'toiletries', 8, null, false, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (26, 26, 1, 153.03, 'toaster', 9, null, true, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (27, 27, 2, 853.49, 'kitchen', 5, 'mountain', false, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (28, 28, 3, 210.58, 'parking', 9, 'sea', true, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (29, 29, 4, 436.14, 'toiletries', 3, null, true, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (30, 30, 5, 100.86, 'breakfast', 5, 'sea', true, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (31, 31, 1, 608.66, 'parking', 5, 'mountain', false, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (32, 32, 2, 720.9, 'kitchen', 5, null, true, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (33, 33, 3, 782.51, 'toiletries', 9, null, false, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (34, 34, 4, 443.98, 'toaster', 10, null, false, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (35, 35, 5, 752.4, 'hot tub', 3, null, true, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (36, 36, 1, 255.23, 'hot tub', 8, null, false, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (37, 37, 2, 403.25, 'kitchen', 8, null, false, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (38, 38, 3, 644.87, 'breakfast', 1, null, false, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (39, 39, 4, 806.06, 'bathrobe', 6, 'sea', true, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (40, 40, 5, 850.53, 'breakfast', 3, 'sea', false, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (41, 1, 1, 426.5, 'bathrobe', 3, 'sea', false, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (42, 2, 2, 170.98, 'breakfast', 9, 'sea', true, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (43, 3, 3, 554.97, 'bathrobe', 10, 'sea', true, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (44, 4, 4, 474.56, 'parking', 4, null, false, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (45, 5, 5, 931.37, 'breakfast', 5, 'sea', true, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (46, 6, 1, 493.82, 'parking', 5, null, true, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (47, 7, 2, 843.31, 'toiletries', 1, 'mountain', false, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (48, 8, 3, 974.51, 'bathrobe', 7, 'sea', false, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (49, 9, 4, 368.87, 'hot tub', 5, null, false, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (50, 10, 5, 387.16, 'parking', 9, null, true, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (51, 11, 1, 686.4, 'hot tub', 5, null, true, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (52, 12, 2, 958.76, 'bathrobe', 7, 'sea', false, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (53, 13, 3, 467.42, 'toiletries', 3, null, false, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (54, 14, 4, 585.07, 'toiletries', 4, null, true, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (55, 15, 5, 687.34, 'breakfast', 3, 'sea', false, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (56, 16, 1, 343.88, 'toiletries', 9, 'mountain', false, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (57, 17, 2, 223.77, 'parking', 9, 'mountain', true, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (58, 18, 3, 211.37, 'hot tub', 1, null, false, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (59, 19, 4, 753.38, 'parking', 4, null, false, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (60, 20, 5, 737.88, 'hot tub', 10, null, true, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (61, 21, 1, 754.0, 'toaster', 6, null, false, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (62, 22, 2, 501.99, 'kitchen', 1, null, false, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (63, 23, 3, 698.15, 'parking', 8, null, true, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (64, 24, 4, 459.55, 'parking', 7, null, true, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (65, 25, 5, 342.1, 'toaster', 5, 'mountain', true, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (66, 26, 1, 295.84, 'breakfast', 10, 'sea', true, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (67, 27, 2, 283.28, 'toiletries', 5, 'sea', false, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (68, 28, 3, 369.47, 'breakfast', 7, 'mountain', true, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (69, 29, 4, 925.55, 'toiletries', 8, 'mountain', false, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (70, 30, 5, 501.29, 'bathrobe', 3, null, false, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (71, 31, 1, 335.13, null, 9, 'mountain', true, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (72, 32, 2, 132.8, 'breakfast', 9, null, true, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (73, 33, 3, 607.38, 'breakfast', 8, 'sea', false, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (74, 34, 4, 342.56, 'toaster', 10, null, false, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (75, 35, 5, 871.46, 'hot tub', 2, 'sea', true, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (76, 36, 1, 509.95, 'bathrobe', 8, null, true, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (77, 37, 2, 794.16, 'hot tub', 5, 'sea', true, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (78, 38, 3, 154.83, 'hot tub', 1, null, false, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (79, 39, 4, 215.96, 'hot tub', 4, 'mountain', true, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (80, 40, 5, 962.31, 'toaster', 4, 'mountain', false, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (81, 1, 1, 787.38, 'kitchen', 5, 'sea', true, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (82, 2, 2, 748.93, 'breakfast', 9, null, true, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (83, 3, 3, 194.34, 'hot tub', 6, null, false, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (84, 4, 4, 329.06, 'toiletries', 4, 'mountain', false, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (85, 5, 5, 160.32, 'bathrobe', 2, 'mountain', true, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (86, 6, 1, 629.19, 'parking', 1, 'mountain', false, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (87, 7, 2, 334.57, 'parking', 9, 'sea', false, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (88, 8, 3, 394.61, null, 1, 'sea', true, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (89, 9, 4, 272.98, 'kitchen', 8, null, false, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (90, 10, 5, 896.79, 'bathrobe', 8, null, false, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (91, 11, 1, 876.09, 'toaster', 4, 'mountain', false, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (92, 12, 2, 260.93, 'breakfast', 9, null, false, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (93, 13, 3, 900.14, 'toaster', 3, null, true, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (94, 14, 4, 308.59, 'kitchen', 1, null, true, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (95, 15, 5, 406.23, 'toaster', 7, 'sea', true, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (96, 16, 1, 320.57, 'breakfast', 7, 'mountain', false, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (97, 17, 2, 574.46, 'parking', 8, 'mountain', true, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (98, 18, 3, 372.78, 'toaster', 8, null, true, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (99, 19, 4, 498.5, 'kitchen', 5, 'mountain', true, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (100, 20, 5, 121.76, 'hot tub', 4, null, true, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (101, 21, 1, 470.33, 'bathrobe', 1, null, true, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (102, 22, 2, 585.57, 'kitchen', 7, null, true, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (103, 23, 3, 360.41, 'hot tub', 2, null, false, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (104, 24, 4, 240.85, 'hot tub', 4, null, false, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (105, 25, 5, 315.14, 'bathrobe', 5, null, false, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (106, 26, 1, 596.04, 'toiletries', 6, 'sea', true, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (107, 27, 2, 977.82, 'toaster', 1, null, true, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (108, 28, 3, 629.31, 'toiletries', 8, 'mountain', true, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (109, 29, 4, 913.56, 'breakfast', 5, 'mountain', true, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (110, 30, 5, 625.18, 'toaster', 4, 'sea', true, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (111, 31, 1, 443.56, 'parking', 1, 'mountain', true, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (112, 32, 2, 151.98, 'toiletries', 7, 'mountain', true, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (113, 33, 3, 587.94, 'breakfast', 1, 'mountain', true, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (114, 34, 4, 557.72, 'bathrobe', 6, 'sea', false, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (115, 35, 5, 303.71, 'breakfast', 1, 'mountain', true, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (116, 36, 1, 739.13, 'toaster', 5, null, true, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (117, 37, 2, 208.3, 'hot tub', 2, 'mountain', true, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (118, 38, 3, 199.74, 'toiletries', 9, null, true, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (119, 39, 4, 366.03, 'kitchen', 5, null, false, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (120, 40, 5, 243.51, 'toiletries', 5, 'mountain', false, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (121, 1, 1, 601.32, 'parking', 8, 'sea', false, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (122, 2, 2, 839.21, 'parking', 10, 'sea', false, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (123, 3, 3, 921.63, 'parking', 8, null, false, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (124, 4, 4, 212.45, 'toaster', 8, null, true, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (125, 5, 5, 516.38, 'breakfast', 5, 'mountain', false, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (126, 6, 1, 567.19, 'toiletries', 4, 'mountain', false, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (127, 7, 2, 939.12, 'bathrobe', 5, null, true, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (128, 8, 3, 928.49, 'kitchen', 2, 'sea', true, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (129, 9, 4, 183.28, 'breakfast', 2, 'sea', true, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (130, 10, 5, 693.46, 'kitchen', 10, null, false, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (131, 11, 1, 964.93, 'breakfast', 8, 'mountain', true, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (132, 12, 2, 431.15, 'bathrobe', 5, null, false, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (133, 13, 3, 647.47, 'parking', 9, 'mountain', true, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (134, 14, 4, 859.79, 'toiletries', 6, null, false, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (135, 15, 5, 110.62, 'hot tub', 10, 'mountain', true, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (136, 16, 1, 763.65, 'hot tub', 4, 'sea', false, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (137, 17, 2, 509.43, 'hot tub', 10, null, true, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (138, 18, 3, 386.48, 'parking', 6, null, false, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (139, 19, 4, 510.24, 'parking', 3, 'mountain', true, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (140, 20, 5, 766.93, 'hot tub', 7, null, false, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (141, 21, 1, 370.06, 'toaster', 6, 'mountain', true, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (142, 22, 2, 690.72, 'kitchen', 4, 'sea', true, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (143, 23, 3, 968.89, 'kitchen', 5, 'mountain', true, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (144, 24, 4, 968.99, 'toaster', 4, 'sea', true, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (145, 25, 5, 362.05, 'bathrobe', 10, 'mountain', false, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (146, 26, 1, 135.64, 'kitchen', 4, 'sea', false, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (147, 27, 2, 815.69, 'kitchen', 8, null, false, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (148, 28, 3, 582.6, 'parking', 5, null, false, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (149, 29, 4, 414.33, 'parking', 3, null, true, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (150, 30, 5, 460.89, 'hot tub', 2, null, false, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (151, 31, 1, 529.24, 'parking', 1, 'mountain', false, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (152, 32, 2, 948.68, 'toiletries', 6, null, true, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (153, 33, 3, 262.79, 'kitchen', 2, 'mountain', true, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (154, 34, 4, 431.94, 'hot tub', 7, 'sea', false, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (155, 35, 5, 702.92, 'breakfast', 1, null, false, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (156, 36, 1, 517.55, 'kitchen', 5, null, true, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (157, 37, 2, 531.64, 'bathrobe', 2, null, true, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (158, 38, 3, 644.1, 'breakfast', 8, 'mountain', false, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (159, 39, 4, 377.45, 'parking', 6, 'mountain', false, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (160, 40, 5, 531.07, 'parking', 1, 'sea', true, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (161, 1, 1, 298.81, 'breakfast', 10, null, false, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (162, 2, 2, 563.46, 'parking', 4, null, true, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (163, 3, 3, 278.25, 'kitchen', 4, 'sea', false, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (164, 4, 4, 929.73, 'breakfast', 1, 'sea', false, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (165, 5, 5, 981.25, 'bathrobe', 3, 'mountain', true, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (166, 6, 1, 827.36, 'toiletries', 6, 'mountain', false, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (167, 7, 2, 489.99, null, 2, null, true, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (168, 8, 3, 698.23, 'bathrobe', 2, null, false, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (169, 9, 4, 214.64, 'toiletries', 1, 'mountain', true, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (170, 10, 5, 341.18, 'toaster', 7, null, false, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (171, 11, 1, 135.13, 'hot tub', 3, 'mountain', false, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (172, 12, 2, 700.82, 'hot tub', 8, 'mountain', false, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (173, 13, 3, 763.27, 'kitchen', 4, 'sea', true, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (174, 14, 4, 811.16, 'toaster', 2, 'mountain', false, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (175, 15, 5, 948.81, 'toaster', 1, null, false, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (176, 16, 1, 974.88, 'breakfast', 10, null, false, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (177, 17, 2, 862.15, 'kitchen', 5, null, true, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (178, 18, 3, 433.35, null, 6, 'mountain', false, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (179, 19, 4, 639.87, 'toaster', 1, 'mountain', false, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (180, 20, 5, 260.37, 'toaster', 8, null, true, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (181, 21, 1, 355.62, 'toiletries', 10, null, false, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (182, 22, 2, 261.71, 'bathrobe', 6, 'sea', false, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (183, 23, 3, 662.24, 'toiletries', 4, 'sea', true, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (184, 24, 4, 970.75, null, 9, null, false, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (185, 25, 5, 408.73, 'parking', 1, 'mountain', false, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (186, 26, 1, 115.77, 'hot tub', 5, null, true, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (187, 27, 2, 988.94, 'breakfast', 10, null, true, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (188, 28, 3, 903.84, 'bathrobe', 3, 'sea', false, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (189, 29, 4, 383.85, 'kitchen', 10, null, true, false, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (190, 30, 5, 239.24, 'toiletries', 2, 'sea', true, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (191, 31, 1, 832.42, 'bathrobe', 2, null, true, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (192, 32, 2, 356.36, 'toiletries', 1, 'sea', false, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (193, 33, 3, 851.26, 'breakfast', 8, 'sea', false, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (194, 34, 4, 686.07, 'bathrobe', 10, null, false, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (195, 35, 5, 526.72, 'breakfast', 1, 'mountain', false, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (196, 36, 1, 697.89, 'hot tub', 7, null, false, true, false);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (197, 37, 2, 317.73, 'kitchen', 1, null, true, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (198, 38, 3, 209.92, 'toiletries', 2, null, true, true, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (199, 39, 4, 529.81, 'hot tub', 9, null, false, false, true);
insert into room (id, hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) values (200, 40, 5, 612.54, 'toiletries', 9, 'sea', false, false, true);

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer (
    id serial PRIMARY KEY,
    full_name varchar NOT NULL,
    address varchar(100),
    id_type varchar(100) NOT NUll,
    registration_date date NOT NULL
);

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO customer VALUES (1, 'John Doe', '72 East Street', 'SSN', '2024-01-01');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS employee CASCADE;
CREATE TABLE employee (
    id serial PRIMARY KEY,
    hotel_id int NOT NULL,
    hotel_chain_id int NOT NULL,
    sin varchar(9) NOT NULL,
    full_name varchar(100) NOT NULL,
    address varchar(100) NOT NULL,
    role varchar(100) NOT NULL,
    FOREIGN KEY (hotel_id) REFERENCES hotel(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (hotel_chain_id) REFERENCES hotel_chain(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO employee VALUES (1, 1, 1, '111111111', 'Henry Ford', '47 West Street', 'manager');

-- ----------------------------
-- Table structure for rent
-- ----------------------------
DROP TABLE IF EXISTS rent;
CREATE TABLE rent (
    id serial,
    customer_id int REFERENCES customer(id) ON DELETE NO ACTION ON UPDATE CASCADE,
    room_id int REFERENCES room(id) ON DELETE NO ACTION ON UPDATE CASCADE,
    hotel_id int REFERENCES hotel(id) ON DELETE NO ACTION ON UPDATE CASCADE,
    hotel_chain_id int REFERENCES hotel_chain(id) ON DELETE NO ACTION ON UPDATE CASCADE,
    start_date date NOT NULL,
    end_date date NOT NULL CHECK (end_date > start_date),
    payment varchar(5) CHECK (payment = 'card' OR payment = 'cash'),
	PRIMARY KEY (id, customer_id, room_id, hotel_id, hotel_chain_id)
);

-- ----------------------------
-- Records of rent
-- ----------------------------
INSERT INTO rent VALUES (1, 1, 1, 1, 1, '2024-01-01', '2024-02-02', 'card');

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS manager;
CREATE TABLE manager (
    employee_id int REFERENCES employee(id) ON DELETE CASCADE ON UPDATE CASCADE,
    hotel_id int REFERENCES hotel(id) ON DELETE CASCADE ON UPDATE CASCADE,
    hotel_chain_id int REFERENCES hotel_chain(id) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (employee_id, hotel_id, hotel_chain_id)
);

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO manager VALUES (1, 1, 1);