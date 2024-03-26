-- ----------------------------
-- Index of Room Table
-- ----------------------------
DROP INDEX IF EXISTS room_index;
CREATE INDEX room_index
ON room (hotel_id, price, capacity, status);

-- ----------------------------
-- Index of Rent Table
-- ----------------------------
DROP INDEX IF EXISTS rent_index;
CREATE INDEX rent_index
ON rent (room_id, hotel_id, start_date, end_date);