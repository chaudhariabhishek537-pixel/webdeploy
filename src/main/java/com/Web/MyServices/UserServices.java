package com.Web.MyServices;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Web.Dao.UserDao;
import com.Web.Model.User;

@Service
public class UserServices {
	
	@Autowired
	UserDao d;

	public boolean addUser(User u) {
		User t = d.save(u);
		if(t != null) {
			return true;
		}
		return false;
	}
	
	public boolean existUser(String email) {
		return d.existsByEmail(email);
	}

	public User verifyLogin(String email, String password) {
		return d.findByEmail(email);
	}

	public List<User> getUserList() {
		return d.findAll();
	}

}
