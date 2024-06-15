package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dao.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

@WebServlet(urlPatterns = { "/login" })
public class LoginAdminController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<User> users = new ArrayList<User>();
		UserDAO userDAO = new UserDAO();
		users = userDAO.getAll();
		req.setAttribute("categories", users);
		req.getRequestDispatcher("views/admin/login.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		int role_id = Integer.parseInt(req.getParameter("role_id"));
		UserDAO userDAO = new UserDAO();
		if (userDAO.login(username, password, role_id)) { // Đăng nhập thành công
			HttpSession session = req.getSession();
			session.setAttribute("username", username);
			resp.sendRedirect("/WebCoffee/views/admin/index.jsp");
		} else {
			req.setAttribute("loginError", "Bạn nhập sai tài khoản hoặc mật khẩu!");
			req.getRequestDispatcher("views/admin/login.jsp").forward(req, resp);
		}
	}
}
