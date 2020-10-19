package business;

import javax.ejb.Remote;
import java.util.*;

@Remote
public interface InventoryService {
	
	public Inventory getAvailableInventory();
	
	public boolean validateQuantity(List<Item> items);
	
	public boolean updateInventory(List<Item> items);

}
