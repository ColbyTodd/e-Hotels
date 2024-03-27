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
-- Trigger to decrement number_of_hotels
-- ----------------------------
CREATE OR REPLACE FUNCTION decrement_hotel_count() RETURNS TRIGGER AS $$
BEGIN
    UPDATE hotel_chain
        SET number_of_hotels = number_of_hotels - 1
		WHERE hotel_chain.id = OLD.hotel_chain_id;
			RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER decrement_hotel_count
AFTER DELETE ON hotel
FOR EACH ROW
EXECUTE FUNCTION decrement_hotel_count();

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

-- ----------------------------
-- Trigger to decrement number_of_rooms
-- ----------------------------
CREATE OR REPLACE FUNCTION decrement_room_count() RETURNS TRIGGER AS $$
BEGIN
    UPDATE hotel
        SET number_of_rooms = number_of_rooms - 1
		WHERE hotel.id = OLD.hotel_id;
			RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER decrement_room_count
AFTER DELETE ON room
FOR EACH ROW
EXECUTE FUNCTION decrement_room_count();

-- ----------------------------
-- Trigger to set employee role null
-- ----------------------------
CREATE OR REPLACE FUNCTION set_employee_role_null() RETURNS TRIGGER AS $$
BEGIN
    UPDATE employee
        SET role = null
		WHERE id = OLD.employee_id;
			RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER set_employee_role_null
AFTER DELETE ON manager
FOR EACH ROW
EXECUTE FUNCTION set_employee_role_null();

 -- ----------------------------
 -- Trigger to update manager table on employee table role changes
 -- ----------------------------
CREATE OR REPLACE FUNCTION handle_employee_change() RETURNS TRIGGER AS $$
BEGIN
	IF TG_OP = 'DELETE' THEN
		DELETE FROM manager
			WHERE employee_id = OLD.id;
			RETURN OLD;
	ELSIF TG_OP = 'UPDATE' OR TG_OP = 'INSERT' THEN
		IF NEW.role = 'manager' THEN
			INSERT INTO manager VALUES(NEW.id, NEW.hotel_id, NEW.hotel_chain_id);
			RETURN NEW;
		END IF;
		RETURN NEW;
	END IF;

END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER handle_employee_change
AFTER UPDATE OR INSERT OR DELETE ON employee
FOR EACH ROW
EXECUTE FUNCTION handle_employee_change();