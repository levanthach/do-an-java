package nongsan.webmvc.model;

public class Catalog {
	private String id;
	private String name;
	private String parent_id;
	public Catalog() { }
	public Catalog(String id, String name, String parent_id) {
		super();
		this.id = id;
		this.name = name;
		this.parent_id = parent_id;
	}
	public String getId() {
		return id;
	}
	public void setId(String cate_id) {
		this.id = cate_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getParent_id() {
		return parent_id;
	}
	public void setParent_id(String parent_id) {
		this.parent_id = parent_id;
	}
	@Override
	public String toString() {
		return "Catalog [id=" + id + ", name=" + name + ", parent_id=" + parent_id + "]";
	}
	
}
