
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
        String sql = "SELECT * FROM employee ORDER BY id ASC";
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
    public Employee getEmployeeById(int id) throws Exception {
        Employee employee = null;
        String sql = "SELECT * FROM employee WHERE id = ?";
        try (Connection con = db.getConnection();
             PreparedStatement stmt = con.prepareStatement(sql)) {

            stmt.setInt(1, id); // Set the ID parameter in the SQL query
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                employee = new Employee(
                        rs.getInt("id"),
                        rs.getInt("hotel_id"),
                        rs.getInt("hotel_chain_id"),
                        rs.getString("sin"),
                        rs.getString("full_name"),
                        rs.getString("address"),
                        rs.getString("role"));
            }
            rs.close();
        } catch (SQLException e) {
            throw new Exception("Error while retrieving employee: " + e.getMessage());
        } finally {
            db.close();
        }
        return employee;
    }


    public String createEmployee(Employee employee) throws Exception {
        resetEmployeePrimaryKeySequence();
        String sql = "INSERT INTO employee (hotel_id, hotel_chain_id, sin, full_name, address, role) VALUES (?, ?, ?, ?, ?, ?)";
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
    public void resetEmployeePrimaryKeySequence() throws SQLException {
        String maxIdQuery = "SELECT MAX(id) FROM employee;";
        String currValQuery = "SELECT last_value FROM employee_id_seq;";
        try (Connection con = db.getConnection();
             PreparedStatement maxIdStmt = con.prepareStatement(maxIdQuery);
             PreparedStatement currValStmt = con.prepareStatement(currValQuery)) {

            ResultSet rsMaxId = maxIdStmt.executeQuery();
            int maxId = 0;
            if (rsMaxId.next()) {
                maxId = rsMaxId.getInt(1);
            }
            rsMaxId.close();

            ResultSet rsCurrVal = currValStmt.executeQuery();
            int currVal = 0;
            if (rsCurrVal.next()) {
                currVal = rsCurrVal.getInt(1);
            }
            rsCurrVal.close();

            if (currVal <= maxId) {
                String resetSequenceSQL = "SELECT setval('employee_id_seq', ?, false);";
                try (PreparedStatement resetSeqStmt = con.prepareStatement(resetSequenceSQL)) {
                    resetSeqStmt.setInt(1, maxId + 1);
                    resetSeqStmt.execute();
                }
            }
        } catch (Exception e) {
            throw new SQLException("Error resetting primary key sequence for employee table", e);
        }
    }


    public String updateEmployee(Employee employee) throws Exception {
        String sql = "UPDATE employee SET hotel_id=?, hotel_chain_id=?, sin=?, full_name=?, address=?, role=? WHERE id=?";
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
        String sql = "DELETE FROM employee WHERE id=?";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {

            stmt.setInt(1, id);
            stmt.executeUpdate();
            return "Employee deleted successfully!";
        } catch (SQLException e) {
            return "Error while deleting employee: " + e.getMessage();
        }
    }
}
