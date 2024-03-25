package com.demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * HotelService class provides methods to interact with the hotel table in the database.
 * It includes functionality to retrieve, create, update, and delete hotel records.
 */

public class HotelService {
    public List<Hotel> getHotels() throws Exception {
        List<Hotel> hotels = new ArrayList<>();
        // Database logic to retrieve all hotels
        return hotels;
    }

    public String createHotel(Hotel hotel) throws Exception {
        // Database logic to insert a new hotel
        return "Hotel created successfully!";
    }

    public String updateHotel(Hotel hotel) throws Exception {
        // Database logic to update an existing hotel
        return "Hotel updated successfully!";
    }

    public String deleteHotel(Integer id) throws Exception {
        // Database logic to delete an existing hotel
        return "Hotel deleted successfully!";
    }
}
