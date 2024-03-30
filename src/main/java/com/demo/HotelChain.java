package com.demo;

public class HotelChain {
    private Integer id;
    private String name;  // New field added
    private Integer numberOfHotels;
    private String addressOfCentralOffices;

    public HotelChain(Integer id, String name, Integer numberOfHotels, String addressOfCentralOffices) {
        this.id = id;
        this.name = name;  // Initialize new field
        this.numberOfHotels = numberOfHotels;
        this.addressOfCentralOffices = addressOfCentralOffices;
    }

    // Getters and Setters
    public Integer getId() { return id; }
    public void setId(Integer id) { this.id = id; }
    public String getName() { return name; }  // Getter for new field
    public void setName(String name) { this.name = name; }  // Setter for new field
    public Integer getNumberOfHotels() { return numberOfHotels; }
    public void setNumberOfHotels(Integer numberOfHotels) { this.numberOfHotels = numberOfHotels; }
    public String getAddressOfCentralOffices() { return addressOfCentralOffices; }
    public void setAddressOfCentralOffices(String addressOfCentralOffices) { this.addressOfCentralOffices = addressOfCentralOffices; }

    @Override
    public String toString() {
        return "HotelChain{" +
                "id=" + id +
                ", name='" + name + '\'' +  // Include new field in toString
                ", numberOfHotels=" + numberOfHotels +
                ", addressOfCentralOffices='" + addressOfCentralOffices + '\'' +
                '}';
    }
}
