package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Orders;

public class OrdersDAO {
	// Phương thức lấy toàn bộ order
	public List<Orders> getAll() {
		List<Orders> orders = new ArrayList<Orders>();
		Connection conn = DBConnect.getConnection();
		String sql = "select * from orders";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Orders order = new Orders();
				order.setId(rs.getInt("id"));
				order.setFullName(rs.getString("fullname"));
				order.setEmail(rs.getString("email"));
				order.setPhoneNumber(rs.getString("phonenumber"));
				order.setAddress(rs.getString("address"));
				order.setOrderDate(rs.getString("orderdate"));
				order.setStatus(rs.getInt("status"));
				order.setTotal(rs.getDouble("total"));
				order.setUser_id(rs.getInt("user_id"));
				orders.add(order);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return orders;
	}

	// Phương thức thêm mới order
	public boolean insert(Orders order) {
		boolean check = false;
		Connection conn = DBConnect.getConnection();
		String sql = "insert into orders values (?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, order.getId());
			ps.setString(2, order.getFullName());
			ps.setString(3, order.getEmail());
			ps.setString(4, order.getPhoneNumber());
			ps.setString(5, order.getAddress());
			ps.setString(6, order.getOrderDate());
			ps.setInt(7, order.getStatus());
			ps.setDouble(8, order.getTotal());
			ps.setInt(9, order.getUser_id());
			int row = ps.executeUpdate();
			if (row > 0) {
				check = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return check;
	}

	// Phương thức order theo id
	public Orders getById(int id) {
		Orders order = null;
		Connection conn = DBConnect.getConnection();
		String sql = "select * from orders where id = ?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				order = new Orders();
				order.setId(rs.getInt("id"));
				order.setFullName(rs.getString("fullname"));
				order.setEmail(rs.getString("email"));
				order.setPhoneNumber(rs.getString("phonenumber"));
				order.setAddress(rs.getString("address"));
				order.setOrderDate(rs.getString("orderdate"));
				order.setStatus(rs.getInt("status"));
				order.setTotal(rs.getDouble("total"));
				order.setUser_id(rs.getInt("user_id"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return order;
	}

	// Phương thức cập nhật order
	public boolean update(Orders order) {
		boolean check = false;
		Connection conn = DBConnect.getConnection();
		String sql = "update orders set fullname = ?, email = ?, phonenumber = ?, address = ?, orderdate = ?, status = ?, total = ?, user_id = ? where id = ?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, order.getFullName());
			ps.setString(2, order.getEmail());
			ps.setString(3, order.getPhoneNumber());
			ps.setString(4, order.getAddress());
			ps.setString(5, order.getOrderDate());
			ps.setInt(6, order.getStatus());
			ps.setDouble(7, order.getTotal());
			ps.setInt(8, order.getUser_id());
			ps.setInt(9, order.getId());
			int row = ps.executeUpdate();
			if (row > 0) {
				check = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return check;
	}

	// Phương thức xoá order
	public void delete(int id) {
		Connection conn = DBConnect.getConnection();
		String sql = "delete from orders where id = ?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
