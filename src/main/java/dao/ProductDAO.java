package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Product;

public class ProductDAO {
	// Phương thức lấy toàn bộ sản phẩm
	public List<Product> getAll() {
		List<Product> products = new ArrayList<Product>();
		Connection conn = DBConnect.getConnection();
		String sql = "select * from product";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Product product = new Product();
				product.setId(rs.getInt("id"));
				product.setName(rs.getString("name"));
				product.setPrice(rs.getDouble("price"));
				product.setDiscount(rs.getDouble("discount"));
				product.setThumbnail(rs.getString("thumbnail"));
				product.setDescription(rs.getString("description"));
				product.setCategory_id(rs.getInt("category_id"));
				product.setCreated_at(rs.getString("created_at"));
				product.setUpdated_at(rs.getString("updated_at"));
				products.add(product);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return products;
	}

	// Phương thức thêm mới sản phẩm
	public boolean insert(Product product) {
		boolean check = false;
		Connection conn = DBConnect.getConnection();
		String sql = "insert into product values (?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, product.getId());
			ps.setString(2, product.getName());
			ps.setDouble(3, product.getPrice());
			ps.setDouble(4, product.getDiscount());
			ps.setString(5, product.getThumbnail());
			ps.setString(6, product.getDescription());
			ps.setInt(7, product.getCategory_id());
			ps.setString(8, product.getCreated_at());
			ps.setString(9, product.getUpdated_at());
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

	// Phương thức lấy sản phẩm theo id
	public Product getById(int id) {
		Product product = null;
		Connection conn = DBConnect.getConnection();
		String sql = "select * from product where id = ?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				product = new Product();
				product.setId(rs.getInt("id"));
				product.setName(rs.getString("name"));
				product.setPrice(rs.getDouble("price"));
				product.setDiscount(rs.getDouble("discount"));
				product.setThumbnail(rs.getString("thumbnail"));
				product.setDescription(rs.getString("description"));
				product.setCategory_id(rs.getInt("category_id"));
				product.setCreated_at(rs.getString("created_at"));
				product.setUpdated_at(rs.getString("updated_at"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return product;
	}
	
	//Lấy sẩn phảm theo tên
	public Product getByName(String name) {
		Product product = null;
		Connection conn = DBConnect.getConnection();
		String sql = "select * from product where name = ?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				product = new Product();
				product.setId(rs.getInt("id"));
				product.setName(rs.getString("name"));
				product.setPrice(rs.getDouble("price"));
				product.setDiscount(rs.getDouble("discount"));
				product.setThumbnail(rs.getString("thumbnail"));
				product.setDescription(rs.getString("description"));
				product.setCategory_id(rs.getInt("category_id"));
				product.setCreated_at(rs.getString("created_at"));
				product.setUpdated_at(rs.getString("updated_at"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return product;
	}

	// Phương thức cập nhật sản phẩm
	public boolean update(Product product) {
		boolean check = false;
		Connection conn = DBConnect.getConnection();
		String sql = "update product set name = ?, price = ?, discount= ?, thumbnail = ?, description = ?,  category_id = ?, created_at = ?, updated_at = ? where id = ?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, product.getName());
			ps.setDouble(2, product.getPrice());
			ps.setDouble(3, product.getDiscount());
			ps.setString(4, product.getThumbnail());
			ps.setString(5, product.getDescription());
			ps.setInt(6, product.getCategory_id());
			ps.setString(7, product.getCreated_at());
			ps.setString(8, product.getUpdated_at());
			ps.setInt(9, product.getId());
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

	// Phương thức xoá sản phẩm
	public void delete(int id) {
		Connection conn = DBConnect.getConnection();
		String sql = "delete from product where id = ?";
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
