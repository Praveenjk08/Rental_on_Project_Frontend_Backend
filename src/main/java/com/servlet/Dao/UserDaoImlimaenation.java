package com.servlet.Dao;

import java.security.Timestamp;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;

import com.servlet.Db.DatabaseConnection;
import com.servlet.Dto.User;
import com.servlet.dbutil.DbConnection;

public class UserDaoImlimaenation implements  UserDao{
	Connection con=null;
	PreparedStatement pst=null;
	
	@Override
	public boolean isRegisterd(User user) {
		
		String register="insert into users(full_name, email, password, phone_number, created_at) values(?,?,?,?,?)";
		con=DatabaseConnection.givemePower();
		try {
			pst=con.prepareStatement(register);
			pst.setString(1, user.getFullname());
			pst.setString(2, user.getEmail());
			pst.setString(3, user.getPass());
			pst.setLong(4, user.getPhone());
			LocalDateTime now=LocalDateTime.now();
			pst.setTimestamp(5,java.sql.Timestamp.valueOf(LocalDateTime.now()));
//			pst.setTimestamp(5, java.sql.Timestamp.valueOf(user.getCurrDateTime()));
			int count=pst.executeUpdate();
			if(count>0) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}

	@Override
	public User isLogin(String email, String pass) {
		String  login="select * from users where email=? and password=?";
	      con=DatabaseConnection.givemePower();
		User user=null;
		try {
			pst=con.prepareStatement(login);
			pst.setString(1, email);
			pst.setString(2, pass);
			ResultSet res=pst.executeQuery();
			if(res.next())
			{
				user=new User();
				user.setU_id(res.getInt("user_id"));
				user.setFullname(res.getString("full_name"));
				user.setEmail(res.getString("email"));
				user.setPass(res.getString("password"));
				user.setPhone(res.getLong("phone_number"));
				user.setCurrDateTime(res.getTimestamp("created_at"));
				
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
		
	}
	

}
