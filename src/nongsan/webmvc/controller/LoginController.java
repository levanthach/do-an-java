package nongsan.webmvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nongsan.webmvc.dao.LoginDao;
import nongsan.webmvc.model.User;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String user = request.getParameter("username");
			String pass = request.getParameter("password");
			LoginDao loginDao = new LoginDao();
			User u = loginDao.checkLogin(user, pass);
			if(u == null) {
				response.sendRedirect("account.jsp");
			}
			else {
				response.sendRedirect("Success.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
