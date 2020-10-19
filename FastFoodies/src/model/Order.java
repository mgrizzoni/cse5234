package model;

import java.util.List;

import business.Item;

public class Order {
	private List<Item> items = null;

	public List<Item> getItems() {
		return items;
	}

	public void setItems(List<Item> items) {
		this.items = items;
	}
	
}
