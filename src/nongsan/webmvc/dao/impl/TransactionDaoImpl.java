package nongsan.webmvc.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import nongsan.webmvc.dao.CategoryDao;
import nongsan.webmvc.dao.TransactionDao;
import nongsan.webmvc.jdbc.connectDB;
import nongsan.webmvc.model.Transactions;

public class TransactionDaoImpl extends connectDB implements TransactionDao {
	public void insert(Transactions transaction) { 
		String sql = "INSERT INTO transactions(user_session,user_name,user_mail,user_phone,address,message,amount,payment,created) VALUES (?,?,?,?,?,?,?,?,?)"; 
		new connectDB(); 
		Connection con = connectDB.getConnect(); 
 
		try { 
			PreparedStatement ps = con.prepareStatement(sql); 
			ps.setString(1, transaction.getUser_session());
			ps.setString(2, transaction.getUser_name());
			ps.setString(3, transaction.getUser_mail());
			ps.setString(4, transaction.getUser_phone());
			ps.setString(5, transaction.getAddress());
			ps.setString(6, transaction.getMessage());
			ps.setString(7, transaction.getAmount());
			ps.setString(8, transaction.getPayment());
			ps.setString(9, transaction.getCreated());
			ps.executeUpdate(); 
			
		} catch (SQLException e) { 
			e.printStackTrace(); 
		} 
	} 
 	


}
