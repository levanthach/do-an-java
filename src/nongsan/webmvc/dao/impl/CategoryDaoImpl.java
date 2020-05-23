package nongsan.webmvc.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import nongsan.webmvc.dao.CategoryDao;
import nongsan.webmvc.jdbc.connectDB;
import nongsan.webmvc.model.Catalog;

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
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Catalog get(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Catalog get(String name) {
		// TODO Auto-generated method stub
		return null;
	}


}
