package business;

import java.util.ArrayList;
import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import business.Inventory;
import business.InventoryService;
import business.Item;

/**
 * Session Bean implementation class InventoryServiceBean
 */
@Stateless
public class InventoryServiceBean implements InventoryService {

    /**
     * Default constructor. 
     */
	
	@PersistenceContext
	EntityManager entityManager;
	
	public static final String MY_QUERY= "Select i from Item i";
	
    public EntityManager getEntityManager() {
		return entityManager;
	}

	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

	public InventoryServiceBean() {
        // TODO Auto-generated constructor stub
    }

	@Override
	public Inventory getAvailableInventory() {
		// TODO Auto-generated method stub
		
		Inventory inventory = new Inventory();
		
		List<Item> items = new ArrayList<Item>();
//		
//		for(int i = 0; i < 5; i++) {
//			items.add(new Item());
//		}
//		items.get(0).setName("Hamburger");
//		items.get(0).setPrice("5.75");
//		items.get(1).setName("Cheeseburger");
//		items.get(1).setPrice("6.25");
//		items.get(2).setName("French Fries");
//		items.get(2).setPrice("1.75");
//		items.get(3).setName("Coca-Cola");
//		items.get(3).setPrice("1.00");
//		items.get(4).setName("Sprite");
//		items.get(4).setPrice("1.00");
		
		items = entityManager.createQuery(MY_QUERY,Item.class).getResultList();
		
		inventory.setItems(items);
		
		return inventory;
	}

	@Override
	public boolean validateQuantity(List<Item> items) {
		return true;
	}

	@Override
	public boolean updateInventory(List<Item> items) {
		return true;
	}

}
