package nongsan.webmvc.model;

import java.util.Date;

public class Review {
	private String id;
	private String name;
	private String email;
	private String product_id;
	private String content;
	private String created;
	public Review() {
		super();
	}
	public Review(String id, String name, String email, String product_id, String content, String created) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.product_id = product_id;
		this.content = content;
		this.created = created;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCreated() {
		return created;
	}
	public void setCreated(String created) {
		this.created = created;
	}
	@Override
	public String toString() {
		return "Review [id=" + id + ", name=" + name + ", email=" + email + ", product_id=" + product_id + ", content="
				+ content + ", created=" + created + "]";
	}
	
	
	
}
