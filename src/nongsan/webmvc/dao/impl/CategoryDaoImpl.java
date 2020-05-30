package nongsan.webmvc.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;

//import com.vienmv.dao.impl.String;
//import com.vienmv.model.Category;

//import com.vienmv.dao.impl.String;

//import com.vienmv.dao.impl.Override;
//import com.vienmv.dao.impl.String;

import java.sql.ResultSet;
import nongsan.webmvc.model.Catalog;

import nongsan.webmvc.dao.CategoryDao;
import nongsan.webmvc.jdbc.connectDB;

public class CategoryDaoImpl extends connectDB implements CategoryDao {

	@Override
	public void insert(Catalog category) {
		String sql = "INSERT INTO catalog(id, name,parent_id) VALUES (?, ?, ?)";
		new connectDB();
		Connection con = connectDB.getConnect();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, category.getId());
			ps.setString(2, category.getName());
			ps.setString(3, category.getParent_id());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void edit(Catalog category) {
		String sql = "UPDATE catalog SET name = ? WHERE id = ?";
		new connectDB();
		Connection con = connectDB.getConnect();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, category.getName());
			ps.setString(2, category.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public Catalog get(int id) {
		System.out.print("Id trong Dao :" + id);
		String sql = "SELECT * FROM catalog WHERE id = ? ";
		new connectDB();
		Connection con = connectDB.getConnect();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Catalog category = new Catalog();

				category.setId(rs.getString("id"));
				category.setName(rs.getString("name"));

				return category;

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public Catalog get(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Catalog> getAll() {
		List<Catalog> categories = new ArrayList<Catalog>();
		String sql = "SELECT * FROM catalog";
		Connection conn = connectDB.getConnect();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Catalog category = new Catalog();

				category.setId(rs.getString("id"));
				category.setName(rs.getString("name"));
				category.setParent_id(rs.getString("parent_id"));
				categories.add(category);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return categories;
	}

	@Override
	public void delete(String id) {
		System.out.println("Id :"+ id);
		String sql = "DELETE FROM catalog WHERE id = ?";
		new connectDB();
		Connection conn = connectDB.getConnect();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
