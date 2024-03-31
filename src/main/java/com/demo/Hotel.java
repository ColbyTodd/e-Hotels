package com.demo;

/**
 * Hotel class represents the hotel entity in the database.
 * It holds information about each hotel, including its chain ID, category, number of rooms,
 * address, email, phone number, and city.
 */

public class Hotel {
    private Integer id;
    private String name;
    private Integer hotelChainId;
    private Integer category;
    private Integer numberOfRooms;
    private String address;
    private String email;
    private String phone;
    private String city;

    /**
     * Constructor for Hotel object.
     * Initializes a hotel with its details including its ID, chain ID, category, number of rooms, address,
     * email, phone number, and city.
     *
     * @param id Unique identifier of the hotel.
     * @param hotelChainId Identifier for the hotel chain this hotel belongs to.
     * @param category The category of the hotel (e.g., stars).
     * @param numberOfRooms Number of rooms available in the hotel.
     * @param address Address of the hotel.
     * @param email Contact email of the hotel.
     * @param phone Contact phone number of the hotel.
     * @param city City where the hotel is located.
     */

    public Hotel(Integer id, String name, Integer hotelChainId, Integer category, Integer numberOfRooms, String address, String email, String phone, String city) {
        this.id = id;
        this.name =name;
        this.hotelChainId = hotelChainId;
        this.category = category;
        this.numberOfRooms = numberOfRooms;
        this.address = address;
        this.email = email;
        this.phone = phone;
        this.city = city;
    }

    // Getters and Setters
    public String getName() {return name; };
    public void setName(String name) {this.name = name;}
    public Integer getId() { return id; }
    public void setId(Integer id) { this.id = id; }
    public Integer getHotelChainId() { return hotelChainId; }
    public void setHotelChainId(Integer hotelChainId) { this.hotelChainId = hotelChainId; }
    public Integer getCategory() { return category; }
    public void setCategory(Integer category) { this.category = category; }
    public Integer getNumberOfRooms() { return numberOfRooms; }
    public void setNumberOfRooms(Integer numberOfRooms) { this.numberOfRooms = numberOfRooms; }
    public String getAddress() { return address; }
    public void setAddress(String address) { this.address = address; }
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    public String getPhone() { return phone; }
    public void setPhone(String phone) { this.phone = phone; }
    public String getCity() { return city; }
    public void setCity(String city) { this.city = city; }

    @Override
    public String toString() {
        return "Hotel{" +
                "id=" + id +
                ", name=" + name +
                ", hotelChainId=" + hotelChainId +
                ", category=" + category +
                ", numberOfRooms=" + numberOfRooms +
                ", address='" + address + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", city='" + city + '\'' +
                '}';
    }
}
