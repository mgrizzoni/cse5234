package edu.osu.cse5234.model;

import edu.osu.cse5234.business.Item;

public class Order {
	private Item[] items = null;
	
	public Item[] getItems() {
		return this.items;
	}
	
	public void setItems(Item[] items) {
		this.items = items;
	}
	
}
