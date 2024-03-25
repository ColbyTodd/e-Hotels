package com.demo;

/**
 * HotelChain class represents the hotel chain entity in the database.
 * It holds information about each hotel chain, including the number of hotels,
 * address of central offices, email addresses, and phone numbers.
 */

public class HotelChain {
    private Integer id;
    private Integer numberOfHotels;
    private String addressOfCentralOffices;
    private String[] emailAddresses;
    private String[] phoneNumbers;

    /**
     * Constructor for HotelChain object.
     * Initializes a hotel chain with its details including ID, number of hotels, address of central offices,
     * email addresses, and phone numbers.
     *
     * @param id Unique identifier of the hotel chain.
     * @param numberOfHotels Number of hotels under the chain.
     * @param addressOfCentralOffices Address of the central offices.
     * @param emailAddresses Array of email addresses.
     * @param phoneNumbers Array of phone numbers.
     */

    public HotelChain(Integer id, Integer numberOfHotels, String addressOfCentralOffices, String[] emailAddresses, String[] phoneNumbers) {
        this.id = id;
        this.numberOfHotels = numberOfHotels;
        this.addressOfCentralOffices = addressOfCentralOffices;
        this.emailAddresses = emailAddresses;
        this.phoneNumbers = phoneNumbers;
    }

    // Getters and Setters
    public Integer getId() { return id; }
    public void setId(Integer id) { this.id = id; }
    public Integer getNumberOfHotels() { return numberOfHotels; }
    public void setNumberOfHotels(Integer numberOfHotels) { this.numberOfHotels = numberOfHotels; }
    public String getAddressOfCentralOffices() { return addressOfCentralOffices; }
    public void setAddressOfCentralOffices(String addressOfCentralOffices) { this.addressOfCentralOffices = addressOfCentralOffices; }
    public String[] getEmailAddresses() { return emailAddresses; }
    public void setEmailAddresses(String[] emailAddresses) { this.emailAddresses = emailAddresses; }
    public String[] getPhoneNumbers() { return phoneNumbers; }
    public void setPhoneNumbers(String[] phoneNumbers) { this.phoneNumbers = phoneNumbers; }

    @Override
    public String toString() {
        return "HotelChain{" +
                "id=" + id +
                ", numberOfHotels=" + numberOfHotels +
                ", addressOfCentralOffices='" + addressOfCentralOffices + '\'' +
                ", emailAddresses=" + java.util.Arrays.toString(emailAddresses) +
                ", phoneNumbers=" + java.util.Arrays.toString(phoneNumbers) +
                '}';
    }
}
