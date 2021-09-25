package com.admin;

public class admin {
	private int adminId;
	private String adminName;
	private String mobileNo;
	private String email;
	private String userName;
	private String password;
	
	public admin(int adminId, String adminName, String mobileNo, String email, String userName, String password) {
		this.adminId = adminId;
		this.adminName = adminName;
		this.mobileNo = mobileNo;
		this.email = email;
		this.userName = userName;
		this.password = password;
	}

	public admin() {
	}

	public int getAdminId() {
		return adminId;
	}


	public String getAdminName() {
		return adminName;
	}
	
	public String getMobileNo() {
		return mobileNo;
	}


	public String getEmail() {
		return email;
	}

	
	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}	

}




