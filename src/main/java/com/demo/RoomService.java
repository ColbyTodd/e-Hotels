
package com.demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RoomService {
    public List<Room> getSpecifiedRooms(Integer capacity, Integer maxPrice, Integer hotelChain) throws Exception {

        List<Room> rooms = new ArrayList<>();
        List<Object> params = new ArrayList<>();

        StringBuilder sql = new StringBuilder("SELECT * FROM room WHERE 1=1");
        ConnectionDB db = new ConnectionDB();

        if (capacity != null && capacity > 0) { // Adjust condition as per your criteria
            sql.append(" AND capacity = ?");
            params.add(capacity);
        }
        if (maxPrice != null && maxPrice > 0) { // Adjust condition as per your criteria
            sql.append(" AND price <= ?");
            params.add(maxPrice);
        }
        if (hotelChain != null && hotelChain > 0) { // Adjust condition as per your criteria
            sql.append(" AND hotel_chain_id = ?");
            params.add(hotelChain);
        }
        System.out.println("hi");
        System.out.println(sql);

        try (Connection con = db.getConnection()) {
            PreparedStatement stmt = con.prepareStatement(sql.toString());

            for (int i = 0; i < params.size(); i++) {
                stmt.setObject(i + 1, params.get(i));
            }
            ResultSet rs = stmt.executeQuery();

                while (rs.next()) {
                    Room room = new Room(
                            rs.getInt("id"),
                            rs.getInt("hotel_id"),
                            rs.getInt("hotel_chain_id"),
                            rs.getInt("price"),
                            rs.getString("amenities"),
                            rs.getInt("capacity"),
                            rs.getString("room_view"),
                            rs.getBoolean("extendable"),
                            rs.getBoolean("problems"),
                            rs.getBoolean("status"));
                    rooms.add(room);
                }
            rs.close();
            // close the statement
            stmt.close();
            con.close();
            db.close();
            return rooms;

            }
        catch (Exception e) {
            e.printStackTrace();
            throw new Exception(e.getMessage());

            }

        }


    public List<Room> testGetSpecifiedRooms(Integer capacity) throws Exception {
        List<Room> rooms = new ArrayList<>();
        List<Object> params = new ArrayList<>();

        StringBuilder sql = new StringBuilder("SELECT * FROM room WHERE capacity = 4;");
        ConnectionDB db = new ConnectionDB();


        try (Connection con = db.getConnection()) {
            PreparedStatement stmt = con.prepareStatement(sql.toString());

            // Set the parameters on the statement

            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    rooms.add(new Room(
                            rs.getInt("id"),
                            rs.getInt("hotel_id"),
                            rs.getInt("hotel_chain_id"),
                            rs.getInt("price"),
                            rs.getString("amenities"),
                            rs.getInt("capacity"),
                            rs.getString("room_view"),
                            rs.getBoolean("extendable"),
                            rs.getBoolean("problems"),
                            rs.getBoolean("status")));
                }
                return rooms;
            }
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
    }



    public List<Room> getRooms() throws Exception {
        List<Room> rooms = new ArrayList<>();
        String sql = "SELECT * FROM room";
        ConnectionDB db = new ConnectionDB();
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql); ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                rooms.add(new Room(
                        rs.getInt("id"),
                        rs.getInt("hotel_id"),
                        rs.getInt("hotel_chain_id"),
                        rs.getInt("price"),
                        rs.getString("amenities"),
                        rs.getInt("capacity"),
                        rs.getString("room_view"),
                        rs.getBoolean("extendable"),
                        rs.getBoolean("problems"),
                        rs.getBoolean("status")));
            }
        } finally {
            db.close();
        }
        return rooms;
    }

    public String createRoom(Room room) throws Exception {
        String sql = "INSERT INTO room (hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, room_status) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        ConnectionDB db = new ConnectionDB();
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, room.getHotelId());
            stmt.setInt(2, room.getHotelChainId());
            stmt.setInt(3, room.getPrice());
            stmt.setString(4, room.getAmenities());
            stmt.setInt(5, room.getCapacity());
            stmt.setString(6, room.getRoomView());
            stmt.setBoolean(7, room.getExtendable());
            stmt.setBoolean(8, room.getProblems());
            stmt.setBoolean(9, room.getStatus());
            stmt.executeUpdate();
            return "Room created successfully!";
        } catch (SQLException e) {
            return "Error while creating room: " + e.getMessage();
        }
    }

    public String updateRoom(Room room) throws Exception {
        String sql = "UPDATE room SET hotel_id=?, hotel_chain_id=?, price=?, amenities=?, capacity=?, room_view=?, extendable=?, problems=?, room_status=? WHERE id=?";
        ConnectionDB db = new ConnectionDB();
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, room.getHotelId());
            stmt.setInt(2, room.getHotelChainId());
            stmt.setInt(3, room.getPrice());
            stmt.setString(4, room.getAmenities());
            stmt.setInt(5, room.getCapacity());
            stmt.setString(6, room.getRoomView());
            stmt.setBoolean(7, room.getExtendable());
            stmt.setBoolean(8, room.getProblems());
            stmt.setBoolean(9, room.getStatus());
            stmt.setInt(10, room.getId());
            stmt.executeUpdate();
            return "Room updated successfully!";
        } catch (SQLException e) {
            return "Error while updating room: " + e.getMessage();
        }
    }

    public String deleteRoom(Integer id) throws Exception {
        String sql = "DELETE FROM room WHERE id=?";
        ConnectionDB db = new ConnectionDB();
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, id);
            stmt.executeUpdate();
            return "Room deleted successfully!";
        } catch (SQLException e) {
            return "Error while deleting room: " + e.getMessage();
        }
    }
}
