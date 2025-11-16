package com.servlet.Dto;

import java.sql.Timestamp;
import java.time.LocalDateTime;

public class User {
	    private int u_id;
		
		private String fullname;
		private String email;
		private String pass;
		private long phone;
		private Timestamp currDateTime;
		
		public User() {
			
		}
		
		
		

		public User(String fullname, String email, String pass, long phone) {
			super();
			this.fullname = fullname;
			this.email = email;
			this.pass = pass;
			this.phone = phone;
			
		}
		public String getFullname() {
			return fullname;
		}
		public void setFullname(String fullname) {
			this.fullname = fullname;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPass() {
			return pass;
		}
		public void setPass(String pass) {
			this.pass = pass;
		}
		public long getPhone() {
			return phone;
		}
		public void setPhone(long phone) {
			this.phone = phone;
		}
		public int getU_id() {
			return u_id;
		}

		public void setU_id(int u_id) {
			this.u_id = u_id;
		}
		public Timestamp getCurrDateTime() {
			return currDateTime;
		}
		public void setCurrDateTime(Timestamp currDateTime) {
			this.currDateTime = currDateTime;
		}

		
		
		

	


}
