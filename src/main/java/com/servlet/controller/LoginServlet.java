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
import jakarta.servlet.http.HttpSession;
@WebServlet("/log")
public class LoginServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	  UserDao udao=null;
      public LoginServlet() {
    	  udao=new UserDaoImlimaenation();
       }	
      
      @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
     
    	  String email=req.getParameter("email");
    	  String pass=req.getParameter("pass");
    	  User user=udao.isLogin(email, pass);
    	  if(user!=null)
    	  {
    		  HttpSession session=req.getSession();
    		  session.setAttribute("user", user);
    		  req.getRequestDispatcher("dash.jsp")
    		  .forward(req, resp);
//    		  resp.sendRedirect("dash.jsp");
    	  }
    	  
    }

}
