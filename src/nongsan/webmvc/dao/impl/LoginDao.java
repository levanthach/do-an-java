package nongsan.webmvc.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import nongsan.webmvc.jdbc.connectDB;
import nongsan.webmvc.model.User;

public class LoginDao {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	public User checkLogin(String username, String password) {
		try {
			String query = "select username, password from users where username = ? AND password = ?";
			new connectDB();
			conn = connectDB.getConnect();
			ps = conn.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, password);
			rs = ps.executeQuery();
			while(rs.next()) {
				User u = new User(rs.getString(1), rs.getString(2));
				return u;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
