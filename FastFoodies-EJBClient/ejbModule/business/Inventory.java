package business;

import java.io.Serializable;

import java.util.*;

public class Inventory implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5211620013588942403L;
	
	public List<Item> items;

	public List<Item> getItems() {
		return items;
	}

	public void setItems(List<Item> items) {
		this.items = items;
	}

}
