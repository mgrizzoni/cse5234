package util;

import javax.naming.InitialContext;
import javax.naming.NamingException;

import business.InventoryService;
import business.OrderProcessingServiceBean;

public class ServiceLocator {
	
	
	public static OrderProcessingServiceBean getOrderProcessingService() {
		try {
	         return (OrderProcessingServiceBean) InitialContext.doLookup(
					"java:module/OrderProcessingServiceBean!business.OrderProcessingServiceBean");
		} catch (NamingException ne) {
				throw new RuntimeException(ne);
		}
	}
	
	public static InventoryService getInventoryService() {
		try {
	         return (InventoryService) InitialContext.doLookup(
					"java:global/FastFoodies/InventoryServiceBean!business.InventoryService");
		} catch (NamingException ne) {
				throw new RuntimeException(ne);
		}
	}
}
