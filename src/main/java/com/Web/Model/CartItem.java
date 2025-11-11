package com.Web.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class CartItem {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private int id;
	
	@ManyToOne
	private Product product;
	private int quantity;
	private int uid;
	
	// getter setter
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	
	public CartItem() {
		// TODO Auto-generated constructor stub
	}
	
	public CartItem(Product product2, int quantity2, int uid2) {
		this.product = product2;
		this.quantity = quantity2;
		this.uid = uid2;
	}
	public CartItem(int id, Product product, int quantity, int uid) {
		super();
		this.id = id;
		this.product = product;
		this.quantity = quantity;
		this.uid = uid;
	}
	
}
