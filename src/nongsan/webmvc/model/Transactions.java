package nongsan.webmvc.model;
import java.util.Date;

public class Transactions {
	private int id;
	private int status;
	private int user_id;
	private String user_name;
	private String user_mail;
	private String user_phone;
	private String coupon;
	private double amount;
	private String payment;
	private String message;
	private Date created;
	public Transactions(int id, int status, int user_id, String user_name, String user_mail, String user_phone,
			String coupon, double amount, String payment, String message, Date created) {
		super();
		this.id = id;
		this.status = status;
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_mail = user_mail;
		this.user_phone = user_phone;
		this.coupon = coupon;
		this.amount = amount;
		this.payment = payment;
		this.message = message;
		this.created = created;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_mail() {
		return user_mail;
	}
	public void setUser_mail(String user_mail) {
		this.user_mail = user_mail;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getCoupon() {
		return coupon;
	}
	public void setCoupon(String coupon) {
		this.coupon = coupon;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Date getCreated() {
		return created;
	}
	public void setCreated(Date created) {
		this.created = created;
	}
	@Override
	public String toString() {
		return "Transactions [id=" + id + ", status=" + status + ", user_id=" + user_id + ", user_name=" + user_name
				+ ", user_mail=" + user_mail + ", user_phone=" + user_phone + ", coupon=" + coupon + ", amount="
				+ amount + ", payment=" + payment + ", message=" + message + ", created=" + created + "]";
	}
	
}
