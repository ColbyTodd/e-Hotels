package com.demo;

/**
 * Rent class represents the rent entity in the database.
 * It holds information about each rent transaction, including customer ID, room ID, hotel ID, hotel chain ID, start date, and end date.
 */

import java.util.Date;

public class Rent {
    private Integer id;
    private Integer customerId;
    private Integer roomId;
    private Integer hotelId;
    private Integer hotelChainId;
    private Date startDate;
    private Date endDate;

    /**
     * Constructor for Rent object.
     * Initializes a rent agreement with its details including ID, customer ID, room ID, hotel ID,
     * hotel chain ID, start date, and end date.
     *
     * @param id Unique identifier of the rent agreement.
     * @param customerId Identifier for the customer involved in the rent.
     * @param roomId Identifier for the rented room.
     * @param hotelId Identifier for the hotel of the rented room.
     * @param hotelChainId Identifier for the hotel chain of the rented room.
     * @param startDate Start date of the rent period.
     * @param endDate End date of the rent period.
     */

    public Rent(Integer id, Integer customerId, Integer roomId, Integer hotelId, Integer hotelChainId, Date startDate, Date endDate) {
        this.id = id;
        this.customerId = customerId;
        this.roomId = roomId;
        this.hotelId = hotelId;
        this.hotelChainId = hotelChainId;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    // Getters and Setters
    public Integer getId() { return id; }
    public void setId(Integer id) { this.id = id; }
    public Integer getCustomerId() { return customerId; }
    public void setCustomerId(Integer customerId) { this.customerId = customerId; }
    public Integer getRoomId() { return roomId; }
    public void setRoomId(Integer roomId) { this.roomId = roomId; }
    public Integer getHotelId() { return hotelId; }
    public void setHotelId(Integer hotelId) { this.hotelId = hotelId; }
    public Integer getHotelChainId() { return hotelChainId; }
    public void setHotelChainId(Integer hotelChainId) { this.hotelChainId = hotelChainId; }
    public Date getStartDate() { return startDate; }
    public void setStartDate(Date startDate) { this.startDate = startDate; }
    public Date getEndDate() { return endDate; }
    public void setEndDate(Date endDate) { this.endDate = endDate; }

    @Override
    public String toString() {
        return "Rent{" +
                "id=" + id +
                ", customerId=" + customerId +
                ", roomId=" + roomId +
                ", hotelId=" + hotelId +
                ", hotelChainId=" + hotelChainId +
                ", startDate=" + startDate +
                ", endDate=" + endDate +
                '}';
    }
}
