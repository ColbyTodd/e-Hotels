package com.demo;

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
