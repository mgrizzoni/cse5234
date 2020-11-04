package model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name="CUSTOMER_ORDER")
public class Order {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ID")
	private int id;
	
	@Column(name="CUSTOMER_NAME")
	private String customerName;
	
	@Column(name="CUSTOMER_EMAIL")
	private String emailAddress;
	
	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="CUSTOMER_ORDER_ID_FK")
	private List<LineItem> LineItems;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="SHIPPING_INFO_ID_FK")
	private ShippingInfo shippingInfo;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="PAYMENT_INFO_ID_FK")
	private PaymentInfo paymentInfo;
	

	public List<LineItem> getLineItems() {
		return LineItems;
	}

	public void setLineItems(List<LineItem> lineItems) {
		LineItems = lineItems;
	}

	public int getId() {
		return this.id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getCustomerName() {
		return this.customerName;
	}
	
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	
	public String getEmailAddress() {
		return this.emailAddress;
	}
	
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	
	public PaymentInfo getPaymentInfo() {
		return this.paymentInfo;
	}
	
	public void setPaymentInfo(PaymentInfo payment) {
		this.paymentInfo = payment;
	}
	
	public ShippingInfo getShippingInfo() {
		return this.shippingInfo;
	}
	
	public void setShippingInfo(ShippingInfo shipping) {
		this.shippingInfo = shipping;
	}
	
}
