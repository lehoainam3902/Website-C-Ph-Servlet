package controller;

import java.io.IOException;

import dao.OrdersDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = {"/delete-order"})
public class DeleteOrderController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		OrdersDAO ordersDAO = new OrdersDAO();
		ordersDAO.delete(id);
		resp.sendRedirect("/WebCoffee/list-order");
	}
}
