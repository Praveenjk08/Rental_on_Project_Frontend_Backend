package com.servlet.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.servlet.Db.DatabaseConnection;
import com.servlet.Dto.Vehicles;

public class VehicleDaoImpliment implements VehicleDao {
	Connection con=null;
	PreparedStatement pst=null;

	@Override
	public List<Vehicles> getVehicles() {
		
		String vehicledetails="select * from vehicles1";
		Vehicles vehicles=null;
		List<Vehicles> vlist=new ArrayList<Vehicles>();
		con=DatabaseConnection.givemePower();
		try {
			pst=con.prepareStatement(vehicledetails);
			ResultSet res=pst.executeQuery();
			while(res.next())
			{
				
				vehicles=new Vehicles();
				vehicles.setVehicle_id(res.getInt("vehicle_id"));
				vehicles.setVehicle_type(res.getString("vehicle_type"));
				vehicles.setBrand(res.getString("brand"));
				vehicles.setModel(res.getString("model"));
				vehicles.setYear(res.getString("year"));
				vehicles.setPrice_per_day(res.getDouble("price_per_day"));
				vehicles.setFuel_type(res.getString("fuel_type"));
				vehicles.setMilage(res.getString("milage"));
				vehicles.setColor(res.getString("color"));
				vehicles.setStatus(res.getString("status"));
				vehicles.setImage_url(res.getString("image_url"));
				vlist.add(vehicles);
				
				
			
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return vlist;
	}

	@Override
	public Vehicles searchingVehicles(String name) {
		Vehicles vehicles=null;
		String name1="select * from vehicles1 where brand=?";
		con=DatabaseConnection.givemePower();
		try {
			pst=con.prepareStatement(name1);
			pst.setString(1, name);
			ResultSet  res=pst.executeQuery();
			if(res.next())
			{
				vehicles=new Vehicles();
				vehicles.setVehicle_id(res.getInt("vehicle_id"));
				vehicles.setVehicle_type(res.getString("vehicle_type"));
				vehicles.setBrand(res.getString("brand"));
				vehicles.setModel(res.getString("model"));
				vehicles.setYear(res.getString("year"));
				vehicles.setPrice_per_day(res.getDouble("price_per_day"));
				vehicles.setFuel_type(res.getString("fuel_type"));
				vehicles.setMilage(res.getString("milage"));
				vehicles.setColor(res.getString("color"));
				vehicles.setStatus(res.getString("status"));
				vehicles.setImage_url(res.getString("image_url"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vehicles;
	}

	

}
