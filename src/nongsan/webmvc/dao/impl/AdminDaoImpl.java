package nongsan.webmvc.dao.impl; 
 
import java.sql.Connection; 
import java.sql.PreparedStatement; 
import java.sql.SQLException; 
 
import java.util.ArrayList; 
import java.util.List; 
 
import java.sql.ResultSet; 
 
import nongsan.webmvc.model.Admin; 
import nongsan.webmvc.dao.AdminDao; 
import nongsan.webmvc.jdbc.connectDB; 
 
public class AdminDaoImpl extends connectDB implements AdminDao { 
 
	@Override 
	public void insert(Admin admin) { 
		String sql = "INSERT INTO admin(id, username,password,name) VALUES (?, ?, ?,?)"; 
		new connectDB(); 
		Connection con = connectDB.getConnect(); 
 
		try { 
			PreparedStatement ps = con.prepareStatement(sql); 
			ps.setString(1, admin.getId()); 
			ps.setString(2, admin.getUsername()); 
			ps.setString(3, admin.getPassword()); 
			ps.setString(4, admin.getName()); 
			ps.executeUpdate(); 
		} catch (SQLException e) { 
			e.printStackTrace(); 
		} 
	} 
 
	@Override 
	public void edit(Admin admin) { 
		// TODO Auto-generated method stub 
		 
	} 
 
	@Override 
	public void delete(int id) { 
		// TODO Auto-generated method stub 
		 
	} 
 
	@Override 
	public Admin get(int id) { 
		// TODO Auto-generated method stub 
		return null; 
	} 
 
	@Override 
	public Admin get(String name) { 
		// TODO Auto-generated method stub 
		return null; 
	} 
 
	@Override 
	public List<Admin> getAll() { 
		List<Admin> admins = new ArrayList<Admin>(); 
		String sql = "SELECT * FROM admin"; 
		Connection conn = connectDB.getConnect(); 
 
		try { 
			PreparedStatement ps = conn.prepareStatement(sql); 
			ResultSet rs = ps.executeQuery(); 
 
			while (rs.next()) { 
				Admin admin = new Admin(); 
 
				admin.setId(rs.getString("id")); 
				admin.setUsername(rs.getString("username")); 
				admin.setPassword(rs.getString("password")); 
				admin.setName(rs.getString("name")); 
				admins.add(admin); 
			} 
 
		} catch (SQLException e) { 
			e.printStackTrace(); 
		} 
 
		return admins; 
	} 
} 
