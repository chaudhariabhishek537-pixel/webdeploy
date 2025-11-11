package com.Web.MyController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.Web.Model.Product;
import com.Web.MyServices.ProductServices;

@Controller
public class ProductController {
	
	@Autowired
	ProductServices s;
	
	@PostMapping("/add-product")
	public String addProduct(@ModelAttribute Product product, Model model) {
		System.err.println(product);
		boolean p = s.addProduct(product);
		if(p) {
			return "redirect:/admin-product";
		}
		return "redirect:/new-product";
	}
	
	@GetMapping("/all-products")
	public String allProducts(Model model) {
		List<Product> plist = s.getAllProducts();
		System.out.println(plist);
		model.addAttribute("plist", plist);
		return "User/products";
	}
	
	@GetMapping("/get-allproducts")
	public String Products(Model model) {
		List<Product> plist = s.getAllProducts();
		model.addAttribute("plist", plist);
		return "Admin/Admin-products";
	}
	
	@PostMapping("/product/delete/{id}")
	public String deleteProduct(@PathVariable int id) {
		System.err.println(id);
		s.deleteProduct(id);
		return "redirect:/admin-product";
	}
}