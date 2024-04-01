
package com.demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class RoomService {

    public List<Room> getSpecifiedRooms(Integer capacity, Integer maxPrice, Integer hotelChain, Integer size, Date startDate,
                                        Date endDate, Integer category, String city) throws Exception {
        List<Room> rooms = new ArrayList<>();
        List<Object> params = new ArrayList<>();

        // Add date parameters first
        params.add(new java.sql.Date(startDate.getTime()));
        params.add(new java.sql.Date(endDate.getTime()));
        params.add(new java.sql.Date(startDate.getTime()));
        params.add(new java.sql.Date(endDate.getTime()));

        StringBuilder sql = new StringBuilder(
                "SELECT room.*, hotel.number_of_rooms, hotel.category, hotel.city " +
                        "FROM room " +
                        "JOIN hotel ON room.hotel_id = hotel.id " +
                        "WHERE room.status = false AND room.id NOT IN (" +
                        "SELECT rent.room_id FROM rent " +
                        "WHERE (rent.start_date < ? AND rent.end_date > ?) OR " +
                        "(rent.start_date > ? AND rent.start_date < ?))");

        // Append additional filters and add them to the parameters list
        if (capacity != null && capacity > 0) {
            sql.append(" AND room.capacity = ?");
            params.add(capacity);
        }
        if (maxPrice != null && maxPrice > 0) {
            sql.append(" AND room.price <= ?");
            params.add(maxPrice);
        }
        if (hotelChain != null && hotelChain > 0) {
            sql.append(" AND room.hotel_chain_id = ?");
            params.add(hotelChain);
        }
        if (size != null && size > 0) {
            sql.append(" AND hotel.number_of_rooms <= ?");
            params.add(size);
        }
        if (category != null && category > 0) {
            sql.append(" AND hotel.category = ?");
            params.add(category);
        }
        if (city != null && !city.isEmpty()) {
            sql.append(" AND hotel.city = ?");
            params.add(city);
        }

        ConnectionDB db = new ConnectionDB();
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql.toString())) {
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
                        rs.getBoolean("status"),// Assuming false means available
                        null, // Not setting start and end dates for the room object here
                        null,
                        rs.getInt("number_of_rooms"),
                        rs.getInt("category"),
                        rs.getString("city"));
                rooms.add(room);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new SQLException("Error fetching specified rooms: " + e.getMessage(), e);
        }

        return rooms;
    }
    public void updateRoomStatus(Integer roomId) throws SQLException {
        // Your SQL to update the room's booked and rented status
        String sql = "UPDATE room SET status=? WHERE id=?;";
        ConnectionDB db = new ConnectionDB();
        try (Connection con = db.getConnection()){
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setBoolean(1, true);
            stmt.setInt(2, roomId);
            stmt.executeUpdate();

            stmt.close();
            con.close();
            db.close();

        } catch (Exception e) {
            throw new SQLException("Error updating room status", e);
        }
    }


    public List<Room> getFalseStatusRooms() throws Exception {
        List<Room> rooms = new ArrayList<>();
        // Include condition for payment to be NULL or empty
        String sql = "SELECT r.*, rent.start_date, rent.end_date FROM room r " +
                "INNER JOIN rent ON r.id = rent.room_id " +
                "WHERE r.status = false AND (rent.payment IS NULL OR rent.payment = '')";
        ConnectionDB db = new ConnectionDB();
        try (Connection con = db.getConnection();
             PreparedStatement stmt = con.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

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
                        rs.getBoolean("status"),
                        rs.getDate("start_date"),
                        rs.getDate("end_date")

                );
                rooms.add(room);
            }
        } catch (Exception e) {
            throw new Exception("Failed to fetch bookings with status false and payment not processed: " + e.getMessage(), e);
        } finally {
            db.close();
        }
        return rooms;
    }


    public String createRoom(Room room) throws Exception {
        resetRoomPrimaryKeySequence();
        String sql = "INSERT INTO room (hotel_id, hotel_chain_id, price, amenities, capacity, room_view, extendable, problems, status) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
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
    public void resetRoomPrimaryKeySequence() throws SQLException {
        String maxIdQuery = "SELECT MAX(id) FROM room;";
        String currValQuery = "SELECT last_value FROM room_id_seq;";
        ConnectionDB db = new ConnectionDB();
        try (Connection con = db.getConnection();
             PreparedStatement maxIdStmt = con.prepareStatement(maxIdQuery);
             PreparedStatement currValStmt = con.prepareStatement(currValQuery)) {

            ResultSet rsMaxId = maxIdStmt.executeQuery();
            int maxId = 0;
            if (rsMaxId.next()) {
                maxId = rsMaxId.getInt(1);
            }
            rsMaxId.close();

            ResultSet rsCurrVal = currValStmt.executeQuery();
            int currVal = 0;
            if (rsCurrVal.next()) {
                currVal = rsCurrVal.getInt(1);
            }
            rsCurrVal.close();

            if (currVal <= maxId) {
                String resetSequenceSQL = "SELECT setval('room_id_seq', ?, false);";
                try (PreparedStatement resetSeqStmt = con.prepareStatement(resetSequenceSQL)) {
                    resetSeqStmt.setInt(1, maxId + 1);
                    resetSeqStmt.execute();
                }
            }
        } catch (Exception e) {
            throw new SQLException("Error resetting primary key sequence for room table", e);
        }
    }


    public String updateRoom(Room room) throws Exception {
        String sql = "UPDATE room SET hotel_id=?, hotel_chain_id=?, price=?, amenities=?, capacity=?, room_view=?, extendable=?, problems=?, status=? WHERE id=?";
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
    public Room getRoomById(int id) throws Exception {
        Room room = null;
        String sql = "SELECT * FROM room WHERE id = ?";
        ConnectionDB db = new ConnectionDB();
        try (Connection con = db.getConnection();
             PreparedStatement stmt = con.prepareStatement(sql)) {

            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                room = new Room(
                        rs.getInt("id"),
                        rs.getInt("hotel_id"),
                        rs.getInt("hotel_chain_id"),
                        rs.getInt("price"),
                        rs.getString("amenities"),
                        rs.getInt("capacity"),
                        rs.getString("room_view"),
                        rs.getBoolean("extendable"),
                        rs.getBoolean("problems"),
                        rs.getBoolean("status")

                );
            }
        } catch (Exception e) {
            throw new Exception("Error while retrieving room with ID " + id + ": " + e.getMessage(), e);
        }

        return room;
    }
    public List<Room> getRooms() throws Exception {
        ConnectionDB db = new ConnectionDB();
        List<Room> rooms = new ArrayList<>();
        String sql = "SELECT * FROM room ORDER BY id ASC";
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
                        rs.getBoolean("status")
                ));
            }
        } catch (SQLException e) {
            throw new Exception("Error while retrieving rooms: " + e.getMessage());
        } finally {
            db.close();
        }
        return rooms;
    }
}