package controller;

import java.io.IOException;
import dao.CategoryDAO;
import dao.RoleDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Category;
import model.Role;
@WebServlet(urlPatterns = {"/update-role"})

public class UpdateRoleController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		RoleDAO roleDAO = new RoleDAO();
		Role role = roleDAO.getById(id);
		req.setAttribute("role", role);
		req.getRequestDispatcher("/views/admin/updateRole.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		
		Role role = new Role(id,name);
		
		RoleDAO roleDAO = new RoleDAO();
		roleDAO.update(role);
		resp.sendRedirect("/WebCoffee/list-role");
	}
}
