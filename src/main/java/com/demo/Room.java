package com.demo;
import java.util.Date;
/**
 * Room class represents the room entity in the database.
 * It holds information about each room, including its hotel ID, hotel chain ID, price,
 * amenities, capacity, view, extendable feature, and status.
 */

public class Room {
    private Integer id;
    private Integer hotelId;
    private Integer hotelChainId;
    private Integer price;
    private String amenities;
    private Integer capacity;
    private String roomView;
    private Boolean extendable;
    private Boolean problems;
    private Boolean status;
    private Date startDate;
    private Date endDate;
    private Integer numberOfRooms; // hotel size
    private Integer category; // hotel category
    private String city; // hotel city

    private Boolean booked;
    private Boolean rented;


    /**
     * Constructor for Room object.
     * Initializes a room with its details including its ID, hotel ID, hotel chain ID, price,
     * amenities, capacity, view, whether it's extendable, and its current status.
     *
     * @param id Unique identifier of the room.
     * @param hotelId Identifier for the hotel this room belongs to.
     * @param hotelChainId Identifier for the hotel chain this room belongs to.
     * @param price Price per night of the room.
     * @param amenities Description of amenities provided.
     * @param capacity Maximum occupancy of the room.
     * @param roomView Type of view from the room (e.g., sea or mountain).
     * @param extendable Flag indicating if the room can be extended.
     * @param problems Flag indicating if there are any reported problems.
     * @param status Flag indicating the current status of the room.
     */

    public Room(Integer id, Integer hotelId, Integer hotelChainId, Integer price, String amenities, Integer capacity, String roomView, Boolean extendable, Boolean problems, Boolean status) {
        this.id = id;
        this.hotelId = hotelId;
        this.hotelChainId = hotelChainId;
        this.price = price;
        this.amenities = amenities;
        this.capacity = capacity;
        this.roomView = roomView;
        this.extendable = extendable;
        this.problems = problems;
        this.status = status;
    }
    public Room(Integer id, Integer hotelId, Integer hotelChainId, Integer price, String amenities, Integer capacity, String roomView,
                Boolean extendable, Boolean problems, Boolean status, Date startDate, Date endDate
               ) {
        // Initialize existing fields
        this.id = id;
        this.hotelId = hotelId;
        this.hotelChainId = hotelChainId;
        this.price = price;
        this.amenities = amenities;
        this.capacity = capacity;
        this.roomView = roomView;
        this.extendable = extendable;
        this.problems = problems;
        this.status = status;
        this.startDate = startDate;
        this.endDate = endDate;

    }

    public Room(Integer id, Integer hotelId, Integer hotelChainId, Integer price, String amenities, Integer capacity, String roomView, Boolean extendable, Boolean problems, Boolean status, Date startDate, Date endDate, Integer numberOfRooms, Integer category, String city) {
        // Initialize existing fields
        this.id = id;
        this.hotelId = hotelId;
        this.hotelChainId = hotelChainId;
        this.price = price;
        this.amenities = amenities;
        this.capacity = capacity;
        this.roomView = roomView;
        this.extendable = extendable;
        this.problems = problems;
        this.status = status;
        this.startDate = startDate;
        this.endDate = endDate;
        this.numberOfRooms = numberOfRooms;
        this.category = category;
        this.city = city;
    }

    public Boolean getBooked() { return booked; }
    public void setBooked(Boolean booked) { this.booked = booked; }
    public Boolean getRented() { return rented; }
    public void setRented(Boolean rented) { this.rented = rented; }

    public Date getStartDate() { return startDate; }
    public void setStartDate(Date startDate) { this.startDate = startDate; }

    public Date getEndDate() { return endDate; }
    public void setEndDate(Date endDate) { this.endDate = endDate; }

    public Integer getNumberOfRooms() { return numberOfRooms; }
    public void setNumberOfRooms(Integer numberOfRooms) { this.numberOfRooms = numberOfRooms; }

    public Integer getCategory() { return category; }
    public void setCategory(Integer category) { this.category = category; }

    public String getCity() { return city; }
    public void setCity(String city) { this.city = city; }
    // Getters and Setters
    public Integer getId() { return id; }
    public void setId(Integer id) { this.id = id; }
    public Integer getHotelId() { return hotelId; }
    public void setHotelId(Integer hotelId) { this.hotelId = hotelId; }
    public Integer getHotelChainId() { return hotelChainId; }
    public void setHotelChainId(Integer hotelChainId) { this.hotelChainId = hotelChainId; }
    public Integer getPrice() { return price; }
    public void setPrice(Integer price) { this.price = price; }
    public String getAmenities() { return amenities; }
    public void setAmenities(String amenities) { this.amenities = amenities; }
    public Integer getCapacity() { return capacity; }
    public void setCapacity(Integer capacity) { this.capacity = capacity; }
    public String getRoomView() { return roomView; }
    public void setRoomView(String roomView) { this.roomView = roomView; }
    public Boolean getExtendable() { return extendable; }
    public void setExtendable(Boolean extendable) { this.extendable = extendable; }
    public Boolean getProblems() { return problems; }
    public void setProblems(Boolean problems) { this.problems = problems; }
    public Boolean getStatus() { return status; }
    public void setStatus(Boolean status) { this.status = status; }

    @Override
    public String toString() {
        return "Room{" +
                "id=" + id +
                ", hotelId=" + hotelId +
                ", hotelChainId=" + hotelChainId +
                ", price=" + price +
                ", amenities='" + amenities + '\'' +
                ", capacity=" + capacity +
                ", roomView='" + roomView + '\'' +
                ", extendable=" + extendable +
                ", problems=" + problems +
                ", status=" + status +
                '}';
    }



}
