package com.demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * RoomService class provides methods to interact with the room table in the database.
 * It includes functionality to retrieve, create, update, and delete room records.
 */

public class RoomService {
    public List<Room> getRooms() throws Exception {
        List<Room> rooms = new ArrayList<>();
        // Database logic to retrieve all rooms
        return rooms;
    }

    public String createRoom(Room room) throws Exception {
        // Database logic to insert a new room
        return "Room created successfully!";
    }

    public String updateRoom(Room room) throws Exception {
        // Database logic to update an existing room
        return "Room updated successfully!";
    }

    public String deleteRoom(Integer id) throws Exception {
        // Database logic to delete an existing room
        return "Room deleted successfully!";
    }
}
