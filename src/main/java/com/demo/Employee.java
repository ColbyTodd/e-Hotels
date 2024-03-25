package com.demo;

/**
 * Employee class represents the employee entity in the database.
 * It holds information about each employee, including their associated hotel ID, hotel chain ID, SIN, full name, address, and role.
 */

public class Employee {
    private Integer id;
    private Integer hotelId;
    private Integer hotelChainId;
    private String sin;
    private String fullName;
    private String address;
    private String role;

    /**
     * Constructor for Employee object.
     * Initializes an employee with its details including ID, hotel ID, hotel chain ID, SIN, full name,
     * address, and role within the hotel.
     *
     * @param id Unique identifier of the employee.
     * @param hotelId Identifier for the hotel this employee works at.
     * @param hotelChainId Identifier for the hotel chain this employee is associated with.
     * @param sin Social Insurance Number of the employee.
     * @param fullName Full name of the employee.
     * @param address Address of the employee.
     * @param role Role of the employee within the hotel.
     */

    public Employee(Integer id, Integer hotelId, Integer hotelChainId, String sin, String fullName, String address, String role) {
        this.id = id;
        this.hotelId = hotelId;
        this.hotelChainId = hotelChainId;
        this.sin = sin;
        this.fullName = fullName;
        this.address = address;
        this.role = role;
    }

    // Getters and Setters
    public Integer getId() { return id; }
    public void setId(Integer id) { this.id = id; }
    public Integer getHotelId() { return hotelId; }
    public void setHotelId(Integer hotelId) { this.hotelId = hotelId; }
    public Integer getHotelChainId() { return hotelChainId; }
    public void setHotelChainId(Integer hotelChainId) { this.hotelChainId = hotelChainId; }
    public String getSin() { return sin; }
    public void setSin(String sin) { this.sin = sin; }
    public String getFullName() { return fullName; }
    public void setFullName(String fullName) { this.fullName = fullName; }
    public String getAddress() { return address; }
    public void setAddress(String address) { this.address = address; }
    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }

    @Override
    public String toString() {
        return "Employee{" +
                "id=" + id +
                ", hotelId=" + hotelId +
                ", hotelChainId=" + hotelChainId +
                ", sin='" + sin + '\'' +
                ", fullName='" + fullName + '\'' +
                ", address='" + address + '\'' +
                ", role='" + role + '\'' +
                '}';
    }
}
