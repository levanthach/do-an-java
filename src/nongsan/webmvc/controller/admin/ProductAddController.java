package nongsan.webmvc.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import nongsan.webmvc.model.Catalog;
import nongsan.webmvc.model.Product;
import nongsan.webmvc.service.CategoryService;
import nongsan.webmvc.service.ProductService;
import nongsan.webmvc.service.impl.CategoryServicesImpl;
import nongsan.webmvc.service.impl.ProductServiceImpl;

@WebServlet({"/admin/product/add"})
public class ProductAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductService productService = new ProductServiceImpl();
	CategoryService cateService = new CategoryServicesImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Catalog> cateList = cateService.getAll();
		req.setAttribute("catelist", cateList);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/addproduct.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			String product_sku = req.getParameter("product-sku");
			String product_name = req.getParameter("product-name");
			String product_cate = req.getParameter("product-cate");
			String product_day = req.getParameter("product-day");
			String product_price = req.getParameter("product-price");
			String product_status = req.getParameter("product-status");
			String product_discount = req.getParameter("product-discount");
			String product_desc = req.getParameter("product-desc");
			String product_image = req.getParameter("product-image");
			String product_list_image = req.getParameter("product-image-list");
			
			Product product = new Product();
			product.setId(product_sku);
			
			product.setName(product_name);
			product.setCatalog_id(product_cate);
			product.setCreated(product_day);
			product.setPrice(product_price);
			product.setStatus(product_status);
			product.setDiscount(product_discount);
			product.setDescription(product_desc);
			product.setImage_link(product_image);
			product.setImage_list(product_list_image);
			productService.insert(product);
			resp.sendRedirect(req.getContextPath() + "/admin/product/list");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
