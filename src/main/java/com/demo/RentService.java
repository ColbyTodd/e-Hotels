
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
                        rs.getDate("end_date"),
                        rs.getString("payment"))); // Add the new 'payment' field handling
            }
        } finally {
            db.close();
        }
        return rents;
    }

    public String createRent(Rent rent) throws SQLException {
        resetRentPrimaryKeySequence();
        String sql = "INSERT INTO rent (customer_id, room_id, hotel_id, hotel_chain_id, start_date, end_date, payment) VALUES (?, ?, ?, ?, ?, ?, ?)";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, rent.getCustomerId());
            stmt.setInt(2, rent.getRoomId());
            stmt.setInt(3, rent.getHotelId());
            stmt.setInt(4, rent.getHotelChainId());
            stmt.setDate(5, new java.sql.Date(rent.getStartDate().getTime()));
            stmt.setDate(6, new java.sql.Date(rent.getEndDate().getTime()));
            stmt.setString(7, rent.getPayment()); // Assuming payment might be added later
            stmt.executeUpdate();
            return "Rent created successfully!";
        } catch (Exception e) {
            e.printStackTrace(); // More detailed error handling recommended
            return "Error while creating rent: " + e.getMessage();
        }
    }
    public void resetRentPrimaryKeySequence() throws SQLException {
        String maxIdQuery = "SELECT MAX(id) FROM rent;";
        String currValQuery = "SELECT last_value FROM rent_id_seq;";
        try (Connection con = db.getConnection();
             PreparedStatement maxIdStmt = con.prepareStatement(maxIdQuery);
             PreparedStatement currValStmt = con.prepareStatement(currValQuery)) {

            // Get the current max id from the rent table
            ResultSet rsMaxId = maxIdStmt.executeQuery();
            int maxId = 0;
            if (rsMaxId.next()) {
                maxId = rsMaxId.getInt(1);
            }
            rsMaxId.close();

            // Get the current value of the sequence
            ResultSet rsCurrVal = currValStmt.executeQuery();
            int currVal = 0;
            if (rsCurrVal.next()) {
                currVal = rsCurrVal.getInt(1);
            }
            rsCurrVal.close();

            // Check if the sequence is behind the max id
            if (currVal <= maxId) {
                // Reset the sequence to the next value after the max id
                String resetSequenceSQL = "SELECT setval('rent_id_seq', ?, false);";
                try (PreparedStatement resetSeqStmt = con.prepareStatement(resetSequenceSQL)) {
                    resetSeqStmt.setInt(1, maxId + 1);
                    resetSeqStmt.execute();
                }
            }
            // If the sequence is ahead of the max id, there's no need to reset it
        } catch (Exception e) {
            throw new SQLException("Error resetting primary key sequence for rent table", e);
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
