package nongsan.webmvc.controller.admin;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nongsan.webmvc.service.AdminService;
import nongsan.webmvc.service.impl.AdminServicesImpl; 

public class AdminDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AdminService adminService = new AdminServicesImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {	   
		String admin_id = req.getParameter("admin-id");
		adminService.delete(admin_id);	
		req.setAttribute("adminlist", adminService.getAll());   
		RequestDispatcher dispatcherUser  = req.getRequestDispatcher("/view/admin/admin.jsp");
		dispatcherUser.forward(req, resp);
	}
}

