package dao;

import java.sql.*;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



import bean.User;
import util.JDBCUtil;

public class UserDaoImpl implements UserDao{
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	@Override
	public void add(User user) {
		// TODO Auto-generated method stub
		conn = JDBCUtil.getConnection();
		String sql = "INSERT INTO user(username, userpassword, firstname, lastname, usertype) VALUES(?,?,?,?,?);";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUserName());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getFirstName());
			ps.setString(4, user.getLastName());
			ps.setString(5, user.getUsertype());
			ps.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(conn);
		}
		
	}

	@Override
	public void delete(String username) {
		// TODO Auto-generated method stub
		conn = JDBCUtil.getConnection();
		String sql = "DELETE FROM user WHERE username = ?;";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(conn);
		}
	}

	@Override
	public void update(User t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public User getById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> getAll() {
		// TODO Auto-generated method stub
		List<User> list = new ArrayList<User>();
		conn = JDBCUtil.getConnection();
		String sql = "SELECT * FROM user WHERE usertype='customer';";
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				list.add(new User(rs.getString("firstname"), rs.getString("lastname"), rs.getString("password"), rs.getString("usertype"), rs.getString("username")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			
		}finally {
			JDBCUtil.close(conn);
		}
		return list;
	}

	@Override
	public boolean checkLogin(String username, String password) {
		// TODO Auto-generated method stub
		conn = JDBCUtil.getConnection();
		String sql = "SELECT userpassword FROM user WHERE username='" + username + "';";
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next())return rs.getString("userpassword").equals(password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCUtil.close(conn);
		}
		return false;
	}
	
	@Override
	public void resetPassword(String password, String username) {
		// TODO Auto-generated method stub
		conn = JDBCUtil.getConnection();
		String sql = "UPDATE user SET userpassword=? WHERE username=?;";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, password);
			ps.setString(2, username);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(conn);
		}
	}
	/*
	 * check register username is already existing
	 * return true we can use this username
	 * false means username already existed 
	 * */
	@Override
	public boolean checkRegister(String username) {
		// TODO Auto-generated method stub
		conn = JDBCUtil.getConnection();
		String sql = "SELECT * FROM user WHERE username='" + username + "';";
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next())return false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCUtil.close(conn);
		}
		return true;
	}

}
