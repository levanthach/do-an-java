package nongsan.webmvc.model;
import java.util.List;

public class Order {
	private String id;
	private User customer;
	private List<Item> items;
	private int status;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}

	public User getCustomer() {
		return customer;
	}
	public void setCustomer(User customer) {
		this.customer = customer;
	}
	public List<Item> getItems() {
		return items;
	}
	public void setItems(List<Item> items) {
		this.items = items;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	@Override
	public String toString() {
		return "Order [id=" + id + ", customer=" + customer + ", items=" + items + ", status=" + status + "]";
	}

	
}
