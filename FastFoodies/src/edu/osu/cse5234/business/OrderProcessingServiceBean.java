package edu.osu.cse5234.business;

import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import edu.osu.cse5234.model.Order;
import edu.osu.cse5234.util.ServiceLocator;

/**
 * Session Bean implementation class OrderProcessingServiceBean
 */
@Stateless
@LocalBean
public class OrderProcessingServiceBean {

    /**
     * Default constructor. 
     */
    public OrderProcessingServiceBean() {
        // TODO Auto-generated constructor stub
    }
    
    public String processOrder(Order order) {
    	
    	List<Item> items = order.getItems();
    	
    	boolean isOrderValid = ServiceLocator.getInventoryService().validateQuantity(items);
    	
    	boolean inventoryStatus = ServiceLocator.getInventoryService().updateInventory(items);
    	
    	return "#52342020";
    }
    
    public boolean validateItemAvailability(Order order) {
    	
    	List<Item> items = order.getItems();
    	
    	boolean status = ServiceLocator.getInventoryService().validateQuantity(items);
    	
		return status;
    }

}
