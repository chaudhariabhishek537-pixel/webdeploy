package com.Web.MyController;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Web.Model.Admin;
import com.Web.Model.Category;
import com.Web.MyServices.AdminService;
import com.Web.MyServices.CategoryService;

@Controller
public class AdminController {
	
	@Autowired
	AdminService s;
	
	@Autowired
	CategoryService cs;
	
//	Admin Side Mapping for FrontEnd
	
	@GetMapping("/Admin-login")
	public String adminLogin() {
		return "Admin/Admin-login";
	}
	
	@PostMapping("/admin-verify")
	public String verifyAdmin(@RequestParam String email, @RequestParam String password,Model model,HttpSession session) {
		Admin a = s.verifyAdmin(email,password);
		if (a != null && a.getPassword().equals(password)) {
			session.setAttribute("AdminLoggedIn", a);
			return "redirect:/admin-home"; 
		}
		return "redirect:/Admin-login";
	}
	
	@GetMapping("/admin-home")
	public String home(HttpSession session) {
		Admin a = (Admin) session.getAttribute("AdminLoggedIn");
		if(a == null) {
			return "redirect:/Admin-login";
		}
		return "Admin/Home";
	}
	
	@GetMapping("/admin-product")
	public String allProductPage(HttpSession session) {
		Admin a = (Admin) session.getAttribute("AdminLoggedIn");
		if(a == null) {
			return "redirect:/Admin-login";
		}
		return "redirect:/get-allproducts";
	}
	
	@GetMapping("/new-product")
	public String addProduct(Model model,HttpSession session) {
		Admin a = (Admin) session.getAttribute("AsdminLoggedIn");
		if(a == null) {
			return "redirect:/Admin-login";
		}
		List<Category> clist = cs.getAllCategory();
		model.addAttribute("clist", clist);
		return "Admin/addProduct";
	}
	
	@GetMapping("/category")
	public String category(Model model,HttpSession session) {
		Admin a = (Admin) session.getAttribute("AdminLoggedIn");
		if(a == null) {
			return "redirect:/Admin-login";
		}
		List<Category> clist = cs.getAllCategory();
		model.addAttribute("clist", clist);
		return "Admin/category";
	}
	
	@PostMapping("/add-category")
	public String addCategory(@RequestParam String name) {
		Category c = new Category();
		c.setName(name);
		cs.addCategory(c);
		return "redirect:/category";
	}
	
	@GetMapping("/users")
	public String userList(HttpSession session) {
		Admin a = (Admin) session.getAttribute("AdminLoggedIn");
		if(a == null) {
			return "redirect:/Admin-login";
		}
		return "redirect:/user-list";
	}
	
	@PostMapping("/delete-category")
	public String deleteCategory(@RequestParam String name) {
		Category c = cs.findCategory(name);
		cs.deleteCategory(c);
		return "redirect:/category";
	}
	
	@GetMapping("/Admin-logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/Admin-login";
	}
	
	@GetMapping("/insights")
	public String insights() {
		return "Admin/insights";
	}
}
