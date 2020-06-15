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
		String sql = "INSERT INTO product(catalog_id, name, price, status, description, content, discount, image_link, created) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
		new connectDB();
		Connection con = connectDB.getConnect();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, product.getCatalog_id());
			ps.setString(2, product.getName());
			ps.setString(3, product.getPrice());
			ps.setString(4, product.getStatus());
			ps.setString(5, product.getDescription());
			ps.setString(6, product.getContent());
			ps.setString(7, product.getDiscount());
			ps.setString(8, product.getImage_link());
			ps.setString(9, product.getCreated());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void edit(Product product) {
		String sql = "UPDATE product SET name = ?, catalog_id = ?, price = ?, status = ?, description = ?, content = ?, discount = ?, image_link = ?, created = ? WHERE id = ?";
		new connectDB();
		Connection con = connectDB.getConnect();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, product.getName());
			ps.setString(2, product.getCatalog_id());
			ps.setString(3, product.getPrice());
			ps.setString(4, product.getStatus());
			ps.setString(5, product.getDescription());
			ps.setString(6, product.getContent());
			ps.setString(7, product.getDiscount());
			ps.setString(8, product.getImage_link());
			ps.setString(9, product.getCreated());
			ps.setString(10, product.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void delete(String id) {
		String sql = "DELETE FROM product WHERE id = ?";
		new connectDB();
		Connection conn = connectDB.getConnect();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public Product get(int id) {
		String sql = "SELECT * FROM product WHERE id = ? ";
		new connectDB();
		Connection con = connectDB.getConnect();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Product product = new Product();
				product.setId(rs.getString("id"));
				product.setCatalog_id(rs.getString("catalog_id"));
				product.setName(rs.getString("name"));
				product.setPrice(rs.getString("price"));
				product.setStatus(rs.getString("status"));
				product.setDescription(rs.getString("description"));
				product.setContent(rs.getString("content"));
				product.setDiscount(rs.getString("discount"));
				product.setImage_link(rs.getString("image_link"));
				product.setCreated(rs.getString("created"));
				return product;

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public Product get(String name) {
		return null;
	}

	@Override
	public List<Product> getAll() {
		List<Product> products = new ArrayList<Product>();
		String sql = "SELECT * FROM product";
		Connection conn = connectDB.getConnect();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Product product = new Product();

				product.setId(rs.getString("id"));
				product.setCatalog_id(rs.getString("catalog_id"));
				product.setName(rs.getString("name"));
				product.setPrice(rs.getString("price"));
				product.setStatus(rs.getString("status"));
				product.setDescription(rs.getString("description"));
				product.setContent(rs.getString("content"));
				product.setDiscount(rs.getString("discount"));
				product.setImage_link(rs.getString("image_link"));
				product.setCreated(rs.getString("created"));
				products.add(product);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return products;
	}

	@Override
	public List<Product> getProductById(int id) {
		List<Product> products = new ArrayList<Product>();
		String sql = "SELECT * FROM product WHERE catalog_id=?";
		Connection conn = connectDB.getConnect();
		
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Product product = new Product();

				product.setId(rs.getString("id"));
				product.setCatalog_id(rs.getString("catalog_id"));
				product.setName(rs.getString("name"));
				product.setPrice(rs.getString("price"));
				product.setStatus(rs.getString("status"));
				product.setDescription(rs.getString("description"));
				product.setContent(rs.getString("content"));
				product.setDiscount(rs.getString("discount"));
				product.setImage_link(rs.getString("image_link"));
				product.setCreated(rs.getString("created"));
				products.add(product);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return products;
	}
	

	@Override
	public List<Product> searchByName(String keyword) {
		List<Product> productList = new ArrayList<Product>();
		String sql = "SELECT * FROM product WHERE name LIKE ? ";
		Connection conn = connectDB.getConnect();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + keyword + "%");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Product product = new Product();
				product.setId(rs.getString("id"));
				product.setCatalog_id(rs.getString("catalog_id"));
				product.setName(rs.getString("name"));
				product.setPrice(rs.getString("price"));
				product.setStatus(rs.getString("status"));
				product.setDescription(rs.getString("description"));
				product.setContent(rs.getString("content"));
				product.setDiscount(rs.getString("discount"));
				product.setImage_link(rs.getString("image_link"));
				product.setCreated(rs.getString("created"));
				productList.add(product);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return productList;
	}

	
	

}
