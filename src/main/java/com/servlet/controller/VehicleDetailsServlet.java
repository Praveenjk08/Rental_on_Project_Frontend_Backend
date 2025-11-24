package com.servlet.controller;

import java.io.IOException;
import java.util.List;

import com.servlet.Dao.VehicleDao;
import com.servlet.Dao.VehicleDaoImpliment;
import com.servlet.Dto.Vehicles;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/vehicledetails")
public class VehicleDetailsServlet  extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	VehicleDao vdao=null;
	public VehicleDetailsServlet() {
		vdao=new VehicleDaoImpliment();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<Vehicles> vlist=vdao.getVehicles();
		
		if(vlist!=null)
		{
			req.setAttribute("vl", vlist);
			
			req.getRequestDispatcher("Vechicledetails.jsp").forward(req, resp);
		}
	
	}
	
	

}
