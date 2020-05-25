package nongsan.webmvc.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class connectDB {
	public connectDB(){
		
	}
	public static Connection getConnect(){
		Connection connection = null;
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			connection=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=QLNS;user=sa;password=1");
			System.out.println("Kết nối thành công!");
		} catch (SQLException | ClassNotFoundException e) {
			System.out.println("Kết nối thất bại!"+e.getMessage());
		}
		return connection;
	}
	public static void main(String[] args) {
		System.out.println(getConnect());
	}
	public  void excuteSql(String sql) throws Exception{
		Connection connect =getConnect();
		PreparedStatement stmt =   (PreparedStatement) connect.createStatement();
		stmt.executeUpdate(sql);
	}
	public ResultSet selectData(String sql) throws Exception{
		Connection connect =getConnect();
		PreparedStatement stmt =   (PreparedStatement) connect.createStatement();
		ResultSet rs=	stmt.executeQuery(sql);
		return rs;
	}
}

