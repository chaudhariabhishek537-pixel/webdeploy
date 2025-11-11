package com.Web.Dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Web.Model.Admin;


@Repository
public interface AdminDao extends JpaRepository<Admin, Integer> {

	boolean existsByEmail(String email);
	Admin findByEmail(String email);
}
