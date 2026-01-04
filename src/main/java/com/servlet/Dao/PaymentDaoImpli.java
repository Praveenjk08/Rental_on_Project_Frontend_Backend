package com.servlet.Dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

import com.servlet.Db.DatabaseConnection;
import com.servlet.Dto.Payment;

public class PaymentDaoImpli implements PaymentDao {
	Connection con=null;
	CallableStatement call=null;
	boolean result=false;

	@Override
	public boolean updateAndInsert(Payment payment) {
		 String sql= "{CALL update_payment_status64(?,?,?,?,?)}";
		 con=DatabaseConnection.givemePower();
		 try {
			call=con.prepareCall(sql);
			call.setDouble(1, payment.getAmount());
			call.setString(2, payment.getPayment_method());
			call.setInt(3, payment.getUser_id());
			call.setInt(4, payment.getBooking_id());
			call.setInt(5, payment.getVehicle_id());
			call.execute();
			return true;
//			result=row>0;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
	 return result;	
	}

}
