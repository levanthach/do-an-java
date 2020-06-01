package nongsan.webmvc.controller.admin;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletContext;
import nongsan.webmvc.model.Admin;
import nongsan.webmvc.dao.*;
import nongsan.webmvc.dao.impl.*;
import nongsan.webmvc.jdbc.*;
import nongsan.webmvc.service.*;
import nongsan.webmvc.service.impl.*;



public class AdminEditController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String username="";
	String password="";
	String name="";
	public AdminEditController() {
		super();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		ResultSet rs;
		try {
			rs = new connectDB().chonDuLieuTuDTB("select * from admin where id='"+id+"'");
			while(rs.next()){
				username=rs.getString(2);
				password=rs.getString(3);
				name=rs.getString(4);
			}
			response.setContentType("text/html");
			ServletContext context = getServletContext();
			context.setAttribute("id", id);
			context.setAttribute("username", username);
			context.setAttribute("password", password);
			context.setAttribute("name", name);
			
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/view/admin/editadmin.jsp");
			dispatcher.forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		response.setContentType("text/html");
		ServletContext context = getServletContext();
		String id=(String) context.getAttribute("id");

		
		
		try {
			new connectDB().thucThiCauLenhSQL("update admin set id='"+id+"',username='"+username+"',password='"+password+"',name='"+name+"' where id='"+id+"'");
			response.sendRedirect(request.getContextPath() + "/admin/admin/list");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

/*	AdminService adminService = new AdminServicesImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		Admin admin = adminService.get(Integer.parseInt(id));
       req.setAttribute("admin", admin);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/editadmin.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String admin_id = req.getParameter("id");
		String admin_username = req.getParameter("username");
		String admin_password = req.getParameter("password");
		String admin_name = req.getParameter("name");	
		
		Admin admin = new Admin();
		admin.setId(admin_id);
		admin.setUsername(admin_username);
		admin.setPassword(admin_password);
		admin.setName(admin_name);
		adminService.edit(admin);
		resp.sendRedirect(req.getContextPath() + "/admin/admin/list");

	}  */
}
