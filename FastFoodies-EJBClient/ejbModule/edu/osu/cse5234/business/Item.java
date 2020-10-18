package edu.osu.cse5234.business;

import java.io.Serializable;

public class Item implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1781726583312236780L;
	private String name = null;
	private String price = null;
	private String quantity = null;
	
	public String getName() {
		return this.name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getPrice() {
		return this.price;
	}
	
	public void setPrice(String price) {
		this.price = price;
	}
	
	public String getQuantity() {
		return this.quantity;
	}
	
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	
}
