package nongsan.webmvc.model;

import java.util.Date;

public class Review {
	private int id;
	private int product_id;
	private String content;
	private Date created;
	public Review(int id, int product_id, String content, Date created) {
		super();
		this.id = id;
		this.product_id = product_id;
		this.content = content;
		this.created = created;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCreated() {
		return created;
	}
	public void setCreated(Date created) {
		this.created = created;
	}
	@Override
	public String toString() {
		return "Review [id=" + id + ", product_id=" + product_id + ", content=" + content + ", created=" + created
				+ "]";
	}
	
}
