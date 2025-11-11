package com.Web.MyController;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Web.Model.CartItem;
import com.Web.Model.Product;
import com.Web.Model.User;
import com.Web.MyServices.CartServices;
import com.Web.MyServices.ProductServices;

@Controller
public class CartController {

	@Autowired
	ProductServices s;
	
	@Autowired
	CartServices cs;
	
	@PostMapping("/add-to-cart")
	public String addToCart(@RequestParam int quantity ,@RequestParam int id, HttpSession session, Model model) {
		User u = (User) session.getAttribute("LogedInUser");
		if(u == null) {
			model.addAttribute("msg", "Log in Plz....");
			return "User/login";
		}
		//  product will store in the databse 
		int uid = u.getId();
		Product product = s.getProductById(id);
		
		if (product != null) {
			List<CartItem> c = cs.getCartItems(uid);
			boolean ProductExistInCart = false;
			
			for(CartItem i : c) {
				if (i.getProduct().getId() == product.getId()) {
					ProductExistInCart = true;
					break;
				}
			}
			if (!ProductExistInCart) {
				cs.addToCart(uid,product,quantity);
			}
		}
		return "redirect:/cart";
	}
	
	// product will show in the cart to buy or remove
	@GetMapping("/cart")
	public String cartPage(HttpSession session, Model model) {
		User u = (User) session.getAttribute("LogedInUser");
		if (u == null) {
			model.addAttribute("msg", "Logged in First...");
			return "User/login";
		}
		int Uid = u.getId();
		List<CartItem> c = cs.getCartItems(Uid);
		model.addAttribute("c", c);
		
		float subtotal = 0.0f;
		for (CartItem item : c) {
		    subtotal += item.getQuantity() * item.getProduct().getPrice();
		}

		float shipping = 50.00f; // Flat rate shipping
		float gstRate = 0.18f;   // 18% GST
		float tax = subtotal * gstRate;
		float total = subtotal + shipping + tax;

		// Pass values to the model
		model.addAttribute("subtotal", subtotal);
		model.addAttribute("shipping", shipping);
		model.addAttribute("tax", tax);
		model.addAttribute("total", total);

		return "User/cart"; 
	}
	
	@PostMapping("/delete-from-cart")
	public String deleteProductFromCart(@RequestParam int id, Model model,HttpSession session) {
		System.err.println(id);
		cs.deleteCartProduct(id);
		return "redirect:/cart";
	}
}
