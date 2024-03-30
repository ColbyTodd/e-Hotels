package com.demo;

import java.util.Date;

/**
 * Customer class represents the customer entity in the database.
 * It holds information about each customer, including full name, address, ID type, and registration date.
 */

public class Customer {
    private Integer id;
    private String fullName;
    private String address;
    private String idType;
    private Date registrationDate;

    /**
     * Constructor for Customer object.
     * Initializes a customer with its details including ID, full name, address, ID type, and registration date.
     *
     * @param id Unique identifier of the customer.
     * @param fullName Full name of the customer.
     * @param address Address of the customer.
     * @param idType Type of identification used by the customer.
     * @param registrationDate Date when the customer was registered.
     */

    public Customer(Integer id, String fullName, String address, String idType, Date registrationDate) {
        this.id = id;
        this.fullName = fullName;
        this.address = address;
        this.idType = idType;
        this.registrationDate = registrationDate;
    }

    // Getters and Setters
    public Integer getId() { return id; }
    public void setId(Integer id) { this.id = id; }
    public String getFullName() { return fullName; }
    public void setFullName(String fullName) { this.fullName = fullName; }
    public String getAddress() { return address; }
    public void setAddress(String address) { this.address = address; }
    public String getIdType() { return idType; }
    public void setIdType(String idType) { this.idType = idType; }
    public Date getRegistrationDate() { return registrationDate; }
    public void setRegistrationDate(Date registrationDate) { this.registrationDate = registrationDate; }

    @Override
    public String toString() {
        return "Customer{" +
                "id=" + id +
                ", fullName='" + fullName + '\'' +
                ", address='" + address + '\'' +
                ", idType='" + idType + '\'' +
                ", registrationDate=" + registrationDate +
                '}';
    }
}
