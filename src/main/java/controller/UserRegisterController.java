package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import dao.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;
@WebServlet(urlPatterns = {"/user-register"})
public class UserRegisterController extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String fullname = req.getParameter("fullname");
			String username = req.getParameter("username");
			String password = req.getParameter("password");
			String email = req.getParameter("email");
			String phone = req.getParameter("phone");
			String address = req.getParameter("address");
			int role_id = Integer.parseInt(req.getParameter("role_id"));
			int status = Integer.parseInt(req.getParameter("status"));
			
			User user = new User();
			user.setFullName(fullname);
			user.setUserName(username);
			user.setPassword(password);
			user.setEmail(email);
			user.setPhoneNumber(phone);
			user.setAddress(address);
			user.setRole_id(2);
			user.setStatus(1);
			HttpSession session = req.getSession();
			UserDAO userDAO = new UserDAO();
			boolean check2 = userDAO.checkUser(username);
            if(check2) {
                boolean check3 = userDAO.checkUser1(email);
                if(check3) {
                    boolean check = userDAO.UserRegister(user);
                    if(check) {
                        session.setAttribute("succMsg", "Đăng ký thành công");
                        resp.sendRedirect("views/client/loginUser.jsp");
                        //System.out.println("Đăng ký thành công");
                    }else {
                        //System.err.println("Đăng ký không thành công!");
                        session.setAttribute("failedMsg", "Đăng ký không thành công!");
                        resp.sendRedirect("views/client/registerUser.jsp");
                    }
                }else {
                    session.setAttribute("failedMsg", "Email đã tồn tại!!");
                    resp.sendRedirect("views/client/registerUser.jsp");
                }
            }else {
                session.setAttribute("failedMsg", "Tên đăng nhập đã tồn tại!!");
                resp.sendRedirect("views/client/registerUser.jsp");

            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
	}
}
