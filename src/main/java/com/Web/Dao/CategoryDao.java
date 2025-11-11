package com.Web.Dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Web.Model.Category;

@Repository
public interface CategoryDao extends JpaRepository<Category, Integer> {

	Category findByName(String name);

}
