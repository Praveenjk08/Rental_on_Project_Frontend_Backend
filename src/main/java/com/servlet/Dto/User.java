package com.servlet.Dto;

import java.time.LocalDateTime;

public class User {
		private String fullname;
		private String email;
		private int pass;
		private long phone;
		private LocalDateTime currDateTime;
		
		public User() {
			
		}
		
		public User(String fullname, String email, int pass, long phone, LocalDateTime currDateTime) {
			super();
			this.fullname = fullname;
			this.email = email;
			this.pass = pass;
			this.phone = phone;
			this.currDateTime = currDateTime;
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
		public int getPass() {
			return pass;
		}
		public void setPass(int pass) {
			this.pass = pass;
		}
		public long getPhone() {
			return phone;
		}
		public void setPhone(long phone) {
			this.phone = phone;
		}
		public LocalDateTime getCurrDateTime() {
			return currDateTime;
		}
		public void setCurrDateTime(LocalDateTime currDateTime) {
			this.currDateTime = currDateTime;
		}
		
		

	


}
