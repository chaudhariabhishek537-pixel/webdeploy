package com.Web.MyServices;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Web.Dao.CategoryDao;
import com.Web.Model.Category;

@Service
public class CategoryService {

	@Autowired
	CategoryDao d;

	public List<Category> getAllCategory() {
		return d.findAll();
	}

	public void addCategory(Category c) {
		d.save(c);
	}

	public Category findCategory(String name) {
		return d.findByName(name);
	}

	public void deleteCategory(Category c) {
		d.delete(c);
	}
	
}
