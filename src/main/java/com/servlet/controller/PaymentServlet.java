package com.servlet.controller;

import java.io.IOException;
import java.io.PrintWriter;

import com.servlet.Dao.PaymentDao;
import com.servlet.Dao.PaymentDaoImpli;
import com.servlet.Dto.Payment;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/paymentservlet")
public class PaymentServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	PaymentDao pdao=null;
public PaymentServlet() {
	pdao=new PaymentDaoImpli();
	System.out.println("payment Servlet Object created");
}	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	 int vid=Integer.parseInt(req.getParameter("vid"));
	 int uid=Integer.parseInt(req.getParameter("uid"));
	 int bid=Integer.parseInt(req.getParameter("bid"));
	 String type=req.getParameter("type");
	 double amount=Double.parseDouble(req.getParameter("am"));
	 
	 Payment payment=new Payment();
	 payment.setAmount(amount);
	 payment.setBooking_id(bid);
	 payment.setPayment_method(type);
	 payment.setVehicle_id(vid);
	 payment.setUser_id(uid);
	 boolean ty=pdao.updateAndInsert(payment);
	 if(ty==true)
	 {
//		 req.getRequestDispatcher("PayemntSucess.jsp").forward(req, resp);
	     resp.sendRedirect("PayemntSucess.jsp");
	 }
	 else
	 {
		 PrintWriter pr=resp.getWriter();
		 pr.write("<htrml><head></head><body><h1>Hei</h1></body></html>");
	 }
	 
	 
	 
	}

}
