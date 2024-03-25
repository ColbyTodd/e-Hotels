
package com.demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RentService {
    private ConnectionDB db = new ConnectionDB();

    public List<Rent> getRents() throws Exception {
        List<Rent> rents = new ArrayList<>();
        String sql = "SELECT * FROM rent";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql); ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                rents.add(new Rent(
                        rs.getInt("id"),
                        rs.getInt("customer_id"),
                        rs.getInt("room_id"),
                        rs.getInt("hotel_id"),
                        rs.getInt("hotel_chain_id"),
                        rs.getDate("start_date"),
                        rs.getDate("end_date")));
            }
        } catch (SQLException e) {
            throw new Exception("Error while retrieving rents: " + e.getMessage());
        } finally {
            db.close();
        }
        return rents;
    }

    public String createRent(Rent rent) throws Exception {
        String sql = "INSERT INTO rent (customer_id, room_id, hotel_id, hotel_chain_id, start_date, end_date) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, rent.getCustomerId());
            stmt.setInt(2, rent.getRoomId());
            stmt.setInt(3, rent.getHotelId());
            stmt.setInt(4, rent.getHotelChainId());
            stmt.setDate(5, new java.sql.Date(rent.getStartDate().getTime()));
            stmt.setDate(6, new java.sql.Date(rent.getEndDate().getTime()));
            stmt.executeUpdate();
            return "Rent created successfully!";
        } catch (SQLException e) {
            return "Error while creating rent: " + e.getMessage();
        }
    }

    public String updateRent(Rent rent) throws Exception {
        String sql = "UPDATE rent SET customer_id=?, room_id=?, hotel_id=?, hotel_chain_id=?, start_date=?, end_date=? WHERE id=?";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, rent.getCustomerId());
            stmt.setInt(2, rent.getRoomId());
            stmt.setInt(3, rent.getHotelId());
            stmt.setInt(4, rent.getHotelChainId());
            stmt.setDate(5, new java.sql.Date(rent.getStartDate().getTime()));
            stmt.setDate(6, new java.sql.Date(rent.getEndDate().getTime()));
            stmt.setInt(7, rent.getId());
            stmt.executeUpdate();
            return "Rent updated successfully!";
        } catch (SQLException e) {
            return "Error while updating rent: " + e.getMessage();
        }
    }

    public String deleteRent(Integer id) throws Exception {
        String sql = "DELETE FROM rent WHERE id=?";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, id);
            stmt.executeUpdate();
            return "Rent deleted successfully!";
        } catch (SQLException e) {
            return "Error while deleting rent: " + e.getMessage();
        }
    }
}
