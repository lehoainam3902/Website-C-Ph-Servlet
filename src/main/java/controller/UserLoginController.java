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
@WebServlet(urlPatterns = {"/user-login"})
public class UserLoginController extends HttpServlet{
	@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<User> users = new ArrayList<User>();
		UserDAO userDAO = new UserDAO();
		users = userDAO.getAll();
		req.setAttribute("users", users);
		req.getRequestDispatcher("views/client/loginUser.jsp").forward(req, resp);
		}
	
 @Override
 	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserDAO userDAO = new UserDAO();
		HttpSession session = req.getSession();
			
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		User user = userDAO.UserLogin(username, password);
		if(user!=null) {
			session.setAttribute("userobj", user);
			resp.sendRedirect("/WebCoffee/home");
		}else {
			session.setAttribute("failedMsg", "Email hoặc password không tồn tại");
			req.getRequestDispatcher("views/client/loginUser.jsp").forward(req, resp);
		}

 	}
}
