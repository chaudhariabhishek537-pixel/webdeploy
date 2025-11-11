package com.Web.MyServices;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Web.Dao.CartDao;
import com.Web.Model.CartItem;
import com.Web.Model.Product;

@Service
public class CartServices {
	
	@Autowired
	CartDao d;

	public List<CartItem> getCartItems(int Uid) {
		return d.findByuid(Uid);
	}

	public void addToCart(int uid, Product product, int quantity) {
		CartItem c = new CartItem(product,quantity,uid);
		d.save(c);
	}

	public CartItem findByUIdAndProduct(int uid, Product p) {
		return d.findByUidAndProduct_Id(uid, uid);
	}

	public void deleteCartProduct(int id) {
		System.err.println("deleted");
		d.deleteById(id);
	}
}
