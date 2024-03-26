-- ----------------------------
-- View of Available Rooms by Area
-- ----------------------------
DROP VIEW IF EXISTS available_rooms_by_area;
CREATE VIEW available_rooms_by_area AS
SELECT city, count(status) FROM room
INNER JOIN hotel
ON room.hotel_id = hotel.id
WHERE status = false
GROUP BY city;

-- ----------------------------
-- View of Hotel Capacity
-- ----------------------------
DROP VIEW IF EXISTS hotel_capacity;
CREATE VIEW hotel_capacity AS
SELECT hotel.id, hotel.name, SUM(capacity) FROM room
INNER JOIN hotel
ON room.hotel_id = hotel.id
GROUP BY hotel.id, hotel.name
ORDER BY hotel.id;