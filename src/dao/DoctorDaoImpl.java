package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Doctor;
import util.JDBCUtil;

public class DoctorDaoImpl implements DoctorDao{
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	@Override
	public List<Doctor> getDoctorBySpecialty(String specialty) {
		conn = JDBCUtil.getConnection();
		String sql = "SELECT doctor FROM user WHERE specialty='" + specialty + "';";
		List<Doctor> list = new ArrayList<Doctor>();
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				list.add(new Doctor(rs.getString("doctorName"), rs.getString("specialty"), rs.getString("phoneNum"), rs.getString("address"), rs.getString("zipcode")));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCUtil.close(conn);
		}
		return list;
	}

	@Override
	public List<Doctor> getDoctorByFilters(List<String> filter) {
		return null;
	}

}
