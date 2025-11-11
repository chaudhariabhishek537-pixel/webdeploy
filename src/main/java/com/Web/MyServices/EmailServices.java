package com.Web.MyServices;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;


@Service
public class EmailServices {
	
	@Autowired
	JavaMailSender mailSender;

	public void sendOTP(String email, int otp) {
		SimpleMailMessage msg = new SimpleMailMessage();
		
		msg.setTo(email);
		msg.setSubject("Email Verification.....");
		msg.setText("Hi! , These is regarding the OTP verification. Here is your OTP "+ otp +". Thanks for chooesing Us.");
		mailSender.send(msg);
		System.out.println("Mail Sent Successfully...");
	}	
}