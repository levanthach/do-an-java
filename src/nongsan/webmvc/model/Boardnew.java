package nongsan.webmvc.model;

import java.util.Date;

public class Boardnew {
	private int id;
	private String title;
	private String content;
	private String author;
	private Date created;
	public Boardnew(int id, String title, String content, String author, Date created) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.author = author;
		this.created = created;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Date getCreated() {
		return created;
	}
	public void setCreated(Date created) {
		this.created = created;
	}
	@Override
	public String toString() {
		return "Boardnew [id=" + id + ", title=" + title + ", content=" + content + ", author=" + author + ", created="
				+ created + "]";
	}
	
}
