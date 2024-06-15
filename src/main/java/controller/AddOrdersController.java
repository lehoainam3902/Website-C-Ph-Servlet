package controller;

import java.io.IOException;

import dao.OrdersDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Orders;

@WebServlet(urlPatterns = { "/add-order" })
public class AddOrdersController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");

		int id = Integer.parseInt(req.getParameter("id"));
		String fullName = req.getParameter("fullname");
		String email = req.getParameter("email");
		String phoneNumber = req.getParameter("phonenumber");
		String address = req.getParameter("address");
		String orderDate = req.getParameter("orderdate");
		int status = Integer.parseInt(req.getParameter("status"));
		double total = Double.parseDouble(req.getParameter("total"));
		int user_id = Integer.parseInt(req.getParameter("user_id"));

		Orders orders = new Orders(id, fullName, email, phoneNumber, address, orderDate, status, total, user_id);
		OrdersDAO ordersDAO = new OrdersDAO();
		ordersDAO.insert(orders);
		resp.sendRedirect("/WebCoffee/list-order");
	}
}
