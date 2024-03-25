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
insert into hotel_chain (id, name, number_of_hotels, address_of_central_offices) values (1, 'Bogisich LLC', 10, '81396 Kings Crossing');
insert into hotel_chain (id, name, number_of_hotels, address_of_central_offices) values (2, 'Kunde LLC', 11, '458 Clove Center');
insert into hotel_chain (id, name, number_of_hotels, address_of_central_offices) values (3, 'Stamm, Bins and Hirthe', 12, '92044 Village Alley');
insert into hotel_chain (id, name, number_of_hotels, address_of_central_offices) values (4, 'Vandervort, Leannon and Koelpin', 9, '5 Rowland Court');
insert into hotel_chain (id, name, number_of_hotels, address_of_central_offices) values (5, 'Price, Schulist and Gusikowski', 9, '033 Kropf Circle');

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
  phone varchar(10) NOT NULL,
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
  phone varchar(10) NOT NULL,
  city varchar(100) NOT NULL,
  PRIMARY KEY (id, hotel_chain_id)
);

-- ----------------------------
-- Records of hotel
-- ----------------------------
INSERT INTO hotel VALUES (1, 1, 'Hampton', 3, 102, '49 Terrence Avenue', 'inn@inn.com', '1231231234', 'Ottawa');

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