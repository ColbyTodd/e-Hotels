package com.demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class HotelChainEmailService {
    private ConnectionDB db = new ConnectionDB();

    public List<HotelChainEmail> getEmailsForHotelChain(int hotelChainId) throws Exception {
        List<HotelChainEmail> emails = new ArrayList<>();
        String sql = "SELECT * FROM hotel_chain_email WHERE hotel_chain_id = ?";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, hotelChainId);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    emails.add(new HotelChainEmail(
                            rs.getInt("id"),
                            rs.getInt("hotel_chain_id"),
                            rs.getString("email")));
                }
            }
        }
        return emails;
    }

    public String createHotelChainEmail(HotelChainEmail email) throws Exception {
        String sql = "INSERT INTO hotel_chain_email (hotel_chain_id, email) VALUES (?, ?)";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, email.getHotelChainId());
            stmt.setString(2, email.getEmail());
            stmt.executeUpdate();
            return "HotelChainEmail created successfully!";
        } catch (Exception e) {
            return "Error while creating HotelChainEmail: " + e.getMessage();
        }
    }

    public String updateHotelChainEmail(HotelChainEmail email) throws Exception {
        String sql = "UPDATE hotel_chain_email SET email = ? WHERE id = ? AND hotel_chain_id = ?";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, email.getEmail());
            stmt.setInt(2, email.getId());
            stmt.setInt(3, email.getHotelChainId());
            stmt.executeUpdate();
            return "HotelChainEmail updated successfully!";
        } catch (Exception e) {
            return "Error while updating HotelChainEmail: " + e.getMessage();
        }
    }

    public String deleteHotelChainEmail(Integer id) throws Exception {
        String sql = "DELETE FROM hotel_chain_email WHERE id = ?";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, id);
            stmt.executeUpdate();
            return "HotelChainEmail deleted successfully!";
        } catch (Exception e) {
            return "Error while deleting HotelChainEmail: " + e.getMessage();
        }
    }
}
