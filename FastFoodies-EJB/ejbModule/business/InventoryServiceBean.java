package business;

import java.util.ArrayList;
import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import model.Item;



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
