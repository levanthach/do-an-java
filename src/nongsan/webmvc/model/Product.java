package nongsan.webmvc.model;
import java.util.Date;

public class Product {
	private int id;
	private int catalog_id;
	private String name;
	private double price;
	private int status;
	private String description;
	private String content;
	private int discount;
	private String image_link;
	private String image_list;
	private String review;
	private Date created;
	public Product(int id, int catalog_id, String name, double price, int status, String description, String content,
			int discount, String image_link, String image_list, String review, Date created) {
		super();
		this.id = id;
		this.catalog_id = catalog_id;
		this.name = name;
		this.price = price;
		this.status = status;
		this.description = description;
		this.content = content;
		this.discount = discount;
		this.image_link = image_link;
		this.image_list = image_list;
		this.review = review;
		this.created = created;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCatalog_id() {
		return catalog_id;
	}
	public void setCatalog_id(int catalog_id) {
		this.catalog_id = catalog_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public String getImage_link() {
		return image_link;
	}
	public void setImage_link(String image_link) {
		this.image_link = image_link;
	}
	public String getImage_list() {
		return image_list;
	}
	public void setImage_list(String image_list) {
		this.image_list = image_list;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public Date getCreated() {
		return created;
	}
	public void setCreated(Date created) {
		this.created = created;
	}
	@Override
	public String toString() {
		return "Product [id=" + id + ", catalog_id=" + catalog_id + ", name=" + name + ", price=" + price + ", status="
				+ status + ", description=" + description + ", content=" + content + ", discount=" + discount
				+ ", image_link=" + image_link + ", image_list=" + image_list + ", review=" + review + ", created="
				+ created + "]";
	}
	
}
