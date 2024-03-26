package com.demo;

public class HotelChainPhone {
    private Integer id;
    private Integer hotelChainId;
    private String phone;

    public HotelChainPhone(Integer id, Integer hotelChainId, String phone) {
        this.id = id;
        this.hotelChainId = hotelChainId;
        this.phone = phone;
    }

    // Getters and Setters
    public Integer getId() { return id; }
    public void setId(Integer id) { this.id = id; }
    public Integer getHotelChainId() { return hotelChainId; }
    public void setHotelChainId(Integer hotelChainId) { this.hotelChainId = hotelChainId; }
    public String getPhone() { return phone; }
    public void setPhone(String phone) { this.phone = phone; }
}
