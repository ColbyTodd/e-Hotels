
package com.demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class HotelService {
    private ConnectionDB db = new ConnectionDB();

    public List<Hotel> getHotels() throws Exception {
        List<Hotel> hotels = new ArrayList<>();
        String sql = "SELECT * FROM hotel ORDER BY id ASC";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql); ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                hotels.add(new Hotel(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getInt("hotel_chain_id"),
                        rs.getInt("category"),
                        rs.getInt("number_of_rooms"),
                        rs.getString("address"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getString("city")));
            }
        } catch (SQLException e) {
            throw new Exception("Error while retrieving hotels: " + e.getMessage());
        } finally {
            db.close();
        }
        return hotels;
    }
    public Hotel getHotelById(int id) throws Exception {
        Hotel hotel = null;
        String sql = "SELECT * FROM hotel WHERE id = ?";
        try (Connection con = db.getConnection();
             PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, id); // Set the ID parameter in the SQL query
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                hotel = new Hotel(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getInt("hotel_chain_id"),
                        rs.getInt("category"),
                        rs.getInt("number_of_rooms"),
                        rs.getString("address"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getString("city"));
            }
            rs.close();
        } catch (SQLException e) {
            throw new Exception("Error while retrieving hotel: " + e.getMessage());
        } finally {
            db.close();
        }
        return hotel;
    }

    public String createHotel(Hotel hotel) throws Exception {
        String sql = "INSERT INTO hotel (name, hotel_chain_id, category, number_of_rooms, address, email, phone, city) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, hotel.getName());
            stmt.setInt(2, hotel.getHotelChainId());
            stmt.setInt(3, hotel.getCategory());
            stmt.setInt(4, hotel.getNumberOfRooms());
            stmt.setString(5, hotel.getAddress());
            stmt.setString(6, hotel.getEmail());
            stmt.setString(7, hotel.getPhone());
            stmt.setString(8, hotel.getCity());
            stmt.executeUpdate();
            return "Hotel created successfully!";
        } catch (SQLException e) {
            return "Error while creating hotel: " + e.getMessage();
        }
    }

    public String updateHotel(Hotel hotel) throws Exception {
        String sql = "UPDATE hotel SET name=?, hotel_chain_id=?, category=?, number_of_rooms=?, address=?, email=?, phone=?, city=? WHERE id=?";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, hotel.getName());
            stmt.setInt(2, hotel.getHotelChainId());
            stmt.setInt(3, hotel.getCategory());
            stmt.setInt(4, hotel.getNumberOfRooms());
            stmt.setString(5, hotel.getAddress());
            stmt.setString(6, hotel.getEmail());
            stmt.setString(7, hotel.getPhone());
            stmt.setString(8, hotel.getCity());
            stmt.setInt(9, hotel.getId());
            stmt.executeUpdate();
            return "Hotel updated successfully!";
        } catch (SQLException e) {
            return "Error while updating hotel: " + e.getMessage();
        }
    }

    public String deleteHotel(Integer id) throws Exception {
        String sql = "DELETE FROM hotel WHERE id=?";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, id);
            stmt.executeUpdate();
            return "Hotel deleted successfully!";
        } catch (SQLException e) {
            return "Error while deleting hotel: " + e.getMessage();
        }
    }
}
