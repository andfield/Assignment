package com.demo.entities;

public class Item {
	private Product product;
	private int quantity;
	
	public Item() {
		
	}
	
	public Item(Product p, int q) {
		this.product = p;
		this.quantity = q;
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
	
	
	
	
}
