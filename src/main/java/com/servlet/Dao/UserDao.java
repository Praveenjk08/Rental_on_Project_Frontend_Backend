package com.servlet.Dao;

import com.servlet.Dto.User;

public interface UserDao {
	public boolean isRegisterd(User user); 
	public User isLogin(String email,String pass);

}
