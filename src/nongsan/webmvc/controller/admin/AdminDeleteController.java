package nongsan.webmvc.controller.admin;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import nongsan.webmvc.jdbc.connectDB; 

public class AdminDeleteController extends HttpServlet {
	/**
	 * 
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public AdminDeleteController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		try {
			new connectDB().thucThiCauLenhSQL("delete from admin where id='"+id+"'");
			response.sendRedirect(request.getContextPath() + "/admin/admin/list");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
	}
}

