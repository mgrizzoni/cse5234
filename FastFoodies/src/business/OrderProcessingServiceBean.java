package business;

import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

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
			
		}
    	
    	boolean isOrderValid = ServiceLocator.getInventoryService().validateQuantity(items);
    	
    	boolean inventoryStatus = ServiceLocator.getInventoryService().updateInventory(items);
    	
    	return "12345";
    }
    
    public boolean validateItemAvailability(Order order) {
    	
    	List<LineItem> orderItems = order.getItems();
    	
    	List<Item> items = new ArrayList<Item>();
    	
    	for(LineItem item : orderItems) {
			
			Item orderItem = new Item();
			
			orderItem.setId(item.getId());
			orderItem.setName(item.getName());
			orderItem.setPrice(NumberFormat.getInstance().format(item.getPrice()));
			orderItem.setItemNumber(item.getItemNumber());
			orderItem.setQuantity("" + item.getQuantity());
			
		}
    	
    	boolean status = ServiceLocator.getInventoryService().validateQuantity(items);
    	
		return status;
    }

}
