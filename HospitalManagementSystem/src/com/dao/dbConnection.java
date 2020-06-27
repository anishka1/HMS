package com.dao;
import java.sql.*;

public class dbConnection
{
	public static void main(String[] args) throws Exception
	{
		String url = "jdbc:mysql://localhost:3306/hms?autoReconnect=true&useSSL=false";
		String uname = "root";
		String pass = "admin";
		String query = "select * from hms.userstore where username=? and password=? ";
		
		Class.forName("com.mysql.jdbc.Driver");
		//String con = null;
		try
		{
			Connection con = DriverManager.getConnection(url,uname,pass);
			 System.out.println("Your JDBC URL is as follows:" + url);
			 Statement st = con.createStatement();
				ResultSet rs = st.executeQuery(query);
				rs.next();
				String name = rs.getString("name");
				System.out.println(name);

				st.close();
				con.close();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			
		}
	}
}

