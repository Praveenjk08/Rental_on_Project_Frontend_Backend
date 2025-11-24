package com.servlet.Dto;

public class Vehicles {
	private int vehicle_id;
	private String vehicle_type;
	private String brand;
	private String model;
	private String year;
	private double price_per_day;
	private String fuel_type; 
	private String milage;
	private String color;
	private String status;
	private String image_url;
public Vehicles() {
	
}	



	
	
	
	public Vehicles(int vehicle_id, String vehicle_type, String brand, String model, String year, double price_per_day,
		String fuel_type, String milage, String color, String status, String image_url) {
	super();
	this.vehicle_id = vehicle_id;
	this.vehicle_type = vehicle_type;
	this.brand = brand;
	this.model = model;
	this.year = year;
	this.price_per_day = price_per_day;
	this.fuel_type = fuel_type;
	this.milage = milage;
	this.color = color;
	this.status = status;
	this.image_url = image_url;
}






	public int getVehicle_id() {
		return vehicle_id;
	}
	public void setVehicle_id(int vehicle_id) {
		this.vehicle_id = vehicle_id;
	}
	public String getVehicle_type() {
		return vehicle_type;
	}
	public void setVehicle_type(String vehicle_type) {
		this.vehicle_type = vehicle_type;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public double getPrice_per_day() {
		return price_per_day;
	}
	public void setPrice_per_day(double price_per_day) {
		this.price_per_day = price_per_day;
	}
	public String getFuel_type() {
		return fuel_type;
	}
	public void setFuel_type(String fuel_type) {
		this.fuel_type = fuel_type;
	}
	public String getMilage() {
		return milage;
	}
	public void setMilage(String milage) {
		this.milage = milage;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getImage_url() {
		return image_url;
	}
	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}

}
