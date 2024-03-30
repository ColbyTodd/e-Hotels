package com.demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class HotelChainPhoneService {
    private ConnectionDB db = new ConnectionDB();

    public List<HotelChainPhone> getPhonesForHotelChain(int hotelChainId) throws Exception {
        List<HotelChainPhone> phones = new ArrayList<>();
        String sql = "SELECT * FROM hotel_chain_phone WHERE hotel_chain_id = ?";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, hotelChainId);
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    phones.add(new HotelChainPhone(
                            rs.getInt("id"),
                            rs.getInt("hotel_chain_id"),
                            rs.getString("phone")));
                }
            }
        }
        return phones;
    }

    public String createHotelChainPhone(HotelChainPhone phone) throws Exception {
        String sql = "INSERT INTO hotel_chain_phone (hotel_chain_id, phone) VALUES (?, ?)";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, phone.getHotelChainId());
            stmt.setString(2, phone.getPhone());
            stmt.executeUpdate();
            return "HotelChainPhone created successfully!";
        } catch (Exception e) {
            return "Error while creating HotelChainPhone: " + e.getMessage();
        }
    }

    public String updateHotelChainPhone(HotelChainPhone phone) throws Exception {
        String sql = "UPDATE hotel_chain_phone SET phone = ? WHERE id = ? AND hotel_chain_id = ?";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, phone.getPhone());
            stmt.setInt(2, phone.getId());
            stmt.setInt(3, phone.getHotelChainId());
            stmt.executeUpdate();
            return "HotelChainPhone updated successfully!";
        } catch (Exception e) {
            return "Error while updating HotelChainPhone: " + e.getMessage();
        }
    }

    public String deleteHotelChainPhone(Integer id) throws Exception {
        String sql = "DELETE FROM hotel_chain_phone WHERE id = ?";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, id);
            stmt.executeUpdate();
            return "HotelChainPhone deleted successfully!";
        } catch (Exception e) {
            return "Error while deleting HotelChainPhone: " + e.getMessage();
        }
    }
}
