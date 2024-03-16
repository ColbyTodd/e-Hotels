-- ----------------------------
-- Table structure for hotel_chain
-- ----------------------------
DROP TABLE IF EXISTS hotel_chain CASCADE;
CREATE TABLE hotel_chain (
  id serial PRIMARY KEY,
  number_of_hotels int NOT NULL CHECK (number_of_hotels > 0),
  address_of_central_offices varchar(100) NOT NULL,
  email_addresses varchar(100)[] NOT NULL,
  phone_numbers varchar(10)[] NOT NULL
);

-- ----------------------------
-- Records of hotel_chain
-- ----------------------------
INSERT INTO hotel_chain VALUES (1, 8, '22 Prince Street', ARRAY['hotel@hotel.com', 'guestservices@hotel.com'], ARRAY['5555555555', '7777777777']);

-- ----------------------------
-- Table structure for hotel
-- ----------------------------
DROP TABLE IF EXISTS hotel CASCADE;
CREATE TABLE IF NOT EXISTS hotel (
  id serial UNIQUE,
  hotel_chain_id int NOT NULL REFERENCES hotel_chain(id) ON DELETE CASCADE ON UPDATE CASCADE,
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
INSERT INTO hotel VALUES (1, 1, 3, 102, '49 Terrence Avenue', 'inn@inn.com', '1231231234', 'Ottawa');

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
    room_status bit NOT NULL,
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
	PRIMARY KEY (id, customer_id, room_id, hotel_id, hotel_chain_id)
);

-- ----------------------------
-- Records of rent
-- ----------------------------
INSERT INTO rent VALUES (1, 1, 1, 1, '2024-01-01', '2024-02-02');

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