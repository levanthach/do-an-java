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
import nongsan.webmvc.model.Review;
import nongsan.webmvc.service.CategoryService;
import nongsan.webmvc.service.ProductService;
import nongsan.webmvc.service.ReviewService;
import nongsan.webmvc.service.impl.CategoryServicesImpl;
import nongsan.webmvc.service.impl.ProductServiceImpl;
import nongsan.webmvc.service.impl.ReviewServicesImpl;

public class ProductDetailController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	CategoryService cateService = new CategoryServicesImpl();
	ProductService productService = new ProductServiceImpl();
	ReviewService reviewService = new ReviewServicesImpl();
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		Product detail_product = productService.get(Integer.parseInt(id));
		req.setAttribute("detail_product", detail_product);
		
		List<Catalog> name_cate_of_product = cateService.getCateByProduct(Integer.parseInt(id));
		req.setAttribute("name_cate_of_product", name_cate_of_product);
		
		String idCate = detail_product.getCatalog_id();
		
		List<Product> productListCate = productService.getProductById(Integer.parseInt(idCate));
		
		req.setAttribute("productById", productListCate);
		
		List<Review> reviewById = reviewService.getReviewById(Integer.parseInt(id));
		req.setAttribute("reviewbyid", reviewById);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/client/product-detail.jsp");
		dispatcher.forward(req, resp);
	}

}
