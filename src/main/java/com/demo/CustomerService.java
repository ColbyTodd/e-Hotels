
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
        // Add ORDER BY clause to the SQL query to sort by id
        String sql = "SELECT * FROM customer ORDER BY id ASC";
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

        db.close();
        return customers;
    }

    public Customer getCustomerById(int id) throws Exception {
        Customer customer = null;
        String sql = "SELECT * FROM customer WHERE id = ?";
        try (Connection con = db.getConnection();
             PreparedStatement stmt = con.prepareStatement(sql)) {

            stmt.setInt(1, id); // Set the id parameter in the SQL query
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    customer = new Customer(
                            rs.getInt("id"),
                            rs.getString("full_name"),
                            rs.getString("address"),
                            rs.getString("id_type"),
                            rs.getDate("registration_date"));
                }
            }
        } catch (SQLException e) {
            throw new Exception("Error while retrieving customer with ID: " + id + " - " + e.getMessage());
        } finally {
            db.close();
        }
        return customer;
    }


    public String createCustomer(Customer customer) throws Exception {
        resetCustomerPrimaryKeySequence();
        String sql = "INSERT INTO customer (full_name, address, id_type, registration_date) VALUES (?, ?, ?, ?)";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {

            stmt.setString(1, customer.getFullName());
            stmt.setString(2, customer.getAddress());
            stmt.setString(3, customer.getIdType());
            stmt.setDate(4, new java.sql.Date(customer.getRegistrationDate().getTime()));
            stmt.executeUpdate();

            stmt.close();
            con.close();
            db.close();
            return "Customer created successfully!";
        } catch (SQLException e) {
            return "Error while creating customer: " + e.getMessage();
        }
    }
    public void resetCustomerPrimaryKeySequence() throws SQLException {
        String maxIdQuery = "SELECT MAX(id) FROM customer;";
        String currValQuery = "SELECT last_value FROM customer_id_seq;";
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
                String resetSequenceSQL = "SELECT setval('customer_id_seq', ?, false);";
                try (PreparedStatement resetSeqStmt = con.prepareStatement(resetSequenceSQL)) {
                    resetSeqStmt.setInt(1, maxId + 1);
                    resetSeqStmt.execute();
                }
            }

            con.close();
            db.close();
            // If the sequence is ahead of the max id, there's no need to reset it
        } catch (Exception e) {
            throw new SQLException("Error resetting primary key sequence for rent table", e);
        }
    }

    public String updateCustomer(Customer customer) throws Exception {
        String sql = "UPDATE customer SET full_name=?, address=?, id_type=?, registration_date=? WHERE id=?";
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
        String sql = "DELETE FROM customer WHERE id=?";
        try (Connection con = db.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {

            stmt.setInt(1, id);
            stmt.executeUpdate();
            return "Customer deleted successfully!";
        } catch (SQLException e) {
            return "Error while deleting customer: " + e.getMessage();
        }
    }
}
