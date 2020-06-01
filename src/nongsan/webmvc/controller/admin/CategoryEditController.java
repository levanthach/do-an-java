package nongsan.webmvc.controller.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nongsan.webmvc.model.Catalog;
import nongsan.webmvc.service.CategoryService;
import nongsan.webmvc.service.impl.CategoryServicesImpl;
public class CategoryEditController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	CategoryService cateService = new CategoryServicesImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		Catalog category = cateService.get(Integer.parseInt(id));		
		req.setAttribute("category", category);		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/editcate.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Catalog category = new Catalog();
		category.setId(req.getParameter("id"));
		category.setName(req.getParameter("name"));
		category.setParent_id(req.getParameter("parent-id"));
		System.out.println("TÂn: "+category);
		cateService.edit(category);
		resp.sendRedirect(req.getContextPath()+"/admin/cate/list");
	}
}