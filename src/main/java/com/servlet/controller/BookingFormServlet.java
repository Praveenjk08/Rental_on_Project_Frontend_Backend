package com.servlet.controller;

import java.io.IOException;
import java.io.PrintWriter;

import com.servlet.Dao.BooKingDao;
import com.servlet.Dao.BookingDaoImpli;
import com.servlet.Dto.Booking;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/bookservlet")
public class BookingFormServlet extends HttpServlet{
		
		/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	BooKingDao bdao=null;
	public BookingFormServlet() {
		bdao=new BookingDaoImpli();
	}

		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int userid=Integer.parseInt(req.getParameter("uid"));
		int vid=Integer.parseInt(req.getParameter("vid"));
		String sdate=req.getParameter("sdate");
		String edate=req.getParameter("edate");
		double amount=Double.parseDouble(req.getParameter("am"));
		String gtype=req.getParameter("govern-type");
		String gid=req.getParameter("gid");
		int days=Integer.parseInt(req.getParameter("days"));
		
				
		
		Booking booking=new Booking(userid, vid, sdate, edate, amount, gtype, gid);
		booking.setNumberodays(days);
		int isBook=bdao.isBooking(booking);
		Booking b=new Booking();
		b.setBook_Id(isBook);
		System.out.println(isBook);
		double calctingdays=amount*days;
		if(isBook>0)
		{
			req.setAttribute("id", b);
			req.setAttribute("price", calctingdays);
			req.getRequestDispatcher("Payment.jsp").forward(req, resp);
			
		}
		else
		{
			PrintWriter po=resp.getWriter();
			po.println("<html><head></head><Body>Hi</body></html>");
		}
	
		
		
		
		
		}

}
