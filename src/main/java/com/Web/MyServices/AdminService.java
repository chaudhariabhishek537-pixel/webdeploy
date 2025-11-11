package com.Web.MyServices;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Web.Dao.AdminDao;
import com.Web.Model.Admin;

@Service
public class AdminService {
	
	@Autowired
	AdminDao d;

	public Admin verifyAdmin(String email, String password) {
		return d.findByEmail(email);
	}
}
