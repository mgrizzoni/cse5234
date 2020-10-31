package business;

import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import business.Item;
import model.LineItem;
import model.Order;
import util.ServiceLocator;

/**
 * Session Bean implementation class OrderProcessingServiceBean
 */
@Stateless
@LocalBean
public class OrderProcessingServiceBean {

    /**
     * Default constructor. 
     */
	
	@PersistenceContext
	EntityManager entityManager;
	
    public EntityManager getEntityManager() {
		return entityManager;
	}

	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

	public OrderProcessingServiceBean() {
        // TODO Auto-generated constructor stub
    }
    
    public String processOrder(Order order) {
    	
    	List<LineItem> orderItems = order.getItems();
    	
    	List<Item> items = new ArrayList<Item>();
    	
    	for(LineItem item : orderItems) {
			
			Item orderItem = new Item();
			
			orderItem.setId(item.getId());
			orderItem.setName(item.getName());
			orderItem.setPrice(NumberFormat.getInstance().format(item.getPrice()));
			orderItem.setItemNumber(item.getItemNumber());
			orderItem.setQuantity("" + item.getQuantity());
			
			items.add(orderItem);
			
		}
    	
    	boolean isOrderValid = ServiceLocator.getInventoryService().validateQuantity(items);
    	
    	boolean inventoryStatus = ServiceLocator.getInventoryService().updateInventory(items);
    	
    	return "12345";
    }
    
    public boolean validateItemAvailability(Order order) {
    	
    	List<LineItem> orderItems = order.getItems();
    	
    	List<Item> currItems = new ArrayList<Item>();
    	
    	for(LineItem item : orderItems) {
			
			Item orderItem = new Item();
			
			orderItem.setId(item.getId());
			orderItem.setName(item.getName());
			orderItem.setPrice(NumberFormat.getInstance().format(item.getPrice()));
			orderItem.setItemNumber(item.getItemNumber());
			orderItem.setQuantity("" + item.getQuantity());
			
			currItems.add(orderItem);
			
		}
    	
    	Inventory currStock = ServiceLocator.getInventoryService().getAvailableInventory();
    	
    	List<Item> itemsStock = currStock.getItems();
    	
    	Collections.sort(currItems, (a,b) -> a.getId() - b.getId());
    	
    	Collections.sort(itemsStock, (a,b) -> a.getId() - b.getId());
    	
    	for (int i = 0; i < currItems.size(); i++) {
    		if (Integer.parseInt(currItems.get(i).getQuantity()) > Integer.parseInt(itemsStock.get(i).getQuantity())) {
    			return false;
    		}
    	}
    	
    	entityManager.persist(order);
    	
    	entityManager.flush();
    	
//    	boolean status = ServiceLocator.getInventoryService().validateQuantity(currItems);
    	
		return true;
    }

}
