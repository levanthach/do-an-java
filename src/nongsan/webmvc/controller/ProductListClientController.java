package nongsan.webmvc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import nongsan.webmvc.model.Catalog;
import nongsan.webmvc.model.Product;
import nongsan.webmvc.service.CategoryService;
import nongsan.webmvc.service.ProductService;
import nongsan.webmvc.service.impl.CategoryServicesImpl;
import nongsan.webmvc.service.impl.ProductServiceImpl;

/**
 * Servlet implementation class CategoryListController
 */

public class ProductListClientController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CategoryService cateService = new CategoryServicesImpl();
	ProductService productService = new ProductServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		String id = req.getParameter("id");
		List<Catalog> cateList = cateService.getAll();
		req.setAttribute("catelist", cateList);
		List<Product> productList = productService.getAll();
		req.setAttribute("productlist", productList);
		
//		Product detail_product = productService.get(Integer.parseInt(id));
//		req.setAttribute("detail_product", detail_product);
		
//		List<Catalog> name_cate_of_product = cateService.getCateByProduct(Integer.parseInt(id));
//		req.setAttribute("name_cate_of_product", name_cate_of_product);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/product.jsp");
		dispatcher.forward(req, resp);
	}

}
