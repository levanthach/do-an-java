package nongsan.webmvc.controller;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import nongsan.webmvc.model.Item;
import nongsan.webmvc.model.Order;
import nongsan.webmvc.model.Product;
import nongsan.webmvc.service.ProductService;
import nongsan.webmvc.service.impl.ProductServiceImpl;

/**
 * Servlet implementation class AddtoCartController
 */
public class AddtoCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductService productService = new ProductServiceImpl();
	DecimalFormat df = new DecimalFormat("#.000");
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int n= 0;
		int qty = 1;
		String id;
		if(request.getParameter("product-id")!=null) {
			id = request.getParameter("product-id");
			Product product = productService.get(Integer.parseInt(id));;
			if(product != null) {
				if(request.getParameter("qty")!=null) {
					qty = Integer.parseInt(request.getParameter("qty"));
				}
				
				HttpSession session = request.getSession();
				if(session.getAttribute("order") == null) {
					Order order = new Order();
					List<Item> listItems = new ArrayList<Item>();
					Item item = new Item();
					item.setQty(qty);
					item.setProduct(product);
					item.setPrice(Double.parseDouble(product.getPrice()) - Double.parseDouble(product.getPrice())*(Double.parseDouble(product.getDiscount())/100));
					order.setSumPrice(0);
					order.setSumPrice(order.getSumPrice() + item.getPrice());
					listItems.add(item);
					order.setItems(listItems);
					n = listItems.size();
					session.setAttribute("length_order",n);
					session.setAttribute("order", order);
					session.setAttribute("sumprice", df.format(order.getSumPrice()));
				} else {
					Order order = (Order) session.getAttribute("order");
					List<Item> listItems = order.getItems();
					boolean check = false;
					for(Item item : listItems) {
						if(Integer.parseInt(item.getProduct().getId()) == Integer.parseInt(product.getId())) {
							item.setQty(item.getQty() + qty);
							order.setSumPrice(order.getSumPrice() + Double.parseDouble(item.getProduct().getPrice()) - Double.parseDouble(item.getProduct().getPrice())*(Double.parseDouble(item.getProduct().getDiscount())/100));
							item.setPrice(item.getPrice() + (Double.parseDouble(item.getProduct().getPrice()) - Double.parseDouble(item.getProduct().getPrice())*(Double.parseDouble(item.getProduct().getDiscount())/100)));
							check = true;
						}
					}
					if(check == false) {
						Item item = new Item();
						item.setQty(qty);
						item.setProduct(product);
						item.setPrice(Double.parseDouble(product.getPrice()) - Double.parseDouble(item.getProduct().getPrice())*(Double.parseDouble(item.getProduct().getDiscount())/100));
						order.setSumPrice(order.getSumPrice() + Double.parseDouble(item.getProduct().getPrice()) - Double.parseDouble(item.getProduct().getPrice())*(Double.parseDouble(item.getProduct().getDiscount())/100));
						listItems.add(item);
					}
					n = listItems.size();
					session.setAttribute("length_order",n);
					session.setAttribute("order", order);
					session.setAttribute("sumprice", df.format(order.getSumPrice()));
				}
			}
			response.sendRedirect(request.getContextPath() + "/view/client/product");
		} else {
			response.sendRedirect(request.getContextPath() + "/");
		}
		
	}

}
