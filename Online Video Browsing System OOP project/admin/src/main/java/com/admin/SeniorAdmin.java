package com.admin;

public class SeniorAdmin extends admin {
	private String key;
	public static SeniorAdmin sa;

	public SeniorAdmin(int adminId, String adminName, String mobileNo, String email, String userName, String password, String key) {
		
		super(adminId, adminName, mobileNo, email, userName, password);
		this.key = key;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}
	
	
	private SeniorAdmin() {
		super();
	}
	
	private static SeniorAdmin getSA() {
		//check whether there is an instance
		if(sa == null) {
			return new SeniorAdmin();
		}
		else {
			return sa;
		}
		
	}
	
	

}

