package com.DEStore.model;

public class Product {
	private int id;
	private String name;
	private String description;
	private Float price;
	private int stock;
	private boolean threetwo;
	private boolean oneone;
	private boolean freeDelivery;
	
	public Product(int id, String name, String description, Float price,
			int stock, boolean threetwo, boolean oneone, boolean freeDelivery) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.price = price;
		this.stock = stock;
		this.threetwo = threetwo;
		this.oneone = oneone;
		this.freeDelivery = freeDelivery;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public boolean isThreetwo() {
		return threetwo;
	}

	public void setThreetwo(boolean threetwo) {
		this.threetwo = threetwo;
	}

	public boolean isOneone() {
		return oneone;
	}

	public void setOneone(boolean oneone) {
		this.oneone = oneone;
	}

	public boolean isFreeDelivery() {
		return freeDelivery;
	}

	public void setFreeDelivery(boolean freeDelivery) {
		this.freeDelivery = freeDelivery;
	}
	
	
}
