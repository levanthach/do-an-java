package nongsan.webmvc.model;

import java.util.Date;

public class Ordered {
	private int id;
	private int product_id;
	private int transaction_id;
	private int qty ;
	private double amount;
	private int status;
	private Date created;
	
	public Ordered(int id, int product_id, int transaction_id, int qty, double amount, int status, Date created) {
		super();
		this.id = id;
		this.product_id = product_id;
		this.transaction_id = transaction_id;
		this.qty = qty;
		this.amount = amount;
		this.status = status;
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

	public int getTransaction_id() {
		return transaction_id;
	}

	public void setTransaction_id(int transaction_id) {
		this.transaction_id = transaction_id;
	}

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Date getCreated() {
		return created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	@Override
	public String toString() {
		return "Ordered [id=" + id + ", product_id=" + product_id + ", transaction_id=" + transaction_id + ", qty="
				+ qty + ", amount=" + amount + ", status=" + status + ", created=" + created + "]";
	}
	
}
