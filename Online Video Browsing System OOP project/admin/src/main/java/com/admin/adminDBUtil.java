package com.admin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class adminDBUtil {
	private static boolean msg;
	private static Connection con = null;
	private static Statement state = null;
	private static ResultSet rs = null;
	
	public static boolean validate(String userName, String password){
		
		try {
			
			//connect to db
			con = DBConnect.getConnection();
			state = con.createStatement();
			
			//query
			String sql = "select * from admin where adminUserName='"+userName+"' and adminPassword='"+password+"'";
			
			//executing query
			rs = state.executeQuery(sql);
			
			//check whether success or not
			if(rs.next()) {
				msg = true;
			}
			else {
				msg = false;
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		
		return msg;
	}
	
	
	public static boolean addadmin(String name,String phone,String email,String username,String password) {
		
		boolean msg = false;
		
		try {
			//connect to db
			con = DBConnect.getConnection();
			state = con.createStatement();
			
			String sql = "Insert into admin values (0,'"+name+"','"+phone+"','"+email+"','"+username+"','"+password+"')";
			
			//executing query
			int rs = state.executeUpdate(sql);
			
			if(rs > 0) {
				msg = true;
			}
			else {
				msg = false;
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();			
		}
		
		
		return msg;
	}
	
	
	
	public static boolean updateadmin(String id,String name,String phone,String email,String username,String password) {
		try {
			//connect to db
			con = DBConnect.getConnection();
			state = con.createStatement();
			
			String sql = "update admin set name='"+name+"',phoneNumber='"+phone+"',email='"+email+"',adminUserName='"+username+"',adminPassword='"+password+"'" + "where adminID='"+id+"'";
			//executing query
			int rs = state.executeUpdate(sql);
			
			if(rs>0) {
				msg = true;
			}
			else {
				msg = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();	
		}
		return msg;
	}
	
	
	public static List<admin> getAdminDetails(String userName){
		
		ArrayList<admin> ad = new ArrayList<>();
		
		try {
			//connect to db
			con = DBConnect.getConnection();
			state = con.createStatement();
			
			String sql = "Select * from admin where adminuserName='"+userName+"'";
			
			//executing query
			rs = state.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String phone = rs.getString(3);
				String email = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				
				admin a = new admin(id,name,phone,email,username,password);
				ad.add(a);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	
		return ad;
	}
	
	
	public static boolean deleteadmin(String username) {
		
		try {
			//connect to db
			con = DBConnect.getConnection();
			state = con.createStatement();
			
			String sql = "Delete from admin where adminuserName='"+username+"'";
			//executing query
			int rs = state.executeUpdate(sql);
			
			if(rs>0) {
				msg = true;
			}
			else {
				msg = false;
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return msg;
		
	}

}
