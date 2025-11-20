package com.servlet.controller;

import java.io.IOException;

import com.servlet.Dao.UserDao;
import com.servlet.Dao.UserDaoImlimaenation;
import com.servlet.Dto.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/update")
public class UpdateUserservlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	UserDao udao=null;
	public UpdateUserservlet() {
		udao=new UserDaoImlimaenation();
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int umpid=Integer.parseInt(req.getParameter("uid"));
		String uname=req.getParameter("name");
		String email=req.getParameter("email");
		String pass=req.getParameter("pass");
		long ph=Long.parseLong(req.getParameter("ph"));
		
		User user=new User();
		user.setU_id(umpid);
		user.setFullname(uname);
		user.setEmail(email);
		user.setEmail(email);
		user.setPass(pass);
		user.setPhone(ph);
		boolean update=udao.updateUser(user);
		if(update==true)
		{
			req.getRequestDispatcher("viewuser").forward(req, resp);
		}
				
		
	}

}
