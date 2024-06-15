package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dao.ProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Cart;
import model.Product;
@WebServlet(urlPatterns = {"/add-to-cart"})

public class AddToCartController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Cart> carts = new ArrayList<Cart>();
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		Cart cart = new Cart();
		ProductDAO productDAO = new ProductDAO();
		Product product = new Product();
		product = productDAO.getByName(name);
		product = productDAO.getById(id);
		cart.setId(id);
		cart.setName(product.getName());
		cart.setPrice(product.getPrice());
		cart.setDiscount(product.getDiscount());
		cart.setThumbnail(product.getThumbnail());
		cart.setQuantity(1);
		
		HttpSession session = req.getSession();
		
		ArrayList<Cart> cart_list = (ArrayList<Cart>)session.getAttribute("carts");

		if (cart_list == null) {
		    carts.add(cart);
		    session.setAttribute("carts", carts);
		} else {
		    carts = cart_list;
		    boolean exist = false;
		    for (Cart c : cart_list) {
		        if (c.getName().equals(name)) {
		            exist = true;
		            break; // Exit the loop once a matching item is found
		        }
		    }
		    if (!exist) {
		        carts.add(cart);
		    } else {
		        // If the item already exists in the cart, increase its quantity
		        for (Cart c : carts) {
		            if (c.getName().equals(name)) {
		                c.setQuantity(c.getQuantity() + 1);
		                break; // Exit the loop once the item is updated
		            }
		        }
		    }
		}
		resp.sendRedirect("/WebCoffee/menu");
	}
}
