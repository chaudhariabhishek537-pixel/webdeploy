package com.Web.MyServices;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Web.Dao.ProductDao;
import com.Web.Model.Product;

@Service
public class ProductServices {
	
	@Autowired
	ProductDao d;

	public boolean addProduct(Product product) {
		d.save(product);
		return true;
	}

	public List<Product> getAllProducts() {
		return d.findAll();
	}

	public void deleteProduct(int id) {
		d.deleteById(id);
	}

	public Product getProductById(int pid) {
		return d.findById(pid);
	}

	
}
