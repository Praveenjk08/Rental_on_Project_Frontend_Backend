package com.servlet.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.servlet.Db.DatabaseConnection;
import com.servlet.Dto.Booking;

public class BookingDaoImpli implements BooKingDao {
   Connection con=null;
   PreparedStatement pst=null;
	@Override
	public int isBooking(Booking booking) {
		int bookingId=0;
		String insert="insert into bookings1 (user_id, vehicle_id,booking_date,start_date,end_date,total_amount, gov_id_type, gov_id_number,numberofdays,fullamount) values (?,?,now(),?,?,?,?,?,?,?)";
		double fullamount=booking.getAmount()*booking.getNumberodays();
		con=DatabaseConnection.givemePower();
		try {
			pst=con.prepareStatement(insert,Statement.RETURN_GENERATED_KEYS);
			pst.setInt(1, booking.getUser_id());
			pst.setInt(2, booking.getVehicle_id());
			pst.setString(3,booking.getStart_Date());
			pst.setString(4, booking.getEnd_Date());
			pst.setDouble(5, booking.getAmount());
			pst.setString(6, booking.getGovernment_IdType());
			pst.setString(7, booking.getGovernment_id());
			pst.setInt(8, booking.getNumberodays());
			pst.setDouble(9, fullamount);
			
			int count=pst.executeUpdate();
			if(count>0)
			{
				ResultSet res=pst.getGeneratedKeys();
				if(res.next())
				{
					bookingId=res.getInt(1);
				}
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return bookingId;
	}

}
