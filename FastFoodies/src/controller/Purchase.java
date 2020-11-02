package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import business.Inventory;
import business.Item;
import model.LineItem;
import model.Order;
import model.PaymentInfo;
import model.ShippingInfo;
import util.ServiceLocator;

@Controller
@RequestMapping("/purchase")
public class Purchase {
	
	@RequestMapping(method = RequestMethod.GET)
	public String viewOrderEntryForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		Order order = new Order();
		
		Inventory currInventory = ServiceLocator.getInventoryService().getAvailableInventory();
		
		List<Item> items = currInventory.getItems();
		
		List<LineItem> orderItems = new ArrayList<>();
		
		for(Item item : items) {
			
			LineItem orderItem = new LineItem();
			
			orderItem.setId(item.getId());
			orderItem.setName(item.getName());
			orderItem.setPrice(Double.parseDouble(item.getPrice()));
			orderItem.setItemNumber(item.getItemNumber());
			
			orderItems.add(orderItem);
		}
		
		order.setItems(orderItems);
		
		request.setAttribute("order", order);
		request.setAttribute("inventory", currInventory);

		
		return "OrderEntryForm";
	}
	
	@RequestMapping(path = "/submitItems", method = RequestMethod.POST)
	public String submitItems(@ModelAttribute("order") Order order, HttpServletRequest request) {
		request.getSession().setAttribute("order", order);
		
		boolean isOrderValid = ServiceLocator.getOrderProcessingService().validateItemAvailability(order);
		
		if (isOrderValid == true) {
			return "redirect:/purchase/paymentEntry";	
		}
		else {
			request.getSession().setAttribute("message", "Please resubmit item quantities");
			return "OrderEntryForm";
		}
			
	}
	
	@RequestMapping(path = "/paymentEntry", method = RequestMethod.GET)
	public String viewPaymentEntryForm(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("payment", new PaymentInfo());
		return "PaymentEntryForm";
	}
	
	@RequestMapping(path = "/submitPayment", method = RequestMethod.POST)
	public String submitPayment(@ModelAttribute("payment") PaymentInfo payment, HttpServletRequest request) {
		request.getSession().setAttribute("payment", payment);
		return "redirect:/purchase/shippingEntry";	
	}
	
	@RequestMapping(path = "/shippingEntry", method = RequestMethod.GET)
	public String viewShippingEntryForm(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("shipping", new ShippingInfo());
		return "ShippingEntryForm";
	}
	
	@RequestMapping(path = "/submitShipping", method = RequestMethod.POST)
	public String submitPayment(@ModelAttribute("shipping") ShippingInfo shipping, HttpServletRequest request) {
		request.getSession().setAttribute("shipping", shipping);
		return "redirect:/purchase/viewOrder";
	}
	
	@RequestMapping(path = "/viewOrder", method = RequestMethod.GET)
	public String viewOrder(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("shipping", request.getSession().getAttribute("shipping"));
		request.setAttribute("payment", request.getSession().getAttribute("payment"));
		request.setAttribute("order", request.getSession().getAttribute("order"));
		return "ViewOrder";
	}
	
	@RequestMapping(path = "/confirmOrder", method = RequestMethod.POST)
	public String confirmOrder(HttpServletRequest request) {
		Order order = (Order) request.getSession().getAttribute("order");
		String confirmationID = ServiceLocator.getOrderProcessingService().processOrder(order);
		
		
		
		request.getSession().setAttribute("confirmationID", confirmationID);
		return "redirect:/purchase/confirmation";
	}
	
	@RequestMapping(path = "/confirmation", method = RequestMethod.GET)
	public String confirmation(HttpServletRequest request, HttpServletResponse response) {
		return "Confirmation";
	}
	
}
