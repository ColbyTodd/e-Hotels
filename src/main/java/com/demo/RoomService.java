
package com.demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Date;
import java.util.HashSet;

public class RoomService {
    public List<Room> getSpecifiedRooms(Integer capacity, Integer maxPrice, Integer hotelChain, Integer size, Date startDate,
                                        Date endDate, Integer category, String city) throws Exception {
        List<Room> rooms = new ArrayList<>();
        HashSet<Integer> addedRoomIds = new HashSet<>(); // Set to track added room IDs
        List<Object> params = new ArrayList<>();


        // Starting SQL with a join to include hotel information
        StringBuilder sql = new StringBuilder(
                "SELECT DISTINCT room.*, rent.start_date, rent.end_date, hotel.number_of_rooms, hotel.category, hotel.city " +
                        "FROM room " +
                        "JOIN hotel ON room.hotel_id = hotel.id " +
                        "LEFT JOIN rent ON room.id = rent.room_id " +
                        "WHERE 1=1"
        );
        ConnectionDB db = new ConnectionDB();

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
        if (startDate != null) {
            sql.append(" AND rent.start_date >= ?");
            params.add(new java.sql.Date(startDate.getTime()));
        }
        if (endDate != null) {
            sql.append(" AND rent.end_date <= ?");
            params.add(new java.sql.Date(endDate.getTime()));
        }
        if (category != null && category > 0) {
            sql.append(" AND hotel.category = ?");
            params.add(category);
        }
        if (city != null && !city.isEmpty()) {
            sql.append(" AND hotel.city = ?");
            params.add(city);
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
                int roomId = rs.getInt("id");
                if (!addedRoomIds.contains(roomId)) { // Check if the room ID has already been added
                    Room room = new Room(
                            roomId,
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
                            rs.getDate("end_date"),
                            rs.getInt("number_of_rooms"),
                            rs.getInt("category"),
                            rs.getString("city"));
                    rooms.add(room);
                    addedRoomIds.add(roomId); // Remember this room ID as added
                }
            }
            rs.close();
            // close statement
            stmt.close();
            con.close();
            db.close();
            return rooms;
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception(e.getMessage());
        }
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


    // may need to use these later
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
