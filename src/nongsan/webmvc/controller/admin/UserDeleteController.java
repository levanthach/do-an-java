package nongsan.webmvc.controller.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nongsan.webmvc.model.User;
import nongsan.webmvc.service.UserService;
import nongsan.webmvc.service.impl.UserServicesImpl;

public class UserDeleteController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	UserService userService = new UserServicesImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {	   
		RequestDispatcher dispatcherUser  = req.getRequestDispatcher("/view/admin/user.jsp");
		dispatcherUser.forward(req, resp);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String user_id = req.getParameter("user-id");
		userService.delete(user_id);	
		resp.sendRedirect(req.getContextPath() + "/admin/user/list");
		//resp.sendRedirect(req.getContextPath() + "/view/admin/user.jsp");
	}
}