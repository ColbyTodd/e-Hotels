package com.demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class HotelChainService {
    private ConnectionDB db = new ConnectionDB();

    public List<HotelChain> getHotelChains() throws Exception {
        List<HotelChain> hotelChains = new ArrayList<>();
        String sql = "SELECT * FROM hotel_chain";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql); ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                hotelChains.add(new HotelChain(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getInt("number_of_hotels"),
                        rs.getString("address_of_central_offices")));
            }
        } finally {
            db.close();
        }
        return hotelChains;
    }

    public String createHotelChain(HotelChain hotelChain) throws Exception {
        String sql = "INSERT INTO hotel_chain (name, number_of_hotels, address_of_central_offices) VALUES (?, ?, ?)";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, hotelChain.getName());
            stmt.setInt(2, hotelChain.getNumberOfHotels());
            stmt.setString(3, hotelChain.getAddressOfCentralOffices());
            stmt.executeUpdate();
            return "HotelChain created successfully!";
        } catch (SQLException e) {
            return "Error while creating hotel chain: " + e.getMessage();
        }
    }

    public String updateHotelChain(HotelChain hotelChain) throws Exception {
        String sql = "UPDATE hotel_chain SET name=?, number_of_hotels=?, address_of_central_offices=? WHERE id=?";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, hotelChain.getName());
            stmt.setInt(2, hotelChain.getNumberOfHotels());
            stmt.setString(3, hotelChain.getAddressOfCentralOffices());
            stmt.setInt(4, hotelChain.getId());
            stmt.executeUpdate();
            return "HotelChain updated successfully!";
        } catch (SQLException e) {
            return "Error while updating hotel chain: " + e.getMessage();
        }
    }

    public String deleteHotelChain(Integer id) throws Exception {
        String sql = "DELETE FROM hotel_chain WHERE id=?";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, id);
            stmt.executeUpdate();
            return "HotelChain deleted successfully!";
        } catch (SQLException e) {
            return "Error while deleting hotel chain: " + e.getMessage();
        }
    }
}
