package com.servlet.controller;

import java.io.IOException;

import com.servlet.Dao.VehicleDao;
import com.servlet.Dao.VehicleDaoImpliment;
import com.servlet.Dto.Vehicles;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/vpjk")
public class VechiclesSearchingByNameServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	VehicleDao vdao=null;
	public VechiclesSearchingByNameServlet() {
		vdao=new VehicleDaoImpliment();
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String vechileName=req.getParameter("name");
//	 Vehicles vehicles=new Vehicles();
//	 vehicles.setVehicle_type(vechileName);
	Vehicles vehicles=vdao.searchingVehicles(vechileName);
	if(vehicles!=null)
	{
		req.setAttribute("vljk", vehicles);
		req.getRequestDispatcher("SearchingByName.jsp").forward(req, resp);
	}
	
	
	}
	

}
