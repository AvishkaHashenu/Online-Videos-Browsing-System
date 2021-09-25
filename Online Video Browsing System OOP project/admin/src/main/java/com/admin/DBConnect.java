package com.admin;

import java.sql.Connection;

import java.sql.DriverManager;

public class DBConnect {
	private static String url = "jdbc:mysql://localhost:3306/vediosystem";
	private static String admin = "root";
	private static String pw = "1999";
	
	private static Connection con;
	
	//establishing db connection
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,admin,pw);
			
		}
		catch(Exception e) {
			System.out.println("Database connection is unsuccessful");
			
		}
		
		return con;
		
	}

}
