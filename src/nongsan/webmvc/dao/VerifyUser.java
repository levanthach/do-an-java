package nongsan.webmvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import nongsan.webmvc.jdbc.connectDB;

public class VerifyUser {
	public VerifyUser(String username)
	{

		try
		{
	    	String sql = "select * from users where username=?";
	    	Connection con = connectDB.getConnect();
	    	PreparedStatement st = con.prepareStatement(sql);
	    	st.setString(1, username);
	        ResultSet r1=st.executeQuery();
	        String usernameCounter;
	        if(r1.next()) 
	         {
	           usernameCounter =  r1.getString("username");
	           if(usernameCounter.equalsIgnoreCase(username)) 
	           {
	               System.out.println("Username already exists");
	           }
	           else
	           {
	        	   System.out.println("Username is available");
	           }
	         }
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
}
}
