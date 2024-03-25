package com.demo;

/**
 * RentService class provides methods to interact with the rent table in the database.
 * It includes functionality to retrieve, create, update, and delete rent records.
 */

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class RentService {
    public List<Rent> getRents() throws Exception {
        List<Rent> rents = new ArrayList<>();
        // Database logic to retrieve all rents
        return rents;
    }

    public String createRent(Rent rent) throws Exception {
        // Database logic to insert a new rent
        return "Rent created successfully!";
    }

    public String updateRent(Rent rent) throws Exception {
        // Database logic to update an existing rent
        return "Rent updated successfully!";
    }

    public String deleteRent(Integer id) throws Exception {
        // Database logic to delete an existing rent
        return "Rent deleted successfully!";
    }
}
