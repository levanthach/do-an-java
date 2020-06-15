package nongsan.webmvc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import nongsan.webmvc.model.Product;
import nongsan.webmvc.service.ProductService;
import nongsan.webmvc.service.impl.ProductServiceImpl;

public class DeleteProductInCartController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	ProductService productservice = new ProductServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		System.out.println("nào: " + id);
		HttpSession session = req.getSession();
		if(session.getAttribute("order")  == null)
		{
			Product product = productservice.get(Integer.parseInt(id));
			System.out.println("có: " + product);
		} else {
			resp.sendRedirect(req.getContextPath() + "/view/client/cart");
		}
	}
}
