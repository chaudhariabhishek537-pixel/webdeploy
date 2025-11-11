package com.Web.Dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Web.Model.User;

@Repository
public interface UserDao extends JpaRepository<User, Integer>{
	
	User findByEmail(String email);
	boolean existsByEmail(String email);
}
