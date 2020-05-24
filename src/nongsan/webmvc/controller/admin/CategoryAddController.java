package nongsan.webmvc.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nongsan.webmvc.service.CategoryService;
import nongsan.webmvc.service.impl.CategoryServicesImpl;
import nongsan.webmvc.model.Catalog;

/**
 * Servlet implementation class CategoryAddController
 */
@WebServlet("/CategoryAdd")
public class CategoryAddController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	CategoryService cateService = new CategoryServicesImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Catalog> cateList = cateService.getAll();
		req.setAttribute("cate", cateList);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/admin/addcate.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String cate_name = req.getParameter("cate-name");
		String cate_id = req.getParameter("cate-id");
		String cate_parent_id = req.getParameter("parent-id");
		Catalog category = new Catalog();
		category.setId(cate_id);
		category.setName(cate_name);
		category.setParent_id(cate_parent_id);
		cateService.insert(category);
		resp.sendRedirect(req.getContextPath() + "/admin/dschuyenmuc.jsp");

	}

}
