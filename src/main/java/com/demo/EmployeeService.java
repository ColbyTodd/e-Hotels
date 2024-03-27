
package com.demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeService {
    private ConnectionDB db = new ConnectionDB();

    public List<Employee> getEmployees() throws Exception {
        List<Employee> employees = new ArrayList<>();
        String sql = "SELECT * FROM employees";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql); ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                employees.add(new Employee(
                        rs.getInt("id"),
                        rs.getInt("hotel_id"),
                        rs.getInt("hotel_chain_id"),
                        rs.getString("sin"),
                        rs.getString("full_name"),
                        rs.getString("address"),
                        rs.getString("role")));
            }
        } catch (SQLException e) {
            throw new Exception("Error while retrieving employees: " + e.getMessage());
        } finally {
            db.close();
        }
        return employees;
    }

    public String createEmployee(Employee employee) throws Exception {
        String sql = "INSERT INTO employees (hotel_id, hotel_chain_id, sin, full_name, address, role) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {

            stmt.setInt(1, employee.getHotelId());
            stmt.setInt(2, employee.getHotelChainId());
            stmt.setString(3, employee.getSin());
            stmt.setString(4, employee.getFullName());
            stmt.setString(5, employee.getAddress());
            stmt.setString(6, employee.getRole());
            stmt.executeUpdate();
            return "Employee created successfully!";
        } catch (SQLException e) {
            return "Error while creating employee: " + e.getMessage();
        }
    }

    public String updateEmployee(Employee employee) throws Exception {
        String sql = "UPDATE employees SET hotel_id=?, hotel_chain_id=?, sin=?, full_name=?, address=?, role=? WHERE id=?";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {

            stmt.setInt(1, employee.getHotelId());
            stmt.setInt(2, employee.getHotelChainId());
            stmt.setString(3, employee.getSin());
            stmt.setString(4, employee.getFullName());
            stmt.setString(5, employee.getAddress());
            stmt.setString(6, employee.getRole());
            stmt.setInt(7, employee.getId());
            stmt.executeUpdate();
            return "Employee updated successfully!";
        } catch (SQLException e) {
            return "Error while updating employee: " + e.getMessage();
        }
    }

    public String deleteEmployee(Integer id) throws Exception {
        String sql = "DELETE FROM employees WHERE id=?";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {

            stmt.setInt(1, id);
            stmt.executeUpdate();
            return "Employee deleted successfully!";
        } catch (SQLException e) {
            return "Error while deleting employee: " + e.getMessage();
        }
    }
}