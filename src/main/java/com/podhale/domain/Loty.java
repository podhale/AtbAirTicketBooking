package com.podhale.domain;


public class Loty
{
    private Long id;
    private String airline;
    private String startAirport;
    private String startTime;
    private String endAirport;
    private String endTime;
    private int price;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getAirline() {
        return airline;
    }

    public void setAirline(String airline) {
        this.airline = airline;
    }

    public String getStartAirport() {
        return startAirport;
    }

    public void setStartAirport(String startAirport) {
        this.startAirport = startAirport;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndAirport() {
        return endAirport;
    }

    public void setEndAirport(String endAirport) {
        this.endAirport = endAirport;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }


    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Loty{" +
                "id=" + id +
                ", airline='" + airline + '\'' +
                ", startAirport='" + startAirport + '\'' +
                ", startTime='" + startTime + '\'' +
                ", endAirport='" + endAirport + '\'' +
                ", endTime='" + endTime + '\'' +
                ", price=" + price +
                '}';
    }
}
