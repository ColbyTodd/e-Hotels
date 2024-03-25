
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
                        rs.getInt("number_of_hotels"),
                        rs.getString("address_of_central_offices"),
                        (String[])rs.getArray("email_addresses").getArray(),
                        (String[])rs.getArray("phone_numbers").getArray()));
            }
        } catch (SQLException e) {
            throw new Exception("Error while retrieving hotel chains: " + e.getMessage());
        } finally {
            db.close();
        }
        return hotelChains;
    }

    public String createHotelChain(HotelChain hotelChain) throws Exception {
        String sql = "INSERT INTO hotel_chain (number_of_hotels, address_of_central_offices, email_addresses, phone_numbers) VALUES (?, ?, ?, ?)";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, hotelChain.getNumberOfHotels());
            stmt.setString(2, hotelChain.getAddressOfCentralOffices());
            stmt.setArray(3, con.createArrayOf("VARCHAR", hotelChain.getEmailAddresses()));
            stmt.setArray(4, con.createArrayOf("VARCHAR", hotelChain.getPhoneNumbers()));
            stmt.executeUpdate();
            return "HotelChain created successfully!";
        } catch (SQLException e) {
            return "Error while creating hotel chain: " + e.getMessage();
        }
    }

    public String updateHotelChain(HotelChain hotelChain) throws Exception {
        String sql = "UPDATE hotel_chain SET number_of_hotels=?, address_of_central_offices=?, email_addresses=?, phone_numbers=? WHERE id=?";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, hotelChain.getNumberOfHotels());
            stmt.setString(2, hotelChain.getAddressOfCentralOffices());
            stmt.setArray(3, con.createArrayOf("VARCHAR", hotelChain.getEmailAddresses()));
            stmt.setArray(4, con.createArrayOf("VARCHAR", hotelChain.getPhoneNumbers()));
            stmt.setInt(5, hotelChain.getId());
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
