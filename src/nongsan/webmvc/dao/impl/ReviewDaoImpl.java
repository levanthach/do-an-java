package nongsan.webmvc.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import nongsan.webmvc.dao.ReviewDao;
import nongsan.webmvc.jdbc.connectDB;
import nongsan.webmvc.model.Review;

public class ReviewDaoImpl extends connectDB implements ReviewDao {

	@Override
	public void insert(Review review) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void edit(Review review) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) {
		String sql = "DELETE FROM review WHERE id=?";
		Connection con = connectDB.getConnect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public Review get(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Review get(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Review> getAll() {
		List<Review> reviews = new ArrayList<Review>();
		String sql = "SELECT * FROM review";
		Connection con = connectDB.getConnect();
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				Review review = new Review();
				review.setId(rs.getString("id"));
				review.setName(rs.getString("name"));
				review.setEmail(rs.getString("email"));
				review.setProduct_id(rs.getString("product_id"));
				review.setContent(rs.getString("content"));
				review.setCreated(rs.getString("created"));
				reviews.add(review);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return reviews;
	}
	
	@Override
	public List<Review> getReviewById(int id)
	{
		List<Review> reviews = new ArrayList<Review>();
		String sql = "SELECT * FROM review WHERE product_id=?";
		Connection con = connectDB.getConnect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				Review review = new Review();
				review.setId(rs.getString("id"));
				review.setName(rs.getString("name"));
				review.setEmail(rs.getString("email"));
				review.setProduct_id(rs.getString("product_id"));
				review.setContent(rs.getString("content"));
				review.setCreated(rs.getString("created"));
				reviews.add(review);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return reviews;
	}

}
