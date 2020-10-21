package model;

import java.util.List;

import business.Item;

public class Order {
	
	private int id;
	private String customerName;
	private String emailAddress;
	private List<LineItem> items = null;
	private ShippingInfo shippingInfo = null;
	private PaymentInfo paymentInfo = null;

	public List<LineItem> getItems() {
		return items;
	}

	public void setItems(List<LineItem> items) {
		this.items = items;
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
	
	public void setPaymentInfo(PaymentInfo paymentInfo) {
		this.paymentInfo = paymentInfo;
	}
	
	public ShippingInfo getShippingInfo() {
		return this.shippingInfo;
	}
	
	public void setShippingInfo(ShippingInfo shippingInfo) {
		this.shippingInfo = shippingInfo;
	}
	
}
