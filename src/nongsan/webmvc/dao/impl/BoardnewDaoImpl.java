package nongsan.webmvc.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import nongsan.webmvc.dao.BoardnewDao;
import nongsan.webmvc.jdbc.connectDB;
import nongsan.webmvc.model.Boardnew;
import nongsan.webmvc.model.Catalog;

public class BoardnewDaoImpl extends connectDB implements BoardnewDao{
	@Override
	public void insert(Boardnew boardnew) {
		String sql = "INSERT INTO catalog(id, title, content, author, created) VALUES (?, ?, ?, ?, ?)";
		new connectDB();
		Connection con = connectDB.getConnect();

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setLong(1, boardnew.getId());
			ps.setString(2, boardnew.getTitle());
			ps.setString(3, boardnew.getContent());
			ps.setString(4, boardnew.getAuthor());
			ps.setString(5, boardnew.getCreated());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void edit(Boardnew boardnew) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Boardnew get(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boardnew get(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Boardnew> getAll() {
		List<Boardnew> boardnews = new ArrayList<Boardnew>();
		String sql = "SELECT * FROM boardnew";
		Connection conn = connectDB.getConnect();

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Boardnew boardnew = new Boardnew();

				boardnew.setId(rs.getInt("id"));
				boardnew.setTitle(rs.getString("title"));
				boardnew.setContent(rs.getString("content"));
				boardnew.setAuthor(rs.getString("author"));
				boardnew.setCreated(rs.getString("created"));
				boardnews.add(boardnew);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return boardnews;
	}
}
