package controller;

import java.io.IOException;

import dao.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;
@WebServlet(urlPatterns = {"/update-user"})

public class UpdateUserContoller extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		UserDAO userDAO = new UserDAO();
		User user = userDAO.getById(id);
		req.setAttribute("user", user);
		req.getRequestDispatcher("/views/admin/updateUser.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		int id = Integer.parseInt(req.getParameter("id"));
		String fullName = req.getParameter("fullname");
		String userName = req.getParameter("username");
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		String phoneNumber = req.getParameter("phonenumber");
		String addess = req.getParameter("address");

		int role_id = Integer.parseInt( req.getParameter("role_id"));
		int status = Integer.parseInt( req.getParameter("status"));
		
		User user = new User(id, fullName, userName, password, email, phoneNumber, addess, role_id, status);
		
		UserDAO userDAO = new UserDAO();
		userDAO.update(user);
		resp.sendRedirect("/WebCoffee/list-user");
	}
}
