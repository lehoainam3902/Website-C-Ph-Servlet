package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Feedback;

public class FeedbackDAO {
		//Phương thức lấy toàn bộ feedback
		public List<Feedback> getAll(){
			List<Feedback> feedbacks = new ArrayList<Feedback>();
			Connection conn = DBConnect.getConnection();
			String sql = "select * from feedback";
			try {
				PreparedStatement ps = conn.prepareStatement(sql);
				ResultSet rs = ps.executeQuery();
				while(rs.next()) {
					Feedback feedback = new Feedback();
					feedback.setId(rs.getInt("id"));
					feedback.setName(rs.getString("name"));
					feedback.setEmail(rs.getString("email"));
					feedback.setSubject(rs.getString("subject"));
					feedback.setMessage(rs.getString("message"));
					feedback.setCreated_at(rs.getString("created_at"));
					feedback.setStatus(rs.getInt("status"));
					feedback.setUser_id(rs.getInt("user_id"));
					feedbacks.add(feedback);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return feedbacks;
		}
		//Phương thức xoá feedback
		public void delete(int id) {
			Connection conn = DBConnect.getConnection();
			String sql = "delete from feedback where id = ?";
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
