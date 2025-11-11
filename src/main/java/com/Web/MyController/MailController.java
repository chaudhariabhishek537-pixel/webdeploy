package com.Web.MyController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Web.Model.User;
import com.Web.MyServices.EmailServices;
import com.Web.MyServices.UserServices;

@Controller
public class MailController {

	@Autowired
	EmailServices es;
	
	@Autowired
	UserServices s;
	User Tuser;
	
	int Otp;
	@PostMapping("/add-user")
	public String addUser(@ModelAttribute User u , Model model) {
	    // Check if the email already exists
	    boolean emailExists = s.existUser(u.getEmail());

	    // If email exists, return the sign-up page with an error message
	    if (emailExists) {
	    	model.addAttribute("exist", "Email Already exist...");
	        return "redirect:/sign"; // You can pass an error flag or message
	    }
	    
	    Tuser = u;
	    Otp = (int) (Math.random()*1000000);
	    
	    es.sendOTP(Tuser.getEmail(), Otp);
	    return "User/otpverify";
//	    // If email doesn't exist, proceed with adding the user
//	    boolean userAdded = s.addUser(u);
//
//	    // If user is added successfully, redirect to login page
//	    if (userAdded) {
//	        return "redirect:/login";
//	    }
//
//	    // If there was an issue adding the user, return to sign-up page
//	    model.addAttribute("error", "Something Went Wrong..");
//	    return "redirect:/sign";
	}
	
	@PostMapping("/verify-otp")
	public String verifyOTP(@RequestParam int otp, Model model) {
		if(otp == Otp) {
		    s.addUser(Tuser);
			return "User/login";
		}
		model.addAttribute("error", "Wrong OTP entered.....");
		System.out.println(otp);
		return"User/otpverify";
	}
}
