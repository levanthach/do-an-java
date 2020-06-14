package nongsan.webmvc.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nongsan.webmvc.dao.RegisterDao;
import nongsan.webmvc.jdbc.connectDB;
import nongsan.webmvc.model.User;


/**
 * Servlet implementation class RegistrationController
 */
@WebServlet("/RegistrationController")
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public RegistrationController() {
        super();
    }
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String name = request.getParameter("name");
		
		User user = new User(username, password, email, phone, name);
	
		RegisterDao register = new RegisterDao(connectDB.getConnect());		
		if(register.RegisterUser(user))   //On success, you can display a message to user on Home page
        {		
			request.setAttribute("Message", "Bạn đã tạo tài khoàn thành công. Mời đăng nhập.");
			RequestDispatcher rd = request.getRequestDispatcher("/view/client/index.jsp");
	         rd.forward(request, response);
        }
        else   
        {
           request.setAttribute("errMessage", "There's something went wrong. Please try again !!!");
           RequestDispatcher rd = request.getRequestDispatcher("/view/client/account.jsp");
	         rd.forward(request, response);
       }
	}
}

