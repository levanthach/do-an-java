package nongsan.webmvc.jdbc;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;



public class connectDB {
	String sql;
	public connectDB(){
		super();
	}
	public  static Connection getConnect(){
		Connection connection = null;
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			connection=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=QLNS;user=sa;password=123");
			System.out.println("Kết nối DB thành công!");
		} catch (SQLException | ClassNotFoundException e) {
			System.out.println("Kết nối DB thất bại!"+e.getMessage());
		}
		return connection;
	}
	public void thucThiCauLenhSQL(String sql) throws Exception{
		Connection connect = getConnect();
		java.sql.Statement stmt = connect.createStatement();
		stmt.executeUpdate(sql);
	}
	public ResultSet chonDuLieuTuDTB(String sql) throws Exception{
		Connection connect = getConnect();
		java.sql.Statement stmt = connect.createStatement();
		ResultSet rs =stmt.executeQuery(sql);
		return rs;
	}
	public static void main(String[] args) {
		connectDB connect = new connectDB();
		System.out.println(connect.getConnect());
		System.out.println(getConnect());
	}
}

