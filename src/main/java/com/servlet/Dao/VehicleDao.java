package com.servlet.Dao;

import java.util.List;

import com.servlet.Dto.Vehicles;

public interface VehicleDao {
	
	public List<Vehicles> getVehicles();
	public Vehicles searchingVehicles(String name);
	

}
