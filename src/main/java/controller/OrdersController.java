package controller;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.UUID;

import com.mysql.cj.Session;

import dao.OrderDetailDAO;
import dao.OrdersDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Cart;
import model.OrderDetail;
import model.Orders;
import model.User;

@WebServlet(urlPatterns = { "/order" })
public class OrdersController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");

		String fullname = req.getParameter("fullname");
		String phonenumber = req.getParameter("phonenumber");
		String email = req.getParameter("email");
		String address = req.getParameter("address");
		String orderdate = req.getParameter("orderdate");
		Double total = Double.parseDouble(req.getParameter("total"));
		User user = (User) req.getSession().getAttribute("userobj");

		// Lấy thông tin từ giỏ hàng
		ArrayList<Cart> cart_list = (ArrayList<Cart>) req.getSession().getAttribute("carts");
		if (cart_list != null) {
			Orders order = new Orders();
			order.setId(UUID.randomUUID().hashCode());
			order.setFullName(fullname);
			order.setEmail(email);
			order.setPhoneNumber(phonenumber);
			order.setAddress(address);
			order.setOrderDate(orderdate);
			order.setTotal(total);
			if (user == null) {
				order.setUser_id(4);
			} else {
				order.setUser_id(user.getId());
			}

			// Tương tự các cột khác
			OrdersDAO orderDAO = new OrdersDAO();
			orderDAO.insert(order);

			for (Cart cart : cart_list) {
				OrderDetail orderDetail = new OrderDetail();
				orderDetail.setId(UUID.randomUUID().hashCode());
				orderDetail.setPrice(cart.getPrice());
				orderDetail.setQuantity(cart.getQuantity());
				orderDetail.setProduct_id(cart.getId());
				orderDetail.setOrder_id(order.getId());
				// Tương tự các cột khác
				OrderDetailDAO orderDetailDAO = new OrderDetailDAO();
				orderDetailDAO.insert(orderDetail);
			}
			cart_list.clear();// Xoá giỏ hàng
			resp.sendRedirect("/WebCoffee/home");
		}
	}
}
