package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class LoginDao 
{
	String query = "select * from hms.userstore where uname=? and pass=?";
	String url = "jdbc:mysql://localhost:3306/hms?autoReconnect=true&useSSL=false";
	String username = "root";
	String password = "admin";
	
	
	public boolean check(String uname, String pass)
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			 PreparedStatement st = con.prepareStatement(query);
			 st.setString(1, uname);
			 st.setString(2, pass);
			 ResultSet rs = st.executeQuery();
			 if(rs.next())
			 {
				 return true;
			 }
			 
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
		return false;
	}

}
