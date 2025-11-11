package com.Web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan("com")
@SpringBootApplication
public class AmezMartApplication {

	public static void main(String[] args) {
		SpringApplication.run(AmezMartApplication.class, args);
		System.err.println("welcome...");
	}
}