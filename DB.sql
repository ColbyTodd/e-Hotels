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
    id_type varchar(100) NOT NUll CHECK (id_type LIKE 'SSN' OR id_type LIKE 'SIN' OR id_type LIKE 'driving licence'),
    registration_date date NOT NULL
);

-- ----------------------------
-- Records of customer
-- ----------------------------
insert into customer (id, full_name, address, id_type, registration_date) values (1, 'Chrotoem Ivashev', '89 Heffernan Pass', 'driving licence', '2024-01-23');
insert into customer (id, full_name, address, id_type, registration_date) values (2, 'Gibby Meade', '4 Sullivan Plaza', 'SSN', '2023-05-15');
insert into customer (id, full_name, address, id_type, registration_date) values (3, 'Hailey Ashlin', '2 Lien Hill', 'SIN', '2023-09-15');
insert into customer (id, full_name, address, id_type, registration_date) values (4, 'Frieda Doick', '5 Jenifer Place', 'SIN', '2023-01-16');
insert into customer (id, full_name, address, id_type, registration_date) values (5, 'Elonore Rodell', '479 Old Shore Way', 'SSN', '2022-09-09');
insert into customer (id, full_name, address, id_type, registration_date) values (6, 'Chico Manuello', '00038 Badeau Point', 'SIN', '2022-11-10');
insert into customer (id, full_name, address, id_type, registration_date) values (7, 'Sarene Scutter', '7876 Eggendart Pass', 'SSN', '2023-07-21');
insert into customer (id, full_name, address, id_type, registration_date) values (8, 'Alanna Allbones', '88 Bluejay Pass', 'driving licence', '2023-11-29');
insert into customer (id, full_name, address, id_type, registration_date) values (9, 'Hephzibah Jossel', '94 Green Ridge Point', 'SSN', '2024-03-06');
insert into customer (id, full_name, address, id_type, registration_date) values (10, 'Malvina Hughman', '2 Prairieview Court', 'SIN', '2023-08-21');
insert into customer (id, full_name, address, id_type, registration_date) values (11, 'Hanni Vannucci', '6 Mendota Avenue', 'driving licence', '2023-09-27');
insert into customer (id, full_name, address, id_type, registration_date) values (12, 'Ines Romao', '592 Glacier Hill Plaza', 'SSN', '2023-01-29');
insert into customer (id, full_name, address, id_type, registration_date) values (13, 'Kamila Staite', '3 Carberry Circle', 'driving licence', '2022-08-16');
insert into customer (id, full_name, address, id_type, registration_date) values (14, 'Quincey Egan', '51 Ruskin Place', 'SSN', '2022-09-03');
insert into customer (id, full_name, address, id_type, registration_date) values (15, 'Binny Starkings', '60 Kingsford Alley', 'SSN', '2024-02-26');
insert into customer (id, full_name, address, id_type, registration_date) values (16, 'Aubrey Race', '4 Red Cloud Alley', 'driving licence', '2024-02-25');
insert into customer (id, full_name, address, id_type, registration_date) values (17, 'Welbie Soutar', '9732 Canary Road', 'driving licence', '2024-01-28');
insert into customer (id, full_name, address, id_type, registration_date) values (18, 'Devland Durnan', '16 Hoffman Street', 'SSN', '2023-06-19');
insert into customer (id, full_name, address, id_type, registration_date) values (19, 'Jillayne Dabes', '19450 Beilfuss Parkway', 'SSN', '2024-02-25');
insert into customer (id, full_name, address, id_type, registration_date) values (20, 'Rollin Thorne', '816 Utah Trail', 'SSN', '2022-11-24');
insert into customer (id, full_name, address, id_type, registration_date) values (21, 'Marika Curness', '9542 Continental Place', 'SSN', '2022-12-18');
insert into customer (id, full_name, address, id_type, registration_date) values (22, 'Papagena Backs', '68707 Old Shore Way', 'driving licence', '2024-02-01');
insert into customer (id, full_name, address, id_type, registration_date) values (23, 'Siward Sarjant', '4 Oriole Avenue', 'SIN', '2023-06-30');
insert into customer (id, full_name, address, id_type, registration_date) values (24, 'Fallon Havick', '06 Victoria Drive', 'SIN', '2023-03-24');
insert into customer (id, full_name, address, id_type, registration_date) values (25, 'Zechariah Musker', '6736 John Wall Lane', 'SSN', '2024-01-18');
insert into customer (id, full_name, address, id_type, registration_date) values (26, 'Zandra Bearfoot', '6516 Sutherland Plaza', 'SSN', '2023-06-03');
insert into customer (id, full_name, address, id_type, registration_date) values (27, 'Win McGiven', '734 Arrowood Alley', 'SSN', '2022-10-10');
insert into customer (id, full_name, address, id_type, registration_date) values (28, 'Dorthea Overington', '61311 Di Loreto Place', 'driving licence', '2023-01-01');
insert into customer (id, full_name, address, id_type, registration_date) values (29, 'Brander Melhuish', '7821 Warrior Junction', 'driving licence', '2023-11-11');
insert into customer (id, full_name, address, id_type, registration_date) values (30, 'Amata Gleasane', '76069 Sunbrook Junction', 'driving licence', '2022-08-25');
insert into customer (id, full_name, address, id_type, registration_date) values (31, 'Elly Alexandersen', '1817 John Wall Terrace', 'SSN', '2022-09-29');
insert into customer (id, full_name, address, id_type, registration_date) values (32, 'Eada De Biaggi', '89 Farragut Road', 'SSN', '2023-02-13');
insert into customer (id, full_name, address, id_type, registration_date) values (33, 'Charline Doiley', '34390 Portage Street', 'SIN', '2023-03-03');
insert into customer (id, full_name, address, id_type, registration_date) values (34, 'Veradis Cissen', '23062 Continental Point', 'driving licence', '2022-08-21');
insert into customer (id, full_name, address, id_type, registration_date) values (35, 'Lev Aloigi', '43941 Ruskin Court', 'SSN', '2023-06-25');
insert into customer (id, full_name, address, id_type, registration_date) values (36, 'Tiphany O''Shee', '0 Golden Leaf Way', 'SSN', '2024-03-17');
insert into customer (id, full_name, address, id_type, registration_date) values (37, 'Phillipe Tant', '3 Melody Street', 'SIN', '2024-01-31');
insert into customer (id, full_name, address, id_type, registration_date) values (38, 'Aluin MacCaughen', '311 Gina Hill', 'driving licence', '2023-12-29');
insert into customer (id, full_name, address, id_type, registration_date) values (39, 'Poppy Hincham', '5084 Autumn Leaf Avenue', 'SIN', '2023-08-01');
insert into customer (id, full_name, address, id_type, registration_date) values (40, 'Brent Staples', '445 Morningstar Parkway', 'SSN', '2023-03-10');
insert into customer (id, full_name, address, id_type, registration_date) values (41, 'Giffy Schach', '97871 Carberry Point', 'SSN', '2022-11-19');
insert into customer (id, full_name, address, id_type, registration_date) values (42, 'Nev Wretham', '3 Northridge Parkway', 'driving licence', '2024-01-13');
insert into customer (id, full_name, address, id_type, registration_date) values (43, 'Igor Bisseker', '03 Dorton Circle', 'SSN', '2023-06-24');
insert into customer (id, full_name, address, id_type, registration_date) values (44, 'Price Roston', '65251 Sunbrook Road', 'driving licence', '2023-05-07');
insert into customer (id, full_name, address, id_type, registration_date) values (45, 'Mordecai Frodsham', '57 Northland Crossing', 'SIN', '2023-05-19');
insert into customer (id, full_name, address, id_type, registration_date) values (46, 'Hermon Probbings', '7 Farwell Lane', 'SIN', '2022-07-30');
insert into customer (id, full_name, address, id_type, registration_date) values (47, 'Trenton Romanelli', '250 Rowland Parkway', 'SSN', '2023-05-06');
insert into customer (id, full_name, address, id_type, registration_date) values (48, 'Yolande Berringer', '7 Union Plaza', 'SIN', '2023-04-27');
insert into customer (id, full_name, address, id_type, registration_date) values (49, 'Reta Sprigg', '6 Dwight Parkway', 'driving licence', '2022-11-01');
insert into customer (id, full_name, address, id_type, registration_date) values (50, 'Witty Kellock', '9300 Helena Park', 'SSN', '2023-11-24');
insert into customer (id, full_name, address, id_type, registration_date) values (51, 'Meara Swalteridge', '3 Golf Lane', 'driving licence', '2022-11-15');
insert into customer (id, full_name, address, id_type, registration_date) values (52, 'Osbert Heeps', '62 International Avenue', 'SSN', '2023-02-28');
insert into customer (id, full_name, address, id_type, registration_date) values (53, 'Mozes Oller', '0852 Drewry Avenue', 'SIN', '2022-12-05');
insert into customer (id, full_name, address, id_type, registration_date) values (54, 'Claresta Carneck', '68 Luster Way', 'SIN', '2023-11-17');
insert into customer (id, full_name, address, id_type, registration_date) values (55, 'Bianca Sacks', '22 Hoard Court', 'driving licence', '2022-08-20');
insert into customer (id, full_name, address, id_type, registration_date) values (56, 'Mitch Manz', '95 Harbort Drive', 'SIN', '2023-10-26');
insert into customer (id, full_name, address, id_type, registration_date) values (57, 'Robinetta Joincey', '4 Delaware Point', 'SIN', '2023-09-14');
insert into customer (id, full_name, address, id_type, registration_date) values (58, 'Huberto Snaden', '0 Buell Plaza', 'driving licence', '2023-01-05');
insert into customer (id, full_name, address, id_type, registration_date) values (59, 'Murdoch Shawcross', '05590 Logan Junction', 'SSN', '2024-03-01');
insert into customer (id, full_name, address, id_type, registration_date) values (60, 'Clo Vamplers', '5 Spaight Way', 'SSN', '2023-09-22');
insert into customer (id, full_name, address, id_type, registration_date) values (61, 'Salli Allcott', '223 West Lane', 'driving licence', '2023-11-27');
insert into customer (id, full_name, address, id_type, registration_date) values (62, 'Wylie Kellart', '73 Lakewood Gardens Drive', 'SIN', '2023-09-10');
insert into customer (id, full_name, address, id_type, registration_date) values (63, 'Ulrica Salasar', '4 Wayridge Park', 'driving licence', '2023-12-21');
insert into customer (id, full_name, address, id_type, registration_date) values (64, 'Donetta O'' Dooley', '9144 Hollow Ridge Plaza', 'driving licence', '2023-03-26');
insert into customer (id, full_name, address, id_type, registration_date) values (65, 'Manon Killwick', '0 Towne Place', 'SSN', '2023-12-31');
insert into customer (id, full_name, address, id_type, registration_date) values (66, 'Bertrando Dyett', '964 Lakeland Crossing', 'SIN', '2022-08-06');
insert into customer (id, full_name, address, id_type, registration_date) values (67, 'Matthew Kunz', '2 Spenser Crossing', 'driving licence', '2022-09-18');
insert into customer (id, full_name, address, id_type, registration_date) values (68, 'Prissie Abramovicz', '85 Crownhardt Junction', 'driving licence', '2024-01-17');
insert into customer (id, full_name, address, id_type, registration_date) values (69, 'Lyle Kermode', '1 Monterey Plaza', 'SIN', '2024-02-29');
insert into customer (id, full_name, address, id_type, registration_date) values (70, 'Felike Fernely', '8697 Sommers Street', 'SIN', '2023-08-16');
insert into customer (id, full_name, address, id_type, registration_date) values (71, 'Nicola Hyams', '22970 Shoshone Park', 'driving licence', '2023-06-22');
insert into customer (id, full_name, address, id_type, registration_date) values (72, 'Genvieve Finkle', '47986 Everett Alley', 'SSN', '2022-09-12');
insert into customer (id, full_name, address, id_type, registration_date) values (73, 'Micky Gunnell', '358 Main Pass', 'driving licence', '2022-07-01');
insert into customer (id, full_name, address, id_type, registration_date) values (74, 'Ilario Tompsett', '79093 Clemons Plaza', 'SIN', '2022-12-18');
insert into customer (id, full_name, address, id_type, registration_date) values (75, 'Modesty Ramsby', '3 Sugar Court', 'SSN', '2023-10-18');
insert into customer (id, full_name, address, id_type, registration_date) values (76, 'Vladamir Eglese', '5 Brickson Park Street', 'SSN', '2022-09-09');
insert into customer (id, full_name, address, id_type, registration_date) values (77, 'Zia Yurasov', '177 Elka Pass', 'SSN', '2023-09-29');
insert into customer (id, full_name, address, id_type, registration_date) values (78, 'Barbara-anne Kilfedder', '39 Rigney Road', 'SSN', '2023-12-23');
insert into customer (id, full_name, address, id_type, registration_date) values (79, 'Candida Hatherell', '9 Mandrake Alley', 'SIN', '2022-10-08');
insert into customer (id, full_name, address, id_type, registration_date) values (80, 'Carling Frisch', '93862 Myrtle Alley', 'driving licence', '2022-10-23');
insert into customer (id, full_name, address, id_type, registration_date) values (81, 'Elfrida Leggat', '1 Sutteridge Terrace', 'driving licence', '2023-07-03');
insert into customer (id, full_name, address, id_type, registration_date) values (82, 'Lynnet Aughton', '04 Golden Leaf Crossing', 'SIN', '2023-11-09');
insert into customer (id, full_name, address, id_type, registration_date) values (83, 'Clio Steuhlmeyer', '24 West Pass', 'SSN', '2023-03-05');
insert into customer (id, full_name, address, id_type, registration_date) values (84, 'Ryann Madle', '19 Donald Junction', 'driving licence', '2022-08-26');
insert into customer (id, full_name, address, id_type, registration_date) values (85, 'Willette Tolan', '1953 Killdeer Point', 'SIN', '2023-07-25');
insert into customer (id, full_name, address, id_type, registration_date) values (86, 'Colene Szymczyk', '080 Valley Edge Avenue', 'SSN', '2023-08-29');
insert into customer (id, full_name, address, id_type, registration_date) values (87, 'Richardo Ivanin', '33062 La Follette Drive', 'driving licence', '2023-09-23');
insert into customer (id, full_name, address, id_type, registration_date) values (88, 'Annadiana Elner', '5 Northview Lane', 'SIN', '2022-12-01');
insert into customer (id, full_name, address, id_type, registration_date) values (89, 'Erin Cantopher', '8964 Springs Court', 'SIN', '2023-02-20');
insert into customer (id, full_name, address, id_type, registration_date) values (90, 'Anthony Schindler', '757 Portage Circle', 'driving licence', '2023-09-18');
insert into customer (id, full_name, address, id_type, registration_date) values (91, 'Kinna Slatten', '62 Vernon Pass', 'driving licence', '2022-09-22');
insert into customer (id, full_name, address, id_type, registration_date) values (92, 'Alessandro Brugden', '49 East Park', 'SSN', '2022-09-13');
insert into customer (id, full_name, address, id_type, registration_date) values (93, 'Melisandra Jeanet', '95 Muir Parkway', 'SIN', '2022-07-18');
insert into customer (id, full_name, address, id_type, registration_date) values (94, 'Izaak Eastbrook', '54 Memorial Center', 'SSN', '2024-01-14');
insert into customer (id, full_name, address, id_type, registration_date) values (95, 'Faydra Langsdon', '83735 Towne Parkway', 'SSN', '2023-01-29');
insert into customer (id, full_name, address, id_type, registration_date) values (96, 'Ronny Dallman', '00 Manitowish Center', 'SSN', '2022-11-11');
insert into customer (id, full_name, address, id_type, registration_date) values (97, 'Laurel Bowling', '20 Weeping Birch Avenue', 'SSN', '2022-08-19');
insert into customer (id, full_name, address, id_type, registration_date) values (98, 'Yettie Masterton', '50 Clarendon Junction', 'driving licence', '2023-08-07');
insert into customer (id, full_name, address, id_type, registration_date) values (99, 'Dominica Storres', '186 Pearson Alley', 'driving licence', '2022-10-27');
insert into customer (id, full_name, address, id_type, registration_date) values (100, 'Mavis Antoszczyk', '09 Riverside Street', 'SIN', '2022-08-10');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS employee CASCADE;
CREATE TABLE employee (
    id serial PRIMARY KEY,
    hotel_id int NOT NULL,
    hotel_chain_id int NOT NULL,
    sin varchar(9) NOT NULL CHECK (sin SIMILAR TO '[0-9]{9}'),
    full_name varchar(100) NOT NULL,
    address varchar(100) NOT NULL,
    role varchar(100) NOT NULL CHECK (role LIKE 'manager' OR role LIKE 'front-desk' OR role LIKE 'maid' OR role LIKE 'janitor' OR role LIKE 'valet' OR role LIKE 'chef'),
    FOREIGN KEY (hotel_id) REFERENCES hotel(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (hotel_chain_id) REFERENCES hotel_chain(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- ----------------------------
-- Records of employee
-- ----------------------------
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (1, 36, 1, '988359079', 'Hogan Zanettini', '603 Monica Lane', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (2, 8, 3, '509661411', 'Mozelle McWhorter', '4857 Hoepker Center', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (3, 40, 5, '688678738', 'Gabriel Cutmare', '33 Old Shore Circle', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (4, 12, 2, '812897084', 'Robbie Pablos', '34 John Wall Hill', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (5, 11, 1, '574817563', 'Blondie Schellig', '93 Hovde Avenue', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (6, 18, 3, '557856445', 'Trudy Whylie', '3 Alpine Way', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (7, 39, 4, '198334218', 'Granthem Gonet', '823 Pennsylvania Road', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (8, 9, 4, '408706517', 'Orsola Haffner', '59 Fallview Park', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (9, 10, 5, '635100108', 'Reagen Renneke', '63740 Dapin Park', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (10, 37, 2, '051962112', 'Casi Bamb', '349 North Way', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (11, 22, 2, '708423091', 'Garold Rodenburg', '46 Westerfield Lane', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (12, 24, 4, '950816908', 'Jarad Mum', '7 Straubel Circle', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (13, 2, 2, '128468570', 'Thomasine Gayne', '616 Paget Point', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (14, 39, 4, '346168987', 'Glenn Wudeland', '070 Comanche Way', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (15, 27, 2, '986401900', 'Tybalt Stare', '4127 Farwell Trail', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (16, 10, 5, '328762225', 'Madella Penritt', '50955 Hazelcrest Court', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (17, 15, 5, '487471583', 'Wendy Edser', '05 Mallard Hill', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (18, 22, 2, '897155155', 'Durante Glasman', '383 Lotheville Lane', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (19, 26, 1, '058220491', 'Elijah Ariss', '26228 Dayton Alley', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (20, 25, 5, '515523025', 'Hendrika McNeish', '4 Dexter Court', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (21, 8, 3, '289844961', 'Siana Gathwaite', '979 Starling Road', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (22, 21, 1, '970916043', 'Penny Castelot', '329 Northview Park', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (23, 11, 1, '934112657', 'Lanny Treace', '4 Holy Cross Way', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (24, 5, 5, '598117724', 'Burlie Huggard', '2 Park Meadow Place', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (25, 40, 5, '567011297', 'Hatti O''Donnell', '0 Cascade Parkway', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (26, 32, 2, '390297308', 'Hobard Bazell', '5 Talmadge Park', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (27, 12, 2, '455383199', 'Isabelita Paeckmeyer', '80679 Steensland Junction', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (28, 22, 2, '188201659', 'Eleonora Lester', '28577 Elka Drive', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (29, 31, 1, '487122749', 'Daffie Dickie', '801 Lien Plaza', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (30, 34, 4, '356803840', 'Malissa Forst', '69943 Manley Drive', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (31, 6, 1, '041635134', 'Randy L''Episcopi', '786 Paget Terrace', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (32, 28, 3, '141982429', 'Alister Olver', '99 Lake View Center', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (33, 39, 4, '241471274', 'Suzy Abell', '72229 Del Mar Junction', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (34, 25, 5, '578407204', 'Aretha Minchell', '40 Eagle Crest Point', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (35, 5, 5, '012910297', 'Dall Sowte', '801 Spohn Avenue', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (36, 8, 3, '988796968', 'Jolynn Toohey', '6359 Park Meadow Lane', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (37, 31, 1, '644579691', 'Justis Naish', '972 Ilene Alley', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (38, 37, 2, '562938944', 'Serene McGauhy', '6 Lakewood Gardens Park', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (39, 39, 4, '828330975', 'Haleigh Battaille', '4 Park Meadow Drive', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (40, 6, 1, '105662496', 'Teri Incogna', '4 Redwing Road', 'manager');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (41, 40, 5, '327213260', 'Herculie Gillibrand', '675 Kenwood Terrace', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (42, 31, 1, '842394579', 'Lorinda Parmley', '5867 Melody Plaza', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (43, 21, 1, '782046093', 'Lina Broggio', '16796 Scott Trail', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (44, 25, 5, '134142930', 'Fredrika Cavalier', '21331 Troy Drive', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (45, 3, 3, '514314354', 'Nalani Cashford', '61162 Eggendart Lane', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (46, 4, 4, '123969339', 'Godfrey Deniske', '4 Petterle Court', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (47, 37, 2, '962996242', 'Krystle Cherryman', '34 Meadow Ridge Circle', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (48, 19, 4, '663018534', 'Dalt Davidsen', '0316 Ramsey Court', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (49, 35, 5, '596298468', 'Gerladina Beaulieu', '54 Butternut Plaza', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (50, 12, 2, '217148124', 'Jeniece Crim', '3 Union Road', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (51, 18, 3, '046190662', 'Robbi Shoppee', '404 Cardinal Pass', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (52, 21, 1, '990355780', 'Fidel Burditt', '6756 Russell Trail', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (53, 14, 4, '612166505', 'Renae Pheby', '13242 Sugar Pass', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (54, 26, 1, '417385954', 'Denny De Beneditti', '1998 Delladonna Road', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (55, 24, 4, '671330956', 'Camey Monck', '70642 Arrowood Crossing', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (56, 34, 4, '116217353', 'Mozes O'' Neligan', '52 Bultman Parkway', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (57, 38, 3, '098521994', 'Pammi Juanico', '12 Esch Court', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (58, 29, 4, '830939569', 'Wilburt Kiffe', '915 Porter Lane', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (59, 31, 1, '199484354', 'Dan Ebbens', '29 Northview Avenue', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (60, 15, 5, '321088374', 'Pollyanna Wanka', '33 Warrior Park', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (61, 29, 4, '244313197', 'Becka Goding', '37 Commercial Plaza', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (62, 17, 2, '638455463', 'Horatia Lantoph', '03494 Mandrake Road', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (63, 1, 1, '319481869', 'Benjamen Scutter', '3 Quincy Drive', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (64, 11, 1, '841803551', 'Cleveland Radleigh', '31059 Shasta Road', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (65, 3, 3, '260970368', 'Florrie Phillips', '75 Packers Alley', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (66, 20, 5, '435056171', 'Karole Siehard', '627 Banding Point', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (67, 36, 1, '147832434', 'Clifford Vallack', '83531 Jenna Pass', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (68, 14, 4, '239622429', 'Jacquenetta Aughtie', '2 Sullivan Center', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (69, 6, 1, '510727104', 'Robers Marchbank', '520 Almo Parkway', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (70, 29, 4, '202459842', 'Merv Girogetti', '783 Acker Court', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (71, 7, 2, '246831694', 'Lexis Guidoni', '55 Golf View Point', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (72, 2, 2, '261864616', 'Gare Armour', '7 Messerschmidt Center', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (73, 23, 3, '890638850', 'Aguistin Deakins', '93 Brentwood Junction', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (74, 12, 2, '599614008', 'Tracy Balston', '8 Mayfield Crossing', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (75, 10, 5, '358858518', 'Marybelle Bendin', '92 Hollow Ridge Trail', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (76, 37, 2, '091198145', 'Althea Launder', '45420 International Pass', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (77, 24, 4, '940380292', 'Gerri Larrosa', '70 John Wall Lane', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (78, 37, 2, '862060987', 'Flory Trafford', '0 Laurel Way', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (79, 1, 1, '545727346', 'Lemmy Philippsohn', '3 Fieldstone Drive', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (80, 5, 5, '486552419', 'Micky Tampin', '65 Prairieview Alley', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (81, 27, 2, '753488820', 'Wilie Verey', '337 Forster Way', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (82, 22, 2, '955076898', 'Di Peotz', '5 Parkside Park', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (83, 1, 1, '885317403', 'Robbi Cadge', '04 Crest Line Parkway', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (84, 13, 3, '502486870', 'Dante Rosell', '0466 Weeping Birch Point', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (85, 27, 2, '632072878', 'Doreen Ariss', '96483 Elka Terrace', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (86, 5, 5, '510936393', 'Griffy Obbard', '461 Sloan Terrace', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (87, 37, 2, '355931481', 'Wrennie Edmenson', '5177 Vermont Alley', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (88, 32, 2, '540282344', 'Darcee Vivien', '748 Golf Course Pass', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (89, 24, 4, '944576703', 'Luce Powles', '70857 Pierstorff Center', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (90, 31, 1, '901188828', 'Austin Rowbottam', '85 Namekagon Junction', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (91, 21, 1, '994590588', 'Riva Bennike', '29616 Bultman Plaza', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (92, 12, 2, '573975175', 'Travus Dugdale', '013 High Crossing Park', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (93, 31, 1, '271582568', 'Jarred Dyter', '1232 Eagle Crest Hill', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (94, 19, 4, '206633930', 'Ward Varnham', '84105 Mockingbird Court', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (95, 29, 4, '240381592', 'Franklyn Douberday', '499 Glendale Lane', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (96, 20, 5, '832614840', 'Link Hercules', '3504 Homewood Road', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (97, 2, 2, '519473747', 'Dagmar Mullan', '3842 Brentwood Street', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (98, 32, 2, '206096157', 'Gabbi Fergie', '83 Bonner Crossing', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (99, 17, 2, '156914859', 'Brigit Abazi', '6 Northfield Parkway', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (100, 32, 2, '480324442', 'Herold Ohrtmann', '3155 Village Crossing', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (101, 30, 5, '506111461', 'Dennison Andrich', '29744 Dunning Parkway', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (102, 40, 5, '512121464', 'Charline Priest', '6504 Rusk Pass', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (103, 7, 2, '614306536', 'Umeko Diamond', '4 Transport Drive', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (104, 34, 4, '669188248', 'Carol-jean Bembridge', '7600 Anthes Center', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (105, 19, 4, '792421640', 'Modestine Wakley', '7 Paget Place', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (106, 39, 4, '629717213', 'Rafi Halligan', '055 Morningstar Circle', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (107, 34, 4, '939155204', 'Mercy Sansom', '02 Spenser Way', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (108, 24, 4, '896651450', 'Aurie Rorke', '73657 Colorado Pass', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (109, 19, 4, '869960955', 'Ernesto Burkinshaw', '160 Anthes Pass', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (110, 18, 3, '340306274', 'Darla Spriggen', '67 Riverside Center', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (111, 20, 5, '563189230', 'Jessamyn Seaking', '90532 Meadow Vale Park', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (112, 26, 1, '694837965', 'Anthiathia Izac', '7278 Sugar Court', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (113, 8, 3, '538022699', 'Jena Seatter', '1 Atwood Hill', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (114, 19, 4, '622198494', 'Gareth Hemeret', '6 Hovde Place', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (115, 8, 3, '424443275', 'Onfroi Bracco', '020 Orin Hill', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (116, 28, 3, '161312368', 'Brady Giuron', '240 Prairieview Hill', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (117, 27, 2, '193859813', 'Nonah Scudder', '1 Express Hill', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (118, 36, 1, '387177796', 'Donnamarie Willes', '4035 Orin Parkway', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (119, 28, 3, '001851974', 'Barnard Heineken', '429 Elmside Place', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (120, 22, 2, '579110760', 'Aguistin Atwel', '24971 Johnson Place', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (121, 30, 5, '151373895', 'Reg Place', '2819 Northport Road', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (122, 6, 1, '739326202', 'Ileane McMenamy', '1 Schlimgen Avenue', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (123, 2, 2, '980173464', 'Nefen Millions', '3383 6th Point', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (124, 34, 4, '376737424', 'Kilian Ferrarese', '79052 Morning Terrace', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (125, 38, 3, '769366895', 'Eziechiele Mattiato', '8 Knutson Crossing', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (126, 29, 4, '935665406', 'Aloisia Wreakes', '63 Talisman Alley', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (127, 36, 1, '164748134', 'Mallory Jobey', '3 Muir Plaza', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (128, 3, 3, '699104046', 'Vittorio Lorden', '4 Crest Line Court', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (129, 25, 5, '077504351', 'Joana Mingay', '3023 Pawling Park', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (130, 37, 2, '853188110', 'Willem Momery', '0060 Morningstar Parkway', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (131, 35, 5, '028147146', 'Pooh Petrakov', '0621 Oakridge Street', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (132, 21, 1, '027424232', 'Lonnie Meanwell', '92 Charing Cross Pass', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (133, 23, 3, '836800122', 'Marquita Josskoviz', '6 Lukken Crossing', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (134, 32, 2, '225218359', 'Chilton Childs', '8 Southridge Terrace', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (135, 6, 1, '308525868', 'Godiva Gianullo', '1 Onsgard Park', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (136, 34, 4, '070525451', 'Tim Beavan', '04778 Cottonwood Parkway', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (137, 40, 5, '108046810', 'Walt Reuble', '24 Jackson Hill', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (138, 35, 5, '793193802', 'Dal Wandrich', '5 Vahlen Place', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (139, 27, 2, '295673114', 'Portie Gemnett', '679 Morrow Circle', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (140, 28, 3, '203346761', 'Reg Fellgett', '61 Lukken Circle', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (141, 9, 4, '900470107', 'Audrye Parsall', '377 Roth Terrace', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (142, 24, 4, '142768976', 'Reese Jiggle', '072 Schlimgen Circle', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (143, 3, 3, '856145694', 'Gregoire Berkely', '4 Kings Drive', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (144, 27, 2, '510299902', 'Nicoline Matzen', '60 Village Green Street', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (145, 20, 5, '961623853', 'Annetta Helks', '838 Mcbride Alley', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (146, 36, 1, '067900506', 'Jania Stoney', '1 Schiller Park', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (147, 30, 5, '965431860', 'Claudine Vautre', '106 Fulton Plaza', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (148, 39, 4, '023465971', 'Merline Hugenin', '38477 Fuller Drive', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (149, 24, 4, '671993933', 'Lilian Carillo', '1 Mcguire Road', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (150, 20, 5, '410264342', 'Minette Revance', '89791 Victoria Place', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (151, 28, 3, '387945298', 'Ware Mollene', '22743 Darwin Court', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (152, 12, 2, '969210064', 'Adah Kilpatrick', '83 Macpherson Point', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (153, 23, 3, '959970962', 'Krista Meckiff', '71610 Larry Way', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (154, 2, 2, '978213538', 'Suzanna Parncutt', '7526 Corry Avenue', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (155, 29, 4, '321865173', 'Ellerey Dabnot', '0449 Acker Hill', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (156, 24, 4, '109550909', 'Stanford Purkis', '91 Maple Parkway', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (157, 13, 3, '759150533', 'Arney Standring', '5 Maryland Park', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (158, 10, 5, '605105576', 'Agnese Harwell', '971 Little Fleur Place', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (159, 14, 4, '550457366', 'Lovell Falck', '08 Oriole Trail', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (160, 14, 4, '361353455', 'Hedy Dagnall', '19075 Ridgeway Terrace', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (161, 38, 3, '421784272', 'Aron Longthorn', '7 Badeau Avenue', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (162, 39, 4, '015154795', 'Sherrie Brookz', '803 Summerview Pass', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (163, 15, 5, '263495808', 'Davine Banfield', '60 Sundown Way', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (164, 1, 1, '119027093', 'Christoph Jepps', '692 Valley Edge Road', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (165, 26, 1, '478326396', 'Jamie Keenor', '8024 Maryland Plaza', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (166, 2, 2, '065169802', 'Arley Philipeaux', '4 Saint Paul Road', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (167, 12, 2, '472248498', 'Waverly Boundy', '680 Knutson Plaza', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (168, 2, 2, '149208634', 'Patin Moakler', '47838 Annamark Crossing', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (169, 17, 2, '254053381', 'Agnola Filip', '9436 Jenifer Road', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (170, 19, 4, '820470938', 'Leia Yellowlee', '192 Fisk Place', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (171, 4, 4, '137603136', 'Louella Mercey', '8 Glacier Hill Junction', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (172, 14, 4, '064432288', 'Cherida Rooper', '12 Lindbergh Alley', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (173, 33, 3, '246053435', 'Rosaleen Van der Kruijs', '6 Rowland Junction', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (174, 15, 5, '600636568', 'Melva Drewes', '8674 Mallard Parkway', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (175, 27, 2, '115725197', 'Rhiamon Shera', '361 Armistice Junction', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (176, 20, 5, '980413088', 'Stacee Artist', '312 Canary Crossing', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (177, 34, 4, '648727540', 'Beryle Selly', '04 Gale Hill', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (178, 24, 4, '533415162', 'Thedric Ambroise', '77 Prentice Road', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (179, 40, 5, '431219647', 'Zane Penella', '57992 Pepper Wood Plaza', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (180, 16, 1, '621657067', 'Dominic Troke', '16188 Kingsford Park', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (181, 5, 5, '330771045', 'Ingra Brabender', '068 Helena Parkway', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (182, 31, 1, '938660668', 'Hilly Shewsmith', '575 Forest Dale Place', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (183, 24, 4, '136913717', 'Kissie Gwioneth', '54 Pond Court', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (184, 2, 2, '976584891', 'Lorine Tomaskov', '240 Arizona Park', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (185, 26, 1, '574864454', 'Philippa Garrattley', '657 Lunder Drive', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (186, 18, 3, '630594146', 'Eirena Lount', '35 Old Shore Place', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (187, 22, 2, '332660877', 'Suzette MacChaell', '1 Old Shore Road', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (188, 5, 5, '573315417', 'Jamaal Divers', '361 8th Alley', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (189, 9, 4, '405809288', 'Myrle Blasio', '8530 Mosinee Point', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (190, 28, 3, '138736329', 'Sarena Toffel', '7 Vidon Road', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (191, 5, 5, '332222098', 'Allx Massenhove', '044 Daystar Terrace', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (192, 30, 5, '859419572', 'Wanids Stoad', '791 Cottonwood Way', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (193, 2, 2, '752739154', 'Abdel Ewell', '93586 Transport Plaza', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (194, 31, 1, '032927460', 'Whitney Vasyutkin', '9860 Fairfield Parkway', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (195, 30, 5, '266969469', 'Nat Cumbes', '27659 Texas Junction', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (196, 8, 3, '322463156', 'Natty Fawson', '4 Stoughton Alley', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (197, 19, 4, '041713906', 'Leonard Sollas', '35 Quincy Crossing', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (198, 28, 3, '132028009', 'Pauli Croci', '99488 John Wall Road', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (199, 29, 4, '231581674', 'Cathlene Salsbury', '92409 Summit Parkway', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (200, 24, 4, '604963957', 'Almeda Ell', '8031 Hauk Circle', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (201, 4, 4, '606381324', 'Ced Woollcott', '9 Huxley Plaza', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (202, 7, 2, '187557683', 'Patten Ecclesall', '6994 Melrose Center', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (203, 38, 3, '140083416', 'Shea Nardi', '1 Johnson Circle', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (204, 24, 4, '138291308', 'Letty Bowling', '3 Heath Alley', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (205, 9, 4, '674807739', 'Etti Greasty', '4 Heffernan Avenue', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (206, 14, 4, '283399241', 'Kelcie Boskell', '155 Bowman Hill', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (207, 9, 4, '791613753', 'Hollyanne Ellin', '6230 Magdeline Drive', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (208, 34, 4, '403550932', 'Kayla Djurkovic', '20 Vidon Lane', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (209, 39, 4, '920651685', 'Christie Hocking', '6 Dorton Way', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (210, 25, 5, '898937370', 'Fawn Kell', '81 Elmside Road', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (211, 38, 3, '613186752', 'Elsbeth Torr', '2727 Scott Parkway', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (212, 36, 1, '520724391', 'Shayna Chisnell', '88062 Hallows Point', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (213, 21, 1, '900370732', 'Guillema McAirt', '39548 Melvin Parkway', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (214, 26, 1, '454845930', 'Elton Yeudall', '02 Chive Lane', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (215, 15, 5, '708319417', 'Rob Revie', '244 Eggendart Circle', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (216, 24, 4, '853724271', 'Bryan Harness', '6600 Veith Alley', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (217, 5, 5, '585743595', 'Daveen Neising', '5469 Dahle Park', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (218, 26, 1, '443982137', 'Pollyanna Balderson', '7953 Vahlen Crossing', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (219, 13, 3, '210928024', 'Kore Stubley', '7721 Hollow Ridge Crossing', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (220, 25, 5, '274846620', 'Jaymee Barber', '9 Arizona Park', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (221, 12, 2, '040492590', 'Sheree Detloff', '88313 Maywood Alley', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (222, 31, 1, '588160529', 'Maddalena Argente', '3 Bartelt Parkway', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (223, 19, 4, '460381567', 'Stevena Budnk', '8 Everett Circle', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (224, 34, 4, '230921618', 'Lianne Maes', '4928 Stang Trail', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (225, 17, 2, '655215329', 'Randolph Ribbens', '42217 Ilene Way', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (226, 14, 4, '439450286', 'Tracee Pittendreigh', '472 Victoria Drive', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (227, 6, 1, '609381402', 'Lanny Deane', '88420 Oak Valley Center', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (228, 18, 3, '845567427', 'Martainn Heisham', '03 Bluestem Junction', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (229, 17, 2, '967691250', 'Jeffrey MacGragh', '8 Marcy Avenue', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (230, 27, 2, '937867998', 'Nikolaus Livezley', '81 Upham Plaza', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (231, 19, 4, '774217384', 'Ferdy Tendahl', '50849 Butterfield Parkway', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (232, 20, 5, '358111069', 'Joni Bartocci', '9147 Arkansas Center', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (233, 16, 1, '472348941', 'Agnese Jelf', '79449 Annamark Plaza', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (234, 26, 1, '693850711', 'Leia Cicculi', '68 Mosinee Place', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (235, 24, 4, '150305350', 'Sydel Wilderspoon', '24236 Basil Road', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (236, 2, 2, '635287540', 'Em McGrale', '18 Marcy Drive', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (237, 22, 2, '571499232', 'Tom Westcott', '663 Acker Terrace', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (238, 19, 4, '221498502', 'Weber McAsgill', '9834 Bluejay Center', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (239, 11, 1, '676686326', 'Farleigh Rodd', '6 Buhler Alley', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (240, 11, 1, '013102248', 'Cristi Lundon', '685 Kinsman Avenue', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (241, 2, 2, '250427658', 'Jilli Storton', '306 Magdeline Place', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (242, 24, 4, '863163530', 'Dennet Barnett', '29 Graceland Place', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (243, 25, 5, '450730117', 'Lyle Ellery', '3 Oneill Pass', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (244, 33, 3, '019651322', 'Hamish Sabates', '472 Anderson Way', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (245, 27, 2, '806821791', 'Zaccaria Bucktrout', '9163 Quincy Hill', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (246, 28, 3, '590052063', 'Elsi Danielot', '895 Arrowood Circle', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (247, 5, 5, '654136565', 'Emmy Haxell', '303 Thierer Alley', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (248, 7, 2, '046499283', 'Giff Slimon', '91080 Washington Alley', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (249, 28, 3, '482811676', 'Velvet Huxtable', '273 Loeprich Center', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (250, 5, 5, '543054782', 'Renate Vouls', '5 Iowa Court', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (251, 25, 5, '054622169', 'Giorgio Folker', '80752 Summer Ridge Lane', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (252, 19, 4, '713247150', 'Odelinda Kneale', '53 Banding Circle', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (253, 29, 4, '963306614', 'Katey Jacobsen', '5 Hauk Plaza', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (254, 39, 4, '076821479', 'Catlin Mc Gorley', '20480 Amoth Drive', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (255, 39, 4, '637165974', 'Mariam Cromly', '32 Michigan Pass', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (256, 9, 4, '629473139', 'Jenica Snoxall', '3520 Mandrake Way', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (257, 29, 4, '978360149', 'Emmy Cockton', '6861 Luster Drive', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (258, 31, 1, '008865920', 'Adeline Arundell', '345 Thierer Drive', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (259, 2, 2, '610488162', 'Danice Shillabeare', '5 Milwaukee Center', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (260, 27, 2, '325512755', 'Stearn Allchorn', '882 Browning Drive', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (261, 10, 5, '315738049', 'Sybilla Jandak', '824 Montana Place', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (262, 9, 4, '614746430', 'Ellie Corssen', '9 Heath Place', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (263, 35, 5, '482424545', 'Maxine Krop', '82553 Pawling Circle', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (264, 34, 4, '274195716', 'Land Raulstone', '00 Maywood Parkway', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (265, 20, 5, '925636135', 'Wallache Bastow', '6234 Vidon Center', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (266, 9, 4, '995488335', 'Terrijo Lodder', '363 Homewood Lane', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (267, 36, 1, '569636554', 'Hesther Mersey', '65 Daystar Park', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (268, 33, 3, '082514659', 'Emmy Whiteoak', '1 Union Lane', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (269, 26, 1, '416818951', 'Devina Waterstone', '5 Shelley Avenue', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (270, 31, 1, '128809698', 'Bren Allett', '07 Leroy Junction', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (271, 23, 3, '453779962', 'Xylia Cammomile', '96 Vahlen Trail', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (272, 26, 1, '990756898', 'Nola Crayton', '32 Clyde Gallagher Park', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (273, 10, 5, '336109096', 'Teriann Lillford', '0759 Dakota Terrace', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (274, 4, 4, '065966768', 'Cara Partner', '9518 Butternut Pass', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (275, 21, 1, '268539558', 'Reg Chisolm', '993 Pepper Wood Way', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (276, 40, 5, '891816567', 'Graeme Trobe', '92702 Leroy Road', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (277, 21, 1, '938876698', 'Lisle Munden', '1329 Larry Hill', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (278, 29, 4, '118616503', 'Michaeline Matthius', '55739 Steensland Center', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (279, 40, 5, '582373022', 'Addi Pablo', '98425 Lunder Park', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (280, 34, 4, '557604349', 'Oliviero Lesslie', '1556 Shelley Drive', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (281, 31, 1, '112464557', 'Monty Barthelme', '40846 Lien Point', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (282, 17, 2, '652235901', 'Carey Joll', '4000 Norway Maple Way', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (283, 36, 1, '409030277', 'Shelbi Ashborne', '62421 Mendota Point', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (284, 33, 3, '339359499', 'Clifford Kilpin', '0 Briar Crest Street', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (285, 20, 5, '792072083', 'Koo Ludgrove', '01 Briar Crest Way', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (286, 10, 5, '180699739', 'Ruttger Rootham', '89070 Nelson Circle', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (287, 12, 2, '284399373', 'Skipp Somerfield', '1237 Westend Court', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (288, 33, 3, '798944903', 'Archy Ordemann', '923 Kipling Place', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (289, 26, 1, '525937091', 'Bertina Konzel', '3425 Clove Drive', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (290, 18, 3, '537849278', 'Lark Itscovitz', '26384 Veith Point', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (291, 23, 3, '090310586', 'Janeta Cutcliffe', '70 Havey Circle', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (292, 1, 1, '222014509', 'Jordana Pittson', '85619 Commercial Avenue', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (293, 36, 1, '593522475', 'Daren Spridgen', '35 Heath Point', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (294, 16, 1, '835096612', 'Fianna Caselli', '23662 Division Lane', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (295, 2, 2, '104698674', 'Winni Bertome', '69298 Bartelt Trail', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (296, 26, 1, '556168259', 'Johny Jaycox', '00 Blaine Street', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (297, 1, 1, '658719628', 'Bennie Hawtry', '75 Miller Center', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (298, 23, 3, '531345052', 'Ross Curnock', '85652 Karstens Place', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (299, 32, 2, '356060166', 'Roy Vlahos', '3 Moulton Place', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (300, 27, 2, '410560110', 'Cyndia Ripsher', '562 Lighthouse Bay Center', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (301, 39, 4, '264063376', 'Austin Malin', '4 Almo Road', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (302, 26, 1, '515558427', 'Auroora Hadigate', '26 Lerdahl Circle', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (303, 36, 1, '212081408', 'Walton Valens-Smith', '7 Dottie Plaza', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (304, 32, 2, '030396428', 'Fayth Cavil', '5 American Pass', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (305, 27, 2, '263433321', 'Silas Jugging', '9747 Rusk Circle', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (306, 9, 4, '112655868', 'Gusella Kelleway', '1996 Mcguire Court', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (307, 16, 1, '288416988', 'Falkner Osgordby', '08522 Lunder Trail', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (308, 27, 2, '782466671', 'Nanette Davenport', '4120 Upham Parkway', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (309, 39, 4, '408023977', 'Dun Eustes', '7 Mayer Drive', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (310, 22, 2, '382759727', 'Krissy Blasi', '1 Loomis Alley', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (311, 6, 1, '023723796', 'Violet Gowrie', '57641 Boyd Place', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (312, 37, 2, '671670650', 'Steffane Andree', '783 Arkansas Terrace', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (313, 6, 1, '534917458', 'Yuma Eley', '4 Carpenter Point', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (314, 34, 4, '999963642', 'Helge Bener', '70 Roxbury Pass', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (315, 38, 3, '979717163', 'Gaylord Heskins', '17546 Riverside Lane', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (316, 32, 2, '354491461', 'Devina Antonescu', '34 Muir Hill', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (317, 14, 4, '716834745', 'Cahra McMackin', '1957 Fuller Center', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (318, 7, 2, '614220333', 'Maxy Airds', '58 Springs Plaza', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (319, 4, 4, '375101874', 'Pandora Abbets', '07873 Fisk Street', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (320, 25, 5, '534074297', 'Stephine Elsmor', '1 Annamark Center', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (321, 12, 2, '490221793', 'Wolfy Gormley', '123 Jenifer Alley', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (322, 23, 3, '746203964', 'Bethanne Hawtry', '4 Anhalt Avenue', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (323, 17, 2, '514728471', 'Deanna Bothram', '880 Stephen Center', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (324, 37, 2, '070282114', 'Jorie Kelledy', '9642 Oneill Parkway', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (325, 29, 4, '613168044', 'Herman Axup', '52753 Parkside Point', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (326, 16, 1, '824906201', 'Jackie Northrop', '9 Fordem Pass', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (327, 31, 1, '502788494', 'Rollins Dykes', '7 Bonner Crossing', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (328, 20, 5, '010414243', 'Katherine Ashfull', '70909 Leroy Junction', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (329, 18, 3, '403347703', 'Iggie Denial', '1059 Debs Road', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (330, 40, 5, '654150671', 'Winifield Pantling', '32159 Summit Street', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (331, 11, 1, '920825520', 'Ina Dobson', '69 Reinke Plaza', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (332, 29, 4, '116633862', 'Garner Conahy', '057 Doe Crossing Pass', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (333, 30, 5, '263062343', 'Giraldo Mant', '133 Oak Junction', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (334, 1, 1, '472490412', 'Arlen Morfield', '1513 Merry Pass', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (335, 33, 3, '186585188', 'Mathilde Keech', '3640 Utah Court', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (336, 33, 3, '477034534', 'Alano Fauning', '5928 Mosinee Drive', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (337, 9, 4, '621909117', 'Trina Hewkin', '1 Lyons Lane', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (338, 14, 4, '491729082', 'Cheston Thomelin', '33 Derek Circle', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (339, 5, 5, '977883476', 'Dunstan Girardey', '49598 Derek Terrace', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (340, 7, 2, '450689998', 'Van Isacq', '3 Oakridge Alley', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (341, 35, 5, '557941577', 'Bethany Kobelt', '72728 Granby Park', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (342, 11, 1, '171490976', 'Willis Arangy', '031 Tennyson Place', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (343, 10, 5, '560454537', 'Stern Tench', '09 Lakewood Circle', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (344, 37, 2, '442525094', 'Joelynn Wimsett', '25 Lien Crossing', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (345, 16, 1, '485997939', 'Aldric Stanney', '6 Northfield Road', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (346, 30, 5, '792984927', 'Rochette Gillitt', '92 Erie Place', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (347, 20, 5, '524130415', 'Madelon Battell', '369 Corry Avenue', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (348, 22, 2, '237167048', 'Flora Langer', '425 Jana Park', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (349, 15, 5, '896050870', 'Ted Clewley', '1 Carpenter Alley', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (350, 38, 3, '100725280', 'Adelheid Potter', '2668 Continental Drive', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (351, 8, 3, '703317658', 'Lianna Knolles-Green', '74 Nelson Place', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (352, 29, 4, '602236352', 'Grove Astill', '278 Union Street', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (353, 8, 3, '783711520', 'Corliss Baum', '122 Goodland Terrace', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (354, 15, 5, '154086176', 'Allyn Littefair', '93 Marquette Way', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (355, 12, 2, '830690917', 'Phylys Thayre', '2 Hoffman Hill', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (356, 8, 3, '092794835', 'Normie Krimmer', '3 Welch Street', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (357, 18, 3, '954110381', 'Hoebart Freckingham', '4 Northview Circle', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (358, 13, 3, '309137652', 'Bunnie Bellas', '648 Caliangt Lane', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (359, 23, 3, '633007040', 'Lory Adamovsky', '98913 Hoepker Road', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (360, 33, 3, '639124681', 'Kevyn Cromer', '7 Dennis Place', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (361, 6, 1, '723605009', 'Fanchette Cicculini', '54357 Killdeer Trail', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (362, 11, 1, '607255934', 'Alister Fenck', '527 Quincy Crossing', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (363, 29, 4, '684168317', 'Shel Billham', '0 Lakewood Parkway', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (364, 34, 4, '949594720', 'Judy Budnik', '77 Clove Plaza', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (365, 18, 3, '065783150', 'Cross De La Cote', '96308 Debs Pass', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (366, 33, 3, '512269670', 'Joice Crowthe', '49 Shelley Street', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (367, 3, 3, '368737921', 'Deeann Schonfelder', '32 Loftsgordon Terrace', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (368, 10, 5, '241540281', 'Kerry Kibard', '1 Haas Parkway', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (369, 22, 2, '658630479', 'Nessa Darling', '142 Redwing Street', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (370, 40, 5, '266809140', 'Alford Chubb', '378 Pleasure Alley', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (371, 16, 1, '928161814', 'Tymothy Pieters', '639 Truax Point', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (372, 3, 3, '336653695', 'Mimi Larkcum', '3873 Starling Center', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (373, 19, 4, '849403424', 'Bette Fatkin', '29 Lotheville Place', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (374, 35, 5, '076799305', 'Mattie Ivakhnov', '7 Elmside Circle', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (375, 10, 5, '540429346', 'Bell Cudworth', '5 Drewry Crossing', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (376, 3, 3, '053416121', 'Cobbie Tree', '4 Carberry Terrace', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (377, 32, 2, '890750262', 'Leone Hartman', '25 Beilfuss Court', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (378, 15, 5, '696937756', 'Cristian Hafford', '427 Manufacturers Street', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (379, 26, 1, '522257191', 'Norbie Loving', '855 Ohio Alley', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (380, 16, 1, '652288732', 'Ikey Balsdon', '682 Prairie Rose Street', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (381, 7, 2, '986214424', 'Gerek Veck', '21277 Redwing Court', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (382, 9, 4, '232472819', 'Ardyth Patrick', '57371 Lerdahl Crossing', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (383, 16, 1, '872810941', 'Buck Stag', '67065 Dakota Place', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (384, 18, 3, '716348662', 'Francklin Fenech', '7636 Hollow Ridge Pass', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (385, 37, 2, '689144869', 'Etti Lumbly', '55377 Stoughton Park', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (386, 2, 2, '948958579', 'Kamilah Fisby', '88184 Larry Trail', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (387, 39, 4, '941999928', 'Bradford Tegler', '81702 Pepper Wood Way', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (388, 12, 2, '748146723', 'Clint Elger', '459 Havey Junction', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (389, 13, 3, '054968765', 'Maureene Yeabsley', '7866 Kropf Plaza', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (390, 27, 2, '745559366', 'Afton Heinzel', '888 Morningstar Hill', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (391, 17, 2, '013339893', 'Pablo Bennike', '223 Miller Way', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (392, 15, 5, '228466605', 'Rozalie Scorer', '0 Bobwhite Point', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (393, 24, 4, '768457627', 'Aurore Satterthwaite', '6573 Forest Dale Pass', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (394, 10, 5, '577612310', 'Hobard Fruin', '36858 Marcy Place', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (395, 38, 3, '230592082', 'Brett Swift', '485 Mayer Center', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (396, 19, 4, '552487885', 'Kippie Hagerty', '577 Morningstar Plaza', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (397, 4, 4, '357777009', 'Royal La Batie', '2990 Emmet Hill', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (398, 18, 3, '891886258', 'Eachelle Seiller', '12900 Bowman Trail', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (399, 1, 1, '785905049', 'Mariquilla Pepperill', '792 American Lane', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (400, 29, 4, '910487725', 'Brit Chadwell', '861 Straubel Parkway', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (401, 12, 2, '829722211', 'Teressa Tipling', '97 Heffernan Pass', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (402, 26, 1, '434469411', 'Arlene Reicharz', '7661 Clarendon Road', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (403, 12, 2, '106146899', 'Zachery Marskell', '58 Lawn Crossing', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (404, 8, 3, '937774103', 'Casi Adshed', '78390 Goodland Court', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (405, 28, 3, '181137478', 'Silvan Cunde', '2747 Crest Line Junction', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (406, 30, 5, '579547479', 'Cilka Simonich', '52 Goodland Road', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (407, 30, 5, '717587756', 'Frannie Whitford', '7645 Bluejay Center', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (408, 11, 1, '102503375', 'Sabrina Bareford', '76 Fair Oaks Trail', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (409, 25, 5, '991168237', 'Derry De Roeck', '704 Milwaukee Way', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (410, 19, 4, '037507007', 'Wood Iannazzi', '4731 Cardinal Crossing', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (411, 29, 4, '406649836', 'Wilek Stutely', '97 Kingsford Hill', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (412, 19, 4, '755042811', 'Lyda Monni', '1744 Alpine Crossing', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (413, 27, 2, '079426087', 'Darryl Boobier', '7 Forster Avenue', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (414, 22, 2, '867422420', 'Wyatan Killough', '2 Mosinee Point', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (415, 25, 5, '842926277', 'Genevra Shrimpling', '5430 Buell Trail', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (416, 27, 2, '824922041', 'Etti Allardyce', '6356 Sauthoff Avenue', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (417, 5, 5, '569565368', 'Gabi Dunkley', '5298 Gina Crossing', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (418, 10, 5, '400176800', 'Robby Stoll', '9 Farwell Way', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (419, 22, 2, '873209903', 'Donia Eshmade', '33 Manley Road', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (420, 16, 1, '169852970', 'Raddy Mc Trusty', '534 Tennessee Pass', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (421, 8, 3, '336397034', 'Dionis Baleine', '662 Buell Terrace', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (422, 2, 2, '785973745', 'Graham Hagger', '26 Barnett Crossing', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (423, 38, 3, '706469646', 'Edythe Cuerda', '1696 Kingsford Plaza', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (424, 39, 4, '483089685', 'Bondon Dinnage', '45 Bunting Terrace', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (425, 37, 2, '053234533', 'Verina Gerrard', '8471 Maywood Point', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (426, 32, 2, '862724433', 'Kalila Andrioli', '516 Oak Junction', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (427, 26, 1, '260502984', 'Claudell Hiers', '3 Mayer Trail', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (428, 8, 3, '286051536', 'Angel Slatford', '55 Canary Park', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (429, 8, 3, '496345476', 'Corby Piscopello', '37242 Coleman Alley', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (430, 35, 5, '140919855', 'Irina Galpin', '141 Delladonna Court', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (431, 28, 3, '722525682', 'Buddie Songest', '7 Lighthouse Bay Street', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (432, 21, 1, '224625396', 'Eleni Zorzoni', '3087 Bowman Road', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (433, 40, 5, '566925927', 'Nolie Scaife', '44 Boyd Park', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (434, 23, 3, '852972505', 'Maura Lorey', '1574 Bonner Trail', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (435, 8, 3, '670858444', 'Wallie Humberstone', '3 Sunbrook Way', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (436, 32, 2, '387918902', 'Ardene Keling', '2 Fieldstone Trail', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (437, 35, 5, '451408274', 'Moll Boole', '70 Parkside Way', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (438, 13, 3, '770359182', 'Romonda Hainge', '35184 Logan Street', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (439, 17, 2, '071209951', 'Lenore Alforde', '9 Homewood Circle', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (440, 31, 1, '671340397', 'Leia Arnald', '01 Crest Line Alley', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (441, 6, 1, '094641824', 'Farrah Ramsdell', '63091 Quincy Alley', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (442, 13, 3, '713823876', 'Arty Beddoes', '18730 Garrison Avenue', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (443, 31, 1, '857632308', 'Livvyy Dalziel', '8720 Spenser Crossing', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (444, 16, 1, '544208139', 'Carr Shelton', '9 Springs Road', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (445, 16, 1, '517714044', 'Keir Blaise', '59 Sutherland Alley', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (446, 22, 2, '254604030', 'Rebbecca Hehnke', '6 Dahle Park', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (447, 4, 4, '576206992', 'Rinaldo Feitosa', '90 Helena Alley', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (448, 18, 3, '486953846', 'Bab Towhey', '041 Morrow Terrace', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (449, 2, 2, '127953910', 'Dorine Bonevant', '2843 Lunder Parkway', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (450, 36, 1, '866461043', 'Deane Bulleyn', '8057 Pepper Wood Drive', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (451, 17, 2, '652810658', 'Elsi Banaszewski', '09539 Memorial Junction', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (452, 11, 1, '239737627', 'Lisha Dessent', '50 8th Junction', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (453, 6, 1, '197547110', 'Roma Mountcastle', '631 Twin Pines Trail', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (454, 7, 2, '725369869', 'Gerty Cork', '612 Westerfield Terrace', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (455, 31, 1, '134478459', 'Lonnie Bulfoot', '08923 Gina Trail', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (456, 19, 4, '397923093', 'Noland Pancost', '0 Wayridge Place', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (457, 14, 4, '502263006', 'Jemmie Losbie', '212 Northridge Street', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (458, 5, 5, '743886481', 'Simone Buyers', '8 Cardinal Trail', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (459, 15, 5, '952849377', 'Virgilio Mathis', '79 Logan Center', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (460, 29, 4, '408173907', 'Ambros Tellenbach', '2130 Arapahoe Lane', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (461, 22, 2, '714068070', 'Pepillo Tooher', '3 Prairie Rose Crossing', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (462, 37, 2, '714120694', 'Shannen Paulot', '37 Tennessee Place', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (463, 34, 4, '955665720', 'Joli Fidian', '7 Warner Alley', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (464, 29, 4, '712350837', 'Katerina Oliveira', '943 Dixon Pass', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (465, 12, 2, '055821993', 'Kerstin Gaythor', '35 Independence Trail', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (466, 38, 3, '284968569', 'Valina Rothert', '36687 Warrior Drive', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (467, 9, 4, '662876728', 'Ozzy Wagner', '12770 Morningstar Parkway', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (468, 38, 3, '732953516', 'Alister Wharfe', '9959 Knutson Trail', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (469, 38, 3, '849924615', 'Sarina Babington', '7708 Towne Parkway', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (470, 6, 1, '718088367', 'Britte Napolitano', '9114 Portage Center', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (471, 14, 4, '036720801', 'Zacharias Dallicoat', '24 Melody Park', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (472, 31, 1, '390088576', 'Wash Iggalden', '5302 New Castle Point', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (473, 30, 5, '451103393', 'Modestine Baxendale', '94 Golf Place', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (474, 38, 3, '002757290', 'Kilian Pocklington', '2403 Coleman Court', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (475, 1, 1, '973747605', 'Flint Philcott', '975 Tomscot Avenue', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (476, 7, 2, '636925796', 'Joey Muggeridge', '01 Village Green Way', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (477, 34, 4, '349496894', 'Stearn Course', '84 Northland Trail', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (478, 40, 5, '216340072', 'Leroy Wilcockes', '1848 Independence Parkway', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (479, 9, 4, '585842762', 'Gerta Iddy', '4 Glacier Hill Road', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (480, 2, 2, '112004081', 'Cass Shillitto', '21 Lawn Lane', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (481, 5, 5, '331385955', 'Lorenza Fedder', '90 Autumn Leaf Street', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (482, 3, 3, '509615406', 'Giulia Howland', '80 Evergreen Point', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (483, 21, 1, '027390380', 'Jannel Lodemann', '65 Morrow Alley', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (484, 6, 1, '010981415', 'Dinny Barstowk', '55449 Oakridge Place', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (485, 40, 5, '182013539', 'Ryan Grimwood', '74782 Columbus Pass', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (486, 22, 2, '870303440', 'Korella Tumbelty', '612 Vermont Plaza', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (487, 4, 4, '395165151', 'Cybil Simoncini', '9911 Pankratz Place', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (488, 16, 1, '375081695', 'Marius MacDowal', '4890 Porter Crossing', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (489, 24, 4, '243277685', 'Elka Paterno', '83 Service Place', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (490, 14, 4, '252405159', 'Maurizia Chapleo', '991 Cordelia Court', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (491, 36, 1, '499516312', 'Fanni Francklyn', '2 Thompson Junction', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (492, 24, 4, '486764915', 'Eva Timny', '464 Lillian Pass', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (493, 40, 5, '428353917', 'Liliane Matic', '85 Dakota Place', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (494, 31, 1, '482323419', 'Iris Criag', '48715 Stephen Parkway', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (495, 18, 3, '533688256', 'Lynne Aloway', '3 Ruskin Center', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (496, 19, 4, '192800672', 'Mira Boxer', '4 Monica Parkway', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (497, 11, 1, '380505423', 'Gonzalo Gartell', '99 Corben Plaza', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (498, 38, 3, '468744007', 'Tabor Scud', '29928 Brickson Park Street', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (499, 19, 4, '973423574', 'Timothee Bourchier', '004 3rd Hill', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (500, 4, 4, '362104160', 'Ashton Cheine', '8023 Kropf Alley', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (501, 13, 3, '939640073', 'Huberto Bread', '35931 Meadow Vale Junction', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (502, 33, 3, '495199161', 'Eddi Stothert', '89471 Russell Road', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (503, 38, 3, '201161775', 'Gael Rosenbush', '32 Luster Parkway', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (504, 18, 3, '936076283', 'Carl Duns', '03880 Sugar Alley', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (505, 17, 2, '345835621', 'Sarette Snookes', '364 Mariners Cove Point', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (506, 39, 4, '231709213', 'Averill MacNeilley', '317 Havey Trail', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (507, 33, 3, '675593685', 'Cary Niles', '92 Center Pass', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (508, 6, 1, '542281759', 'Klaus Pumfrey', '562 Swallow Way', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (509, 23, 3, '658288402', 'Wyndham Yesenin', '50 Elmside Road', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (510, 20, 5, '023136113', 'Dania Loweth', '07 Lotheville Plaza', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (511, 7, 2, '037932893', 'L;urette Eddowes', '1 7th Road', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (512, 25, 5, '018113578', 'Jodie Pottberry', '3597 Clove Street', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (513, 8, 3, '581718053', 'Abbe Rackstraw', '0220 Crescent Oaks Road', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (514, 29, 4, '817313775', 'Darcy Cherrington', '64677 Barnett Lane', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (515, 37, 2, '676751961', 'Evin Verlander', '05 Westridge Park', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (516, 33, 3, '577502861', 'Elwyn Washtell', '979 Bowman Pass', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (517, 2, 2, '803508898', 'Thaddus Labbe', '926 Russell Circle', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (518, 31, 1, '641001605', 'Philly Monte', '4 Hovde Parkway', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (519, 27, 2, '897431431', 'Ignacius Nesbeth', '55424 Mitchell Park', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (520, 40, 5, '289570523', 'Reagen Hails', '950 Buena Vista Plaza', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (521, 4, 4, '333120429', 'Katusha Gunton', '9499 Muir Hill', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (522, 17, 2, '650387776', 'Trix Beachamp', '5583 Barnett Road', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (523, 11, 1, '923799125', 'Felita Bjerkan', '12 Dorton Circle', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (524, 18, 3, '089218256', 'Fanechka Farra', '2 Sullivan Street', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (525, 18, 3, '024097344', 'Cecilla Ellens', '1228 Rieder Hill', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (526, 40, 5, '432470710', 'Dud Duncanson', '3 Crest Line Road', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (527, 5, 5, '616427586', 'Lorrin Cawthry', '99597 Waxwing Terrace', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (528, 35, 5, '307744502', 'Hazel Jent', '4935 Little Fleur Street', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (529, 38, 3, '566218812', 'Cacilia Shubotham', '9865 Southridge Terrace', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (530, 17, 2, '845182377', 'Sabrina Taye', '32 Crownhardt Plaza', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (531, 33, 3, '272191656', 'Charis Fiddiman', '10766 Ruskin Avenue', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (532, 29, 4, '661436642', 'Benetta Van Castele', '87 Anthes Avenue', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (533, 27, 2, '551741069', 'Maisie Ramsbottom', '709 Goodland Park', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (534, 5, 5, '228484986', 'Yelena Vella', '58 7th Street', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (535, 13, 3, '514116672', 'Kilian Oldrey', '0261 Red Cloud Park', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (536, 26, 1, '105319798', 'Tann Quilligan', '8 Shelley Crossing', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (537, 35, 5, '018383334', 'Darby Crippill', '73 Fairview Road', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (538, 4, 4, '907084513', 'Gabrielle Stidworthy', '9 Coleman Crossing', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (539, 21, 1, '189040854', 'Rozelle Steffens', '3 Butternut Avenue', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (540, 11, 1, '137857347', 'Joachim Remington', '6476 Burning Wood Circle', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (541, 38, 3, '163967053', 'Nickola Santoro', '5 Ridgeway Court', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (542, 30, 5, '462764093', 'Bambi Glassopp', '89809 Green Ridge Circle', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (543, 33, 3, '268954298', 'Berkley Tellesson', '232 Helena Terrace', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (544, 24, 4, '911897658', 'Elicia Bagwell', '23423 Magdeline Point', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (545, 8, 3, '666442449', 'Glennie Cuschieri', '8484 Basil Street', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (546, 37, 2, '854823152', 'Erin Kliner', '70 Hagan Avenue', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (547, 14, 4, '205108010', 'Shurwood Parchment', '00 Dunning Circle', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (548, 27, 2, '012089374', 'Berna Bleyman', '0584 Valley Edge Way', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (549, 8, 3, '675124724', 'Gaylord Lackmann', '751 Toban Avenue', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (550, 15, 5, '497155473', 'Enrichetta Sterland', '0828 Saint Paul Hill', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (551, 10, 5, '344334114', 'Hallsy Kroch', '2 Golf Pass', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (552, 24, 4, '429745770', 'Rea McVitie', '401 Badeau Park', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (553, 40, 5, '617291107', 'Tobe Norsister', '966 Golf Circle', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (554, 27, 2, '968867552', 'Avery Bather', '0960 Corben Hill', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (555, 2, 2, '418973890', 'Clovis Fraser', '8 Lukken Parkway', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (556, 19, 4, '974589427', 'Quinton Manns', '56031 Manufacturers Road', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (557, 28, 3, '200356334', 'Callida Harral', '29 Macpherson Alley', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (558, 4, 4, '778181250', 'Shelley Denyukhin', '28087 Westerfield Plaza', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (559, 26, 1, '161788341', 'Vonny Whitta', '837 Londonderry Road', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (560, 7, 2, '111994024', 'Bear Swindell', '46 Marcy Point', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (561, 17, 2, '153109625', 'Cosimo Quarton', '282 Raven Avenue', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (562, 11, 1, '519877474', 'Bo Paslow', '31708 Ramsey Pass', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (563, 1, 1, '531940683', 'Consuelo Piddock', '03 Columbus Avenue', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (564, 39, 4, '429443490', 'Mallory Christaeas', '556 Amoth Way', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (565, 18, 3, '015009061', 'Casi Le Sarr', '9507 Clarendon Alley', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (566, 4, 4, '243779801', 'Reba Sirmon', '55317 Banding Center', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (567, 31, 1, '978613615', 'Ettore Whelband', '143 Northwestern Lane', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (568, 3, 3, '020921774', 'Sheilah Gellately', '9 Hagan Alley', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (569, 13, 3, '169260514', 'Vinnie Teaz', '1283 Schmedeman Road', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (570, 31, 1, '828655793', 'Salomi Idwal Evans', '07 Trailsway Crossing', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (571, 12, 2, '678703944', 'Birk Lamblot', '1 Debra Court', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (572, 31, 1, '603439721', 'Samantha Melville', '66 Corscot Lane', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (573, 36, 1, '757598016', 'June Beadham', '50 Westport Pass', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (574, 6, 1, '687656004', 'Kylie Canto', '03065 Jana Way', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (575, 3, 3, '065988502', 'Mano Christofor', '3 Hoffman Alley', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (576, 18, 3, '342129505', 'Link De Lorenzo', '57135 Glacier Hill Alley', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (577, 38, 3, '399046381', 'Konstanze Barsham', '172 Glacier Hill Center', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (578, 34, 4, '209007274', 'Carrol Vel', '02768 West Point', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (579, 15, 5, '470699153', 'Anni Dyson', '7050 Fremont Center', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (580, 8, 3, '409655017', 'Sax Cassey', '4 Bobwhite Avenue', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (581, 29, 4, '897836205', 'Shell Lynd', '955 Straubel Alley', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (582, 7, 2, '509340363', 'Burl Klisch', '65 Holmberg Junction', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (583, 16, 1, '858797587', 'Danica Forty', '18 Sunfield Avenue', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (584, 10, 5, '673227839', 'Alexis Sivorn', '29316 Judy Junction', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (585, 7, 2, '833797462', 'Giffer Cotesford', '1 Westport Street', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (586, 18, 3, '244633662', 'Nicol Reeves', '9035 Oak Valley Road', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (587, 37, 2, '217782055', 'Anna-diana Engel', '0 Grayhawk Road', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (588, 28, 3, '925240601', 'Irwinn Atherley', '221 Milwaukee Place', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (589, 28, 3, '978427076', 'Denice Lazer', '7418 Mccormick Center', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (590, 14, 4, '464301758', 'Calypso Roaf', '7 Tennyson Park', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (591, 20, 5, '112339469', 'Gaven Pester', '89 Hintze Pass', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (592, 29, 4, '221757217', 'Prudi Melland', '03750 Hoepker Trail', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (593, 13, 3, '602958839', 'Eulalie Grafton', '105 Scoville Road', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (594, 28, 3, '837001113', 'Cass Peartree', '06824 Luster Circle', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (595, 2, 2, '109251607', 'Bethina Olyet', '7437 Utah Place', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (596, 27, 2, '136965105', 'Elsworth Floyd', '46551 Manitowish Alley', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (597, 31, 1, '792046383', 'Cornie Orrah', '75599 Reinke Way', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (598, 9, 4, '831519088', 'Corty Tour', '6153 Service Trail', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (599, 8, 3, '516301297', 'Gilburt Titterrell', '95 Grim Trail', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (600, 26, 1, '736296362', 'Chiquita Eadon', '709 Sutherland Parkway', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (601, 27, 2, '295743961', 'Doti Lade', '4434 Leroy Pass', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (602, 9, 4, '174704266', 'David Syne', '64 Duke Parkway', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (603, 19, 4, '929046617', 'Maison Dorking', '6063 Thackeray Trail', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (604, 36, 1, '042880288', 'Gwyn Eadmead', '0743 Bunting Place', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (605, 29, 4, '755881965', 'Emelda McWilliam', '8 Armistice Pass', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (606, 20, 5, '849508601', 'Malorie Kewish', '88021 Farwell Drive', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (607, 11, 1, '348956566', 'Donna Burree', '91797 Orin Way', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (608, 3, 3, '358266699', 'Jenna Blasl', '47650 East Junction', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (609, 22, 2, '278462002', 'Gregorio Braim', '29 8th Point', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (610, 6, 1, '387878789', 'Ethel Pinnigar', '531 Reindahl Street', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (611, 2, 2, '592010415', 'Lenna Barbisch', '25 Burning Wood Crossing', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (612, 21, 1, '046026368', 'Carie Jelphs', '516 Milwaukee Alley', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (613, 17, 2, '238171433', 'Orel Shirer', '59642 Stang Park', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (614, 13, 3, '013488727', 'Barrie Burker', '51 Heath Center', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (615, 27, 2, '458927930', 'Dasi Marquis', '3542 Marquette Parkway', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (616, 11, 1, '808275651', 'Anne Dowyer', '601 Sage Street', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (617, 35, 5, '208864789', 'Wood Bickersteth', '9 Surrey Junction', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (618, 25, 5, '357072801', 'Celeste Hawksley', '4854 Granby Point', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (619, 19, 4, '794095433', 'Rafaelita Writer', '0 Prairie Rose Street', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (620, 8, 3, '847128314', 'Arlen Sikorski', '2 Roth Drive', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (621, 18, 3, '628321636', 'Malvina Birchner', '4656 Meadow Valley Plaza', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (622, 28, 3, '415550232', 'Jeannine McAtamney', '74 Westend Drive', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (623, 12, 2, '903518026', 'Henrieta Guillot', '29567 Fisk Junction', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (624, 29, 4, '376877175', 'Chev Tuddall', '32 Red Cloud Avenue', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (625, 15, 5, '881383061', 'Dorey Hamprecht', '15388 Monument Point', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (626, 23, 3, '868502078', 'Salim Ivatts', '4280 Lake View Alley', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (627, 30, 5, '108298530', 'Shae Pozer', '95403 High Crossing Court', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (628, 35, 5, '658283574', 'Elwin Drinkhill', '0 Thierer Terrace', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (629, 14, 4, '532906790', 'Jackie Stag', '749 Dryden Junction', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (630, 27, 2, '450635220', 'Avivah Terrington', '0 Westport Court', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (631, 31, 1, '489391947', 'Mair Elbourne', '22580 Ruskin Alley', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (632, 26, 1, '970622375', 'Randi Youhill', '94 South Parkway', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (633, 10, 5, '476815449', 'Brunhilda Pietrusiak', '7 Mitchell Parkway', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (634, 23, 3, '256324842', 'Stanleigh Chesterman', '54675 Darwin Park', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (635, 34, 4, '676877443', 'Marwin Pagon', '7597 Kingsford Alley', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (636, 6, 1, '010508598', 'Leeland Firman', '23 Fordem Plaza', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (637, 18, 3, '677784340', 'Kayla Ineson', '41 Claremont Street', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (638, 37, 2, '742203532', 'Nicol Naisbet', '759 Elgar Alley', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (639, 16, 1, '218571419', 'Fania Getten', '1910 Dunning Point', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (640, 6, 1, '234506297', 'Ania Vinall', '08 Calypso Terrace', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (641, 34, 4, '289046784', 'Devora Cridlan', '494 Waubesa Lane', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (642, 17, 2, '124958972', 'Raymond Roote', '7 Lien Plaza', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (643, 19, 4, '442413571', 'Harry Summerscales', '9 Hayes Terrace', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (644, 9, 4, '066102172', 'Kearney Blaydon', '46 Independence Place', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (645, 19, 4, '719320845', 'Jacquenette Olwen', '390 Farwell Circle', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (646, 13, 3, '657295738', 'Nefen Folkard', '4 Weeping Birch Place', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (647, 11, 1, '342172510', 'Gayle Petzolt', '9 Paget Plaza', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (648, 26, 1, '628702415', 'Elle Curror', '620 Kingsford Hill', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (649, 29, 4, '169550680', 'Charissa Szymanek', '03 7th Alley', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (650, 28, 3, '626077093', 'Grissel Plackstone', '2 Hauk Crossing', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (651, 27, 2, '971976341', 'Brana Kix', '62794 Westerfield Court', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (652, 25, 5, '879923854', 'Aryn Starbeck', '1893 Cambridge Road', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (653, 15, 5, '956801786', 'Alida Lindfors', '81639 Darwin Way', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (654, 31, 1, '451634674', 'Erena MacCafferty', '84 Bayside Junction', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (655, 14, 4, '488135947', 'Dalton Gopsill', '6195 Lakewood Gardens Lane', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (656, 15, 5, '741511057', 'Filippo Fullerd', '023 Anderson Pass', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (657, 36, 1, '419117897', 'Rey Shugg', '19393 Gulseth Circle', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (658, 21, 1, '680078065', 'Caspar Georgeon', '74893 Memorial Avenue', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (659, 11, 1, '926829855', 'Goraud Sanderson', '9 Holmberg Lane', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (660, 26, 1, '623510137', 'Christie Brockhurst', '69 Luster Junction', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (661, 1, 1, '754706368', 'Sasha Hawke', '58 Coleman Parkway', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (662, 13, 3, '819193533', 'Ivory Ferrar', '15 Eggendart Terrace', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (663, 38, 3, '351578190', 'Phip Fishpond', '0 Schmedeman Drive', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (664, 7, 2, '539943764', 'Guillemette Merck', '5317 Heffernan Center', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (665, 13, 3, '818585144', 'Leicester Featherstonhaugh', '2 Starling Place', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (666, 25, 5, '111221746', 'Sidoney Braune', '285 Texas Center', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (667, 14, 4, '021900217', 'Upton Maken', '77349 Melrose Lane', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (668, 15, 5, '594898783', 'Cornell Dunford', '953 Bartillon Park', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (669, 30, 5, '863669967', 'Clementia Dampney', '5 Veith Place', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (670, 14, 4, '730822510', 'Jennie Belone', '6 Meadow Ridge Alley', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (671, 27, 2, '997121108', 'Malcolm Lorincz', '192 Arapahoe Way', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (672, 40, 5, '523913974', 'Braden MacGeffen', '9 Emmet Center', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (673, 24, 4, '499485153', 'Ingelbert Minelli', '6399 Sycamore Drive', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (674, 9, 4, '458281409', 'Emanuel Beese', '9 Kim Parkway', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (675, 8, 3, '182035469', 'Bobbye Pembridge', '2 Steensland Circle', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (676, 25, 5, '216016927', 'Kath Keelan', '3 Warrior Lane', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (677, 17, 2, '983151814', 'Leslie Duffield', '612 Eliot Street', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (678, 6, 1, '935500374', 'Carol Plaice', '2 Basil Hill', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (679, 28, 3, '552334294', 'Alyssa Mark', '3 Barby Park', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (680, 29, 4, '560959163', 'Eran Moralee', '861 Hansons Junction', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (681, 39, 4, '498231187', 'Osbourne Quade', '795 Carioca Trail', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (682, 6, 1, '191161353', 'Jackie Ryding', '16 Miller Road', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (683, 2, 2, '809287696', 'Verge McAllen', '2620 Miller Place', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (684, 30, 5, '785616203', 'Guillema Leades', '605 Dayton Avenue', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (685, 34, 4, '514608529', 'Myrtice Bryceson', '904 Artisan Parkway', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (686, 5, 5, '750428679', 'Raquela Spadaro', '44 Marquette Way', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (687, 9, 4, '119905786', 'Zacherie McCrory', '8848 Scott Hill', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (688, 3, 3, '971173115', 'Tam Stollenbeck', '15 Banding Way', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (689, 13, 3, '772721184', 'Simmonds Tatersale', '3218 Fairview Street', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (690, 20, 5, '186881409', 'Trixi Wogdon', '136 Alpine Hill', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (691, 1, 1, '869976374', 'Jason Monnelly', '2 Prentice Place', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (692, 26, 1, '760086403', 'Andy Kinde', '00 Stoughton Terrace', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (693, 19, 4, '933692315', 'Eberhard Nappin', '177 Sachtjen Circle', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (694, 16, 1, '126829457', 'Vyky Edgeson', '1082 Sommers Lane', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (695, 33, 3, '099040080', 'Andeee Licciardi', '4 Del Sol Road', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (696, 15, 5, '798976507', 'Sarina Bartel', '38900 1st Pass', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (697, 36, 1, '241727206', 'Jeniffer Canty', '71 Hoepker Center', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (698, 21, 1, '441177355', 'Dell Gask', '3 Portage Pass', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (699, 34, 4, '406275619', 'Paulie Chillingsworth', '323 Carioca Place', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (700, 4, 4, '095354492', 'Nicoli Dossantos', '44851 Marcy Place', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (701, 16, 1, '661448027', 'Skell Kinnen', '0 Kings Circle', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (702, 13, 3, '668589398', 'Milicent Slimm', '6 Bobwhite Center', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (703, 35, 5, '985527174', 'Julie Crennell', '4 Goodland Hill', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (704, 22, 2, '183737043', 'Sandi Ortes', '7471 Sloan Court', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (705, 36, 1, '605552071', 'Daveta McAvey', '09396 Kenwood Avenue', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (706, 30, 5, '072621071', 'Rube Hrihorovich', '74391 Oneill Hill', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (707, 30, 5, '981238573', 'Charley Josephs', '883 Longview Park', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (708, 39, 4, '520363071', 'Raina Balffye', '2 Westport Plaza', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (709, 14, 4, '939621956', 'Claudelle Renzo', '994 Thackeray Road', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (710, 32, 2, '660306108', 'Hodge Trebilcock', '8287 Dwight Street', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (711, 30, 5, '044862247', 'Novelia Jinkin', '800 1st Avenue', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (712, 37, 2, '004962254', 'Harcourt Powderham', '51 Brickson Park Trail', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (713, 14, 4, '906134235', 'Josephine Bertin', '10 Summer Ridge Junction', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (714, 19, 4, '313620095', 'Opal Sinkins', '551 Killdeer Plaza', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (715, 25, 5, '646100396', 'Gustav Basham', '60809 Hallows Trail', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (716, 27, 2, '711546155', 'Cash Effaunt', '596 Waywood Hill', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (717, 40, 5, '075231774', 'Sayers Brosel', '72 Duke Terrace', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (718, 12, 2, '677058351', 'Davita Zmitrovich', '955 Orin Lane', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (719, 34, 4, '343131369', 'Elysia Rodinger', '3 Erie Way', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (720, 5, 5, '939939624', 'Jennie Aldington', '66876 Hintze Alley', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (721, 27, 2, '654123627', 'Edie Sellor', '0231 Eggendart Park', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (722, 3, 3, '971129967', 'Saloma Easeman', '725 Carberry Park', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (723, 13, 3, '335797299', 'Orlan Jarrad', '29137 Loftsgordon Drive', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (724, 10, 5, '861009948', 'Cheslie Pentecost', '3 Truax Street', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (725, 11, 1, '283255620', 'Bamby Coggen', '3 Waubesa Place', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (726, 6, 1, '034527447', 'Ogdan Skilton', '32 Spenser Parkway', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (727, 20, 5, '144509942', 'Katee Crickmore', '36491 Almo Lane', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (728, 12, 2, '214480382', 'Bastien Lumbers', '960 Monica Center', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (729, 34, 4, '738689034', 'Ardys Wooton', '841 Eggendart Point', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (730, 23, 3, '206968899', 'Garv Thirtle', '18 Victoria Terrace', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (731, 20, 5, '060427609', 'Angela Mudge', '81 Grayhawk Junction', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (732, 23, 3, '371444080', 'Rochelle Cheves', '64 Paget Park', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (733, 22, 2, '990379746', 'Tait Calbreath', '0194 Pleasure Place', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (734, 37, 2, '415495852', 'Clare Goward', '3 Oriole Junction', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (735, 28, 3, '953042079', 'Caitrin Fordyce', '1 Mayer Hill', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (736, 34, 4, '383464521', 'Dalenna Proven', '3360 Sunfield Pass', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (737, 30, 5, '231397456', 'Carolin Hellings', '911 Quincy Alley', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (738, 4, 4, '055942280', 'Kurtis Edeler', '215 Del Mar Avenue', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (739, 28, 3, '824036434', 'Gunter Arendsen', '5979 Texas Place', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (740, 23, 3, '398548982', 'Hugo Courage', '814 Spaight Park', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (741, 38, 3, '337927265', 'Lowell cornhill', '4 Summit Place', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (742, 23, 3, '676397306', 'Sutherlan Atheis', '1 Nancy Avenue', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (743, 11, 1, '713174681', 'Leonidas Gracewood', '39413 Amoth Circle', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (744, 27, 2, '181235828', 'Jessika Drage', '322 Nelson Alley', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (745, 8, 3, '398428174', 'Kerk Simacek', '34 Victoria Alley', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (746, 7, 2, '136945796', 'Clifford Skill', '8775 Grim Lane', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (747, 24, 4, '375864937', 'Gilbert Martinolli', '8228 Park Meadow Way', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (748, 7, 2, '057339414', 'Sollie Lamplugh', '68483 Harper Way', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (749, 22, 2, '807780877', 'Marion Penhalewick', '2703 Kingsford Plaza', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (750, 27, 2, '226025988', 'Dalli Owen', '61 Westridge Court', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (751, 3, 3, '083845670', 'Katlin Lumsdon', '6180 Milwaukee Way', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (752, 17, 2, '205726252', 'Bondon Dureden', '3 Comanche Alley', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (753, 11, 1, '406261771', 'Currey Firbanks', '9 Rigney Junction', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (754, 1, 1, '639932241', 'Ami Heis', '50472 Colorado Pass', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (755, 37, 2, '656748870', 'Byrom O''Driscoll', '1306 Autumn Leaf Junction', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (756, 8, 3, '581440983', 'Billy Colbridge', '41445 Morningstar Pass', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (757, 12, 2, '104899010', 'Conni Ingerfield', '420 Del Sol Park', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (758, 4, 4, '082658866', 'Emmery Stonham', '7767 Eggendart Trail', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (759, 16, 1, '999567137', 'Harper Swatradge', '3031 Schiller Street', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (760, 28, 3, '236965375', 'Randee Domange', '71466 Forest Trail', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (761, 28, 3, '352392538', 'Felic Balcers', '38 5th Circle', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (762, 8, 3, '259794128', 'Doy Scogin', '14256 Corry Park', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (763, 2, 2, '267903328', 'Harriette Beilby', '17644 Melvin Hill', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (764, 3, 3, '558434997', 'Spencer Ditt', '646 Banding Plaza', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (765, 8, 3, '729230933', 'Suzette Gibben', '72 Lotheville Avenue', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (766, 30, 5, '598842851', 'Susy Garr', '149 Roxbury Circle', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (767, 28, 3, '746397138', 'Lesley Schulter', '337 Mandrake Junction', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (768, 8, 3, '394792551', 'Dal Winspare', '7 Wayridge Terrace', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (769, 38, 3, '380740428', 'Lenette Wofenden', '0608 Debra Hill', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (770, 3, 3, '473538402', 'Rayshell Freezor', '94 Talisman Crossing', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (771, 2, 2, '996207618', 'Eli Sibray', '015 Muir Parkway', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (772, 5, 5, '360490088', 'Alexandre Vasilik', '4 Everett Pass', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (773, 7, 2, '980285100', 'Miltie Demonge', '71042 Washington Street', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (774, 2, 2, '854933003', 'Nicko Andric', '193 East Street', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (775, 21, 1, '874512529', 'Yvette Tankus', '6282 Norway Maple Point', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (776, 33, 3, '224028678', 'Feliks Malitrott', '351 Melrose Terrace', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (777, 20, 5, '363485210', 'Josias Janjic', '91689 Pankratz Circle', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (778, 2, 2, '600286647', 'Siffre Cohani', '3 Elka Trail', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (779, 18, 3, '294756588', 'Liam Rosenberger', '65 Steensland Plaza', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (780, 18, 3, '433035277', 'Clarice Worledge', '8949 Thierer Court', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (781, 21, 1, '009494201', 'Carmen Vaughan-Hughes', '38127 Crest Line Parkway', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (782, 1, 1, '185740820', 'Bevan Venour', '0057 Shasta Circle', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (783, 9, 4, '389388213', 'Jarret Shatford', '0209 Summerview Park', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (784, 4, 4, '951288776', 'Quinn Feben', '781 Mccormick Alley', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (785, 40, 5, '726157445', 'Travus Chimienti', '98218 Tennessee Drive', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (786, 1, 1, '304233082', 'Patrizio Balsillie', '51 Di Loreto Trail', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (787, 12, 2, '573876421', 'Brunhilda Cogdon', '73003 Westerfield Parkway', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (788, 24, 4, '568618611', 'Adey Grenville', '9 Anhalt Road', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (789, 27, 2, '869860693', 'Nathan Abdey', '40 Village Green Alley', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (790, 10, 5, '011184909', 'Brenda Karle', '2 West Parkway', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (791, 33, 3, '189438814', 'Dino Cutmere', '58206 Cordelia Drive', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (792, 22, 2, '300362619', 'Lilith Rebert', '62 Washington Hill', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (793, 27, 2, '945765069', 'Farrel Skace', '24 7th Plaza', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (794, 8, 3, '768115476', 'Elinor Le Quesne', '9 Jay Road', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (795, 12, 2, '857891591', 'Cirstoforo Kaasmann', '405 Hauk Trail', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (796, 37, 2, '796654128', 'Den Darte', '58109 Towne Pass', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (797, 20, 5, '728968427', 'Haley Vonderdell', '63358 Fisk Trail', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (798, 33, 3, '534553029', 'Almira Shulem', '3 Jenna Parkway', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (799, 12, 2, '283016364', 'Frans Lister', '579 Shelley Center', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (800, 23, 3, '787742936', 'Ashley Gandley', '2121 Toban Trail', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (801, 29, 4, '842366778', 'Coraline Brimblecomb', '49090 Prairieview Plaza', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (802, 40, 5, '082227394', 'Kaitlyn Shoemark', '627 Menomonie Court', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (803, 29, 4, '195456382', 'Maggie Medcalfe', '917 Messerschmidt Hill', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (804, 24, 4, '863139634', 'Westbrooke Biermatowicz', '26464 Monica Street', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (805, 21, 1, '768925157', 'Madison Saintsbury', '2076 Kings Hill', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (806, 5, 5, '665165842', 'Merl Smitheram', '39 Redwing Lane', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (807, 25, 5, '295049690', 'Anestassia Murrey', '26 Bunting Avenue', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (808, 5, 5, '183375348', 'Patience Toppes', '58 Eagle Crest Street', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (809, 17, 2, '760128447', 'Trish Staynes', '303 Westend Trail', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (810, 9, 4, '728961153', 'Karrah Coen', '369 Lerdahl Trail', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (811, 33, 3, '306251526', 'Brice Goult', '97676 Dryden Plaza', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (812, 15, 5, '248354412', 'Malinde Brewer', '42679 Comanche Plaza', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (813, 39, 4, '706178011', 'Ketti Fraczak', '8 Portage Terrace', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (814, 5, 5, '130781236', 'Chaunce Dawes', '6 Mcbride Trail', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (815, 18, 3, '256231600', 'Vivie Revance', '881 Melrose Terrace', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (816, 8, 3, '640429621', 'Wendi Baudinelli', '568 Golf Course Place', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (817, 31, 1, '130093772', 'Emma Davitashvili', '2 Del Mar Junction', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (818, 33, 3, '478779470', 'Bobby Ditchburn', '51396 Almo Terrace', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (819, 33, 3, '339476266', 'Towny Swatridge', '80 Cottonwood Junction', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (820, 13, 3, '933911962', 'Berny Avrahamoff', '78952 Londonderry Lane', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (821, 11, 1, '785104839', 'Thurston Blevin', '144 Fisk Hill', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (822, 34, 4, '510497269', 'Paul Fatscher', '6 Hagan Circle', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (823, 34, 4, '095614193', 'Alistair Getley', '9090 Marquette Trail', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (824, 20, 5, '003479067', 'Sherline Lithcow', '88910 Loeprich Trail', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (825, 1, 1, '929357953', 'Hanny Greeson', '2213 Toban Street', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (826, 27, 2, '997887312', 'Carolynn Dunkerton', '33 Grover Avenue', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (827, 25, 5, '862606315', 'Flossi Malcher', '11 Sloan Court', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (828, 25, 5, '909866819', 'Caleb Oxherd', '347 Marcy Road', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (829, 24, 4, '732139777', 'Banky Bullus', '50595 Vidon Court', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (830, 23, 3, '615530605', 'Corilla Goodayle', '5 Lakeland Alley', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (831, 26, 1, '959687960', 'Freddy Else', '4 Dunning Circle', 'janitor');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (832, 6, 1, '187930217', 'Sile Brantl', '2353 New Castle Place', 'maid');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (833, 35, 5, '754301084', 'Jakie Andreou', '9730 Mockingbird Court', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (834, 30, 5, '290915819', 'Carissa Boath', '38 Grayhawk Plaza', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (835, 30, 5, '121680207', 'Benedikt Mayow', '413 Independence Pass', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (836, 17, 2, '118079264', 'Pattie Goymer', '685 Comanche Terrace', 'valet');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (837, 22, 2, '036798903', 'Webb Felce', '26089 Clarendon Street', 'chef');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (838, 16, 1, '975638066', 'Georg Stewartson', '5747 Becker Court', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (839, 6, 1, '634438492', 'Taite Angeli', '721 Doe Crossing Terrace', 'front-desk');
insert into employee (id, hotel_id, hotel_chain_id, sin, full_name, address, role) values (840, 28, 3, '890418041', 'Ezra O''Caine', '1 Gale Crossing', 'janitor');

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