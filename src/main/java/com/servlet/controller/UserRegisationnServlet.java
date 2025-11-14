package com.servlet.controller;

import java.io.IOException;
import java.time.LocalDateTime;

import com.servlet.Dto.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/reg")
public class UserRegisationnServlet extends HttpServlet  {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		int password=Integer.parseInt(req.getParameter("pass"));
		long phone=Long.parseLong(req.getParameter("ph"));
		LocalDateTime curDateTime=LocalDateTime.parse(req.getParameter("date"));
		User user=new User(name, email, password, phone, curDateTime);
		
	}
	
	

}
