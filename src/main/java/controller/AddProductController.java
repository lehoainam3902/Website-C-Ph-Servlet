package controller;

import java.io.IOException;
import dao.ProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Product;
@WebServlet (urlPatterns = {"/add-product"})
public class AddProductController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		double price = Double.parseDouble(req.getParameter("price"));
		double discount = Double.parseDouble(req.getParameter("discount"));
		String thumbnail = req.getParameter("thumbnail");
		String description = req.getParameter("description");
		int category_id = Integer.parseInt( req.getParameter("category_id"));

		String created_at = req.getParameter("created_at");
		String updated_at = req.getParameter("updated_at");
		
		Product product = new Product(id, name, price, discount, thumbnail, description, category_id, created_at, updated_at);
		ProductDAO productDAO = new ProductDAO();
		productDAO.insert(product);
		resp.sendRedirect("/WebCoffee/list-product");
	}
}
