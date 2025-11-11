	package com.Web.MyController;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.Web.Model.User;
import com.Web.MyServices.UserServices;

@Controller
public class UserController {
	
	@Autowired
	UserServices s;
	
	@GetMapping("/profile")
	public String profilePage(HttpSession session, Model model) {
		User u = (User) session.getAttribute("LogedInUser");
		if (u == null) {
			return "User/login";
		}
		model.addAttribute("user", u);
		return "User/profile";
	}
	
	@PostMapping("/verify-login")
	public String verifyLogin(HttpSession session ,@RequestParam String email, @RequestParam String password ,RedirectAttributes redirectAttrs) {
		String success = "Login Successfully.....";
		String error = "Something went Wrong...";
		User u = s.verifyLogin(email,password);
		
		if (u != null && u.getPassword().equals(password)) 
		{
			session.setAttribute("LogedInUser", u);
			redirectAttrs.addFlashAttribute("success", success);
	        return "redirect:/";
	    }
		redirectAttrs.addFlashAttribute("error", error);
	    return "redirect:/login";
	}
	
	@GetMapping("/user-list")
	public String userList(Model model) {
		List<User> ulist = s.getUserList();
		System.out.println(ulist);
		model.addAttribute("ulist", ulist);
		return "Admin/users";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
} 