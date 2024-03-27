-- ----------------------------
-- Trigger to increment number_of_hotels
-- ----------------------------
CREATE OR REPLACE FUNCTION increment_hotel_count() RETURNS TRIGGER AS $$
BEGIN
    UPDATE hotel_chain
        SET number_of_hotels = number_of_hotels + 1
		WHERE hotel_chain.id = NEW.hotel_chain_id;
			RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER increment_hotel_count
AFTER INSERT ON hotel
FOR EACH ROW
EXECUTE FUNCTION increment_hotel_count();

-- ----------------------------
-- Trigger to increment number_of_rooms
-- ----------------------------
CREATE OR REPLACE FUNCTION increment_room_count() RETURNS TRIGGER AS $$
BEGIN
    UPDATE hotel
        SET number_of_rooms = number_of_rooms + 1
		WHERE hotel.id = NEW.hotel_id;
			RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER increment_room_count
AFTER INSERT ON room
FOR EACH ROW
EXECUTE FUNCTION increment_room_count();