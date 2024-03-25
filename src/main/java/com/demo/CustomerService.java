
package com.demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerService {
    private ConnectionDB db = new ConnectionDB();

    public List<Customer> getCustomers() throws Exception {
        List<Customer> customers = new ArrayList<>();
        String sql = "SELECT * FROM customers";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql); ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                customers.add(new Customer(
                        rs.getInt("id"),
                        rs.getString("full_name"),
                        rs.getString("address"),
                        rs.getString("id_type"),
                        rs.getDate("registration_date")));
            }
        } catch (SQLException e) {
            throw new Exception("Error while retrieving customers: " + e.getMessage());
        } finally {
            db.close();
        }
        return customers;
    }

    public String createCustomer(Customer customer) throws Exception {
        String sql = "INSERT INTO customers (full_name, address, id_type, registration_date) VALUES (?, ?, ?, ?)";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {

            stmt.setString(1, customer.getFullName());
            stmt.setString(2, customer.getAddress());
            stmt.setString(3, customer.getIdType());
            stmt.setDate(4, new java.sql.Date(customer.getRegistrationDate().getTime()));
            stmt.executeUpdate();
            return "Customer created successfully!";
        } catch (SQLException e) {
            return "Error while creating customer: " + e.getMessage();
        }
    }

    public String updateCustomer(Customer customer) throws Exception {
        String sql = "UPDATE customers SET full_name=?, address=?, id_type=?, registration_date=? WHERE id=?";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {

            stmt.setString(1, customer.getFullName());
            stmt.setString(2, customer.getAddress());
            stmt.setString(3, customer.getIdType());
            stmt.setDate(4, new java.sql.Date(customer.getRegistrationDate().getTime()));
            stmt.setInt(5, customer.getId());
            stmt.executeUpdate();
            return "Customer updated successfully!";
        } catch (SQLException e) {
            return "Error while updating customer: " + e.getMessage();
        }
    }

    public String deleteCustomer(Integer id) throws Exception {
        String sql = "DELETE FROM customers WHERE id=?";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {

            stmt.setInt(1, id);
            stmt.executeUpdate();
            return "Customer deleted successfully!";
        } catch (SQLException e) {
            return "Error while deleting customer: " + e.getMessage();
        }
    }
}
