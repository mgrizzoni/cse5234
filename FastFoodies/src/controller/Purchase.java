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
import model.Item;
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
		
		Inventory currInventory = ServiceLocator.getInventoryService().getAvailableInventory();
		
		Order order = new Order();
		
		List<LineItem> lineItems = new ArrayList<LineItem>();
		
		for (int i = 0; i < currInventory.getItems().size(); i++) {
			lineItems.add(new LineItem());
		}
		
		order.setLineItems(lineItems);
		
		request.setAttribute("order", order);
		request.setAttribute("inventory", currInventory);
		request.getSession().setAttribute("inventory", currInventory);
		request.getSession().setAttribute("message", "");
		
		return "OrderEntryForm";
	}
	
	@RequestMapping(path = "/submitItems", method = RequestMethod.POST)
	public String submitItems(@ModelAttribute("order") Order order, HttpServletRequest request) {
		
		boolean isOrderValid = ServiceLocator.getOrderProcessingService().validateItemAvailability(order);
		
		if (isOrderValid == true) {
			request.getSession().setAttribute("order", order);
			return "redirect:/purchase/paymentEntry";	
		}
		else {
			Inventory curr = (Inventory) request.getSession().getAttribute("inventory");
			System.out.println(curr.getItems().size());
			request.getSession().setAttribute("inventory", curr);
			request.getSession().setAttribute("order", order);
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
		
		Order order = (Order) request.getSession().getAttribute("order");
		
		order.setPaymentInfo(payment);
		
		request.getSession().setAttribute("payment", payment);
		request.setAttribute("order", order);
		request.getSession().setAttribute("order", order);
		
		return "redirect:/purchase/shippingEntry";
	}
	
	@RequestMapping(path = "/shippingEntry", method = RequestMethod.GET)
	public String viewShippingEntryForm(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("shipping", new ShippingInfo());
		return "ShippingEntryForm";
	}
	
	@RequestMapping(path = "/submitShipping", method = RequestMethod.POST)
	public String submitPayment(@ModelAttribute("shipping") ShippingInfo shipping, HttpServletRequest request) {
		
		Order order = (Order) request.getSession().getAttribute("order");
		
		order.setShippingInfo(shipping);
		
		order.setCustomerName(shipping.getName());
		
		request.getSession().setAttribute("shipping", shipping);
		request.setAttribute("order", order);
		request.getSession().setAttribute("order", order);

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

		String confirmationID = (String) ServiceLocator.getOrderProcessingService().processOrder(order);
		
		
		
		request.getSession().setAttribute("confirmationID", confirmationID);
		
		return "redirect:/purchase/confirmation";
	}
	
	@RequestMapping(path = "/confirmation", method = RequestMethod.GET)
	public String confirmation(HttpServletRequest request, HttpServletResponse response) {
		return "Confirmation";
	}
	
}
