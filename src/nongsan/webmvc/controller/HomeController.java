package nongsan.webmvc.controller;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import nongsan.webmvc.model.Boardnew;
import nongsan.webmvc.model.Product;
import nongsan.webmvc.service.BoardnewService;
import nongsan.webmvc.service.ProductService;
import nongsan.webmvc.service.impl.BoardnewServicesImpl;
import nongsan.webmvc.service.impl.ProductServiceImpl;
import javax.servlet.http.HttpServletResponse;



public class HomeController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	ProductService productService = new ProductServiceImpl();
	BoardnewService boardnewService = new BoardnewServicesImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Boardnew> boardnewList = boardnewService.getAll();
		req.setAttribute("boardnewlist", boardnewList);
		
		List<Product> productList = productService.getAll();
		req.setAttribute("productlist", productList);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/index.jsp");
		dispatcher.forward(req, resp);
	}
}
