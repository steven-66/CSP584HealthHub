package dao;

import java.sql.*;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import bean.Product;
import bean.User;
import util.JDBCUtil;

public class ProductDaoImpl implements ProductDao{
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	@Override
	public void add(Product p) {
		conn = JDBCUtil.getConnection();
		String sql = "INSERT INTO product VALUES(?,?,?,?,?,?,?,?,?)";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, p.getId());
			ps.setString(2, p.getName());
			ps.setDouble(3, p.getPrice());
			ps.setString(4, p.getImage());
			ps.setString(5, p.getManufacturer());
			ps.setString(6, p.getCondition());
			ps.setDouble(7, p.getDiscount());
			ps.setString(8, p.getCatagory());
			ps.setInt(9, p.getInventory());
			ps.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCUtil.close(conn);
		}
		
		
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		conn = JDBCUtil.getConnection();
		String sql = "DELETE FROM product WHERE id = ?;";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(conn);
		}
	}

	@Override
	public void update(Product t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Product getById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> getAll() {
		List<Product> list = new ArrayList<>();
		conn = JDBCUtil.getConnection();
		String sql = "SELECT * FROM user WHERE usertype='customer';";
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				list.add(new Product(rs.getString("id"), rs.getString("productName"), rs.getDouble("price"), rs.getString("image"), rs.getString("manufacturer"), rs.getString("productCondition"), rs.getDouble("discount"), rs.getString("catagory"), rs.getInt("inventory")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			
		}finally {
			JDBCUtil.close(conn);
		}
		return list;
	}

}
