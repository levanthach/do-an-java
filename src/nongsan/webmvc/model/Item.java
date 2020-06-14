package nongsan.webmvc.model;

import java.io.Serializable;

public class Item implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String id;
	private Product product;
	private int qty;
	private double price;
	public Item() {}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double string) {
		this.price = string;
	}
	@Override
	public String toString() {
		return "Item [id=" + id + ", product=" + product + ", qty=" + qty + ", price=" + price + "]";
	}
	
	
	
}
