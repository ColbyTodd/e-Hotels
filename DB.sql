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
    extendable bit NOT NULL,
    problems bit NOT NULL,
    status bit NOT NULL,
    PRIMARY KEY (id, hotel_id, hotel_chain_id)
);

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO room VALUES (1, 1, 1, 59, NULL, 2, 'sea', '1', '0', '0');

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