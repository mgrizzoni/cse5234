package business;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ITEM")

public class Item implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1781726583312236780L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ID")
	private int id;
	
	@Column(name="ITEM_NUMBER")
	private int itemNumber;
	
	@Column(name="NAME")
	private String name = null;
	
	@Column(name="DESCRIPTION")
	private String description = null;
	
	@Column(name="UNIT_PRICE")
	private String price = null;
	
	@Column(name="AVAILABLE_QUANTITY")
	private String quantity = null;
	
	public Item() {
		
	}
	
	public String getName() {
		return this.name;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getItemNumber() {
		return itemNumber;
	}

	public void setItemNumber(int itemNumber) {
		this.itemNumber = itemNumber;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
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
