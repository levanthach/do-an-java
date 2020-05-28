package nongsan.webmvc.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;

import java.sql.ResultSet;
import nongsan.webmvc.model.Product;

import nongsan.webmvc.dao.ProductDao;
import nongsan.webmvc.jdbc.connectDB;

public class ProductDaoImpl extends connectDB implements ProductDao {

	@Override
	public void insert(Product product) {
		String sql = "INSERT INTO product(id, name, catalog_id, created, price, status, discount, description, image_link, image_list) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		new connectDB();
		Connection con = connectDB.getConnect();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, product.getId());
			ps.setString(2, product.getName());
			ps.setString(3, product.getCatalog_id());
			ps.setString(4, product.getCreated());
			ps.setString(5, product.getPrice());
			ps.setString(6, product.getStatus());
			ps.setString(7, product.getDiscount());
			ps.setString(8, product.getDescription());
			ps.setString(9, product.getImage_link());
			ps.setString(10, product.getImage_list());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void edit(Product category) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Product get(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Product get(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getAll() {
		List<Product> products = new ArrayList<Product>();
		String sql = "SELECT * FROM catalog";
		Connection conn = connectDB.getConnect();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Product product = new Product();

				product.setId(rs.getString("id"));
				product.setName(rs.getString("name"));
			
				products.add(product);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return products;
	}
}
