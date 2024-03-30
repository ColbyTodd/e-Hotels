package com.demo;

/**
 * Manager class represents the manager entity in the database.
 * It associates an employee with their managerial role in a specific hotel and hotel chain.
 */

public class Manager {
    private Integer employeeId;
    private Integer hotelId;
    private Integer hotelChainId;

    /**
     * Constructor for Manager object.
     * Initializes a manager with their employee ID and the hotel and hotel chain they manage.
     *
     * @param employeeId Unique identifier of the employee who is the manager.
     * @param hotelId Identifier for the hotel the manager manages.
     * @param hotelChainId Identifier for the hotel chain the manager is associated with.
     */

    public Manager(Integer employeeId, Integer hotelId, Integer hotelChainId) {
        this.employeeId = employeeId;
        this.hotelId = hotelId;
        this.hotelChainId = hotelChainId;
    }

    // Getters and Setters
    public Integer getEmployeeId() { return employeeId; }
    public void setEmployeeId(Integer employeeId) { this.employeeId = employeeId; }
    public Integer getHotelId() { return hotelId; }
    public void setHotelId(Integer hotelId) { this.hotelId = hotelId; }
    public Integer getHotelChainId() { return hotelChainId; }
    public void setHotelChainId(Integer hotelChainId) { this.hotelChainId = hotelChainId; }

    @Override
    public String toString() {
        return "Manager{" +
                "employeeId=" + employeeId +
                ", hotelId=" + hotelId +
                ", hotelChainId=" + hotelChainId +
                '}';
    }
}
