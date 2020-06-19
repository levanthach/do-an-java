package nongsan.webmvc.controller;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
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
	DecimalFormat df = new DecimalFormat("#.000");
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		String id = req.getParameter("id");
		List<Catalog> cateList = cateService.getAll();
		req.setAttribute("catelist", cateList);
		List<Product> productList = productService.getAll();
		req.setAttribute("productlist", productList);
		//Giá giảm
		List<Product> productsList1 = new ArrayList<Product>();
		for(Product product: productList)
		{
			Product product1 = productService.get(Integer.parseInt(product.getId()));
			product1.setPrice(String.valueOf(df.format(Double.parseDouble(product.getPrice()) * (1 - (Double.parseDouble(product.getDiscount())/100)))));
			productsList1.add(product1);
			
		}

		req.setAttribute("productlist1", productsList1);
		// Product bán chạy
		List<Product> product_banchay= productService.getProductById(6);
		req.setAttribute("product_banchay", product_banchay);	
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/product.jsp");
		dispatcher.forward(req, resp);
	}

}
