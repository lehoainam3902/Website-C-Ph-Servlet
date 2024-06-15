package controller;

import java.io.IOException;

import dao.FeedbackDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = {"/delete-feedback"})
public class DeleteFeedbackController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		FeedbackDAO feedbacksDAO = new FeedbackDAO();
		feedbacksDAO.delete(id);
		resp.sendRedirect("/WebCoffee/list-feedback");
	}
}
