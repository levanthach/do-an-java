package nongsan.webmvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import nongsan.webmvc.jdbc.connectDB;
import nongsan.webmvc.model.User;

public class RegisterDao {
	Connection con;
	public RegisterDao(Connection con)
	{
		this.con =con;
	}
	public boolean RegisterUser (User user)
    {
		boolean set = false;      
        try
        {    
        	con = connectDB.getConnect();
            String sql = "INSERT INTO users (username,password,email,phone,name) values (?,?,?,?,?)"; 
            PreparedStatement preparedStatement = this.con.prepareStatement(sql);
            preparedStatement.setString(1, user.getUsername());
            preparedStatement.setString(2, user.getPassword());
            preparedStatement.setString(3, user.getEmail());
            preparedStatement.setString(4, user.getPhone());
            preparedStatement.setString(5, user.getName());
            
            preparedStatement.executeUpdate();
            
            set = true;
        }
        catch(SQLException e)
        {
           e.printStackTrace();
        }       
        return set;  // On failure, send a message from here.
    }
}
