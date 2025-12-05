package com.servlet.Dto;

import java.sql.Timestamp;

public class Booking {
	private int book_Id;
	private int user_id;
	private int vehicle_id;
	private Timestamp current_TimeandDate;
	private String start_Date;
	private String end_Date;
	private String pickup_location;
	private String drop_location;
	private double amount;
	private String government_IdType;
	private String government_id;
	private String booking_status;
	private String payment_status;
	
	
	public Booking() {
		// TODO Auto-generated constructor stub
	}
	
	
	public int getBook_Id() {
		return book_Id;
	}
	public Booking(int user_id, int vehicle_id, String start_Date, String end_Date, double amount, String government_IdType,
		String government_id) {
	super();
	this.user_id = user_id;
	this.vehicle_id = vehicle_id;
	this.start_Date = start_Date;
	this.end_Date = end_Date;
	this.amount = amount;
	this.government_IdType = government_IdType;
	this.government_id = government_id;
}
	public void setBook_Id(int book_Id) {
		this.book_Id = book_Id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getVehicle_id() {
		return vehicle_id;
	}
	public void setVehicle_id(int vehicle_id) {
		this.vehicle_id = vehicle_id;
	}
	public Timestamp getCurrent_TimeandDate() {
		return current_TimeandDate;
	}
	public void setCurrent_TimeandDate(Timestamp current_TimeandDate) {
		this.current_TimeandDate = current_TimeandDate;
	}
	public String getStart_Date() {
		return start_Date;
	}
	public void setStart_Date(String start_Date) {
		this.start_Date = start_Date;
	}
	public String getEnd_Date() {
		return end_Date;
	}
	public void setEnd_Date(String end_Date) {
		this.end_Date = end_Date;
	}
	public String getPickup_location() {
		return pickup_location;
	}
	public void setPickup_location(String pickup_location) {
		this.pickup_location = pickup_location;
	}
	public String getDrop_location() {
		return drop_location;
	}
	public void setDrop_location(String drop_location) {
		this.drop_location = drop_location;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public String getGovernment_IdType() {
		return government_IdType;
	}
	public void setGovernment_IdType(String government_IdType) {
		this.government_IdType = government_IdType;
	}
	public String getGovernment_id() {
		return government_id;
	}
	public void setGovernment_id(String government_id) {
		this.government_id = government_id;
	}
	public String getBooking_status() {
		return booking_status;
	}
	public void setBooking_status(String booking_status) {
		this.booking_status = booking_status;
	}
	public String getPayment_status() {
		return payment_status;
	}
	public void setPayment_status(String payment_status) {
		this.payment_status = payment_status;
	}
	

}
