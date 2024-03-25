
package com.demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ManagerService {
    private ConnectionDB db = new ConnectionDB();

    public List<Manager> getManagers() throws Exception {
        List<Manager> managers = new ArrayList<>();
        String sql = "SELECT * FROM manager";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql); ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                managers.add(new Manager(
                        rs.getInt("employee_id"),
                        rs.getInt("hotel_id"),
                        rs.getInt("hotel_chain_id")));
            }
        } catch (SQLException e) {
            throw new Exception("Error while retrieving managers: " + e.getMessage());
        } finally {
            db.close();
        }
        return managers;
    }

    public String createManager(Manager manager) throws Exception {
        String sql = "INSERT INTO manager (employee_id, hotel_id, hotel_chain_id) VALUES (?, ?, ?)";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, manager.getEmployeeId());
            stmt.setInt(2, manager.getHotelId());
            stmt.setInt(3, manager.getHotelChainId());
            stmt.executeUpdate();
            return "Manager created successfully!";
        } catch (SQLException e) {
            return "Error while creating manager: " + e.getMessage();
        }
    }

    public String updateManager(Manager manager) throws Exception {
        String sql = "UPDATE manager SET hotel_id=?, hotel_chain_id=? WHERE employee_id=?";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, manager.getHotelId());
            stmt.setInt(2, manager.getHotelChainId());
            stmt.setInt(3, manager.getEmployeeId());
            stmt.executeUpdate();
            return "Manager updated successfully!";
        } catch (SQLException e) {
            return "Error while updating manager: " + e.getMessage();
        }
    }

    public String deleteManager(Integer employeeId) throws Exception {
        String sql = "DELETE FROM manager WHERE employee_id=?";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setInt(1, employeeId);
            stmt.executeUpdate();
            return "Manager deleted successfully!";
        } catch (SQLException e) {
            return "Error while deleting manager: " + e.getMessage();
        }
    }
}
