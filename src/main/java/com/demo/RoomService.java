
package com.demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RoomService {
    private ConnectionDB db = new ConnectionDB();

    public List<Room> getRooms() throws Exception {
        List<Room> rooms = new ArrayList<>();
        String sql = "SELECT * FROM room";
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
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, id);
            stmt.executeUpdate();
            return "Room deleted successfully!";
        } catch (SQLException e) {
            return "Error while deleting room: " + e.getMessage();
        }
    }
}