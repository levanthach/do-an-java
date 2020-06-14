package nongsan.webmvc.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import nongsan.webmvc.dao.LoginDao;
import nongsan.webmvc.model.User;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public LoginController() {
		super();
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/view/client/account.jsp");
    	dispatcher.forward(request, response);
    }
  @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			LoginDao loginDao = new LoginDao();
			try {
			User u = loginDao.checkLogin(username, password);
			if(u != null) {
				HttpSession session = request.getSession();
                session.setAttribute("username", username);
                RequestDispatcher rd = request.getRequestDispatcher("/view/client/index.jsp");
		         rd.forward(request, response);
			}
			else {
				 request.setAttribute("errorMsg", "Tài khoản đăng nhập hoặc mật khẩu sai !!!");
				 RequestDispatcher rd = request.getRequestDispatcher("/view/client/account.jsp");
		         rd.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
  }

}
