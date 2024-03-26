package com.demo;

public class HotelChainEmail {
    private Integer id;
    private Integer hotelChainId;
    private String email;

    public HotelChainEmail(Integer id, Integer hotelChainId, String email) {
        this.id = id;
        this.hotelChainId = hotelChainId;
        this.email = email;
    }

    // Getters and Setters
    public Integer getId() { return id; }
    public void setId(Integer id) { this.id = id; }
    public Integer getHotelChainId() { return hotelChainId; }
    public void setHotelChainId(Integer hotelChainId) { this.hotelChainId = hotelChainId; }
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
}
