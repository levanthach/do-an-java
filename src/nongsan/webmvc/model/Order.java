package nongsan.webmvc.model;
import java.util.List;

public class Order {
	private String id;
	private List<Item> items;
	private double sumPrice;
	private String created;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public List<Item> getItems() {
		return items;
	}
	public void setItems(List<Item> items) {
		this.items = items;
	}
	public double getSumPrice() {
		return sumPrice;
	}
	public void setSumPrice(double sumPrice) {
		this.sumPrice = sumPrice;
	}
	public String getCreated() {
		return created;
	}
	public void setCreated(String created) {
		this.created = created;
	}
	@Override
	public String toString() {
		return "Order [id=" + id  + ", items=" + items + ", sumPrice="
				+ sumPrice + ", created=" + created + "]";
	}
	
	
	
}
