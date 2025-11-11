package com.Web.MyController;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.Web.Model.Product;
import com.Web.Model.User;
import com.Web.MyServices.ProductServices;

@Controller
public class MyController {
	
	@Autowired
	ProductServices ps;

//  User Side Mapping for FrontEnd
	
	@GetMapping("/")
	public String homePage(HttpSession session, Model model) 
	{
		User user = (User) session.getAttribute("LogedInUser");
		List<Product> plist = ps.getAllProducts();
		model.addAttribute("plist", plist);
		if (user == null) { 
			model.addAttribute("msg", "Please Login first,,,,");
			return "User/index";
		}
		return "User/index";
	}
	
	@GetMapping("/about")
	public String aboutPage() {
		return "User/about";
	}
	
	@GetMapping("/login")
	public String loginPage() {
		return "User/login";
	}
	
	@GetMapping("/sign")
	public String signUpPage() {
		return "User/sign";
	}
	
	@GetMapping("/contact")
	public String contactUs() {
		return "User/contact";
	}
	
	@GetMapping("/otp")
	public String otpPage() {
		return "User/otpverify";
	}
}
