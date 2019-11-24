package com.DEStore.model;

public class Customer {
	private int id;
	private String name;
	private String surname;
	private String address;
	
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

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getLoyalty() {
		return loyalty;
	}

	public void setLoyalty(String loyalty) {
		this.loyalty = loyalty;
	}

	private String loyalty;
	
	public Customer(int id,String name, String surname, String address, String loyalty) {
		this.id = id;
		this.name = name;
		this.surname = surname;
		this.address = address;
		this.loyalty = loyalty;
	}

}