package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dao.OrdersDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Orders;

@WebServlet(urlPatterns = { "/list-order" })
public class ListOrderController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Orders> orders = new ArrayList<Orders>();
		OrdersDAO ordersDAO = new OrdersDAO();
		orders = ordersDAO.getAll();
		req.setAttribute("orders", orders);
		req.getRequestDispatcher("views/admin/listOrder.jsp").forward(req, resp);
	}
}
