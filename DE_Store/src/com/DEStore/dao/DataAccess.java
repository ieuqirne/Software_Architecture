package com.DEStore.dao;

import com.DEStore.dao.DBUtils;
import com.DEStore.model.Customer;
import com.DEStore.model.Order;
import com.DEStore.model.Product;
import com.sun.istack.internal.logging.Logger;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;

public class DataAccess {

	//Working Login
	public boolean checkLogin(String uname, String pass) throws ClassNotFoundException, SQLException {
		
		String sql = "Select * from user where uname = '" + uname +"' and pass = '" + pass + "'";
		//System.out.print(sql);
		try{
			ResultSet rs = DBUtils.getPreparedStatement(sql).executeQuery();
			//ResultSet rs = DBUtils.getPreparedStatement(sql).executeQuery();
			if(rs.next()){
				return true;
			}
		}catch (Exception e){
			
			e.printStackTrace(); 
		}
		
		return false;
	}
	//Working Customer
	public static List<Customer> getCustomerById(int id) {
		List<Customer> ls = new LinkedList<>();
		String sql = "select * from Customer where id = " + id;
		try {
			ResultSet rs = DBUtils.getPreparedStatement(sql).executeQuery();
			while (rs.next()) {
				Customer n = new Customer(rs.getInt(1), rs.getString(2),
						rs.getString(3), rs.getString(4),rs.getString(5) , rs.getBoolean(6), rs.getBoolean(7));
				ls.add(n);
			}
		} catch (ClassNotFoundException | SQLException ex) {
			Logger.getLogger(DataAccess.class.getName(), null).log(
					Level.SEVERE, null, ex);
		}

		return ls;
	}
	public void addCustomer(Customer c) {
		boolean activeTrue = Boolean.TRUE;
		try {
			PreparedStatement ps = DBUtils
					.getPreparedStatement("Insert into Customer (name, surname, address, email, loyalty, active) Values (?,?,?,?,?,?)");
			ps.setString(1, c.getName());
			ps.setString(2, c.getSurname());
			ps.setString(3, c.getAddress());
			ps.setString(4, c.getEmail());
			ps.setBoolean(5, c.isLoyalty());
			ps.setBoolean(6, activeTrue);
			ps.executeUpdate();
		} catch (ClassNotFoundException | SQLException ex) {
			Logger.getLogger(DataAccess.class.getName(), null).log(
					Level.SEVERE, null, ex);

		}
	}

	public static List<Customer> getAll() {
		List<Customer> ls = new LinkedList<>();
		//boolean activeFalse = Boolean.FALSE;
		try {
			//PreparedStatement ps = DBUtils
				//	.getPreparedStatement("Select * from Customer");
			//ps.setString(1,activeFalse());
			//ps.executeUpdate();
			ResultSet rs = DBUtils.getPreparedStatement(
					"Select * from Customer where active = 1").executeQuery();
			while (rs.next()) {
				Customer n = new Customer(rs.getInt(1), rs.getString(2),
						rs.getString(3), rs.getString(4),rs.getString(5), rs.getBoolean(6), rs.getBoolean(7));
				ls.add(n);
			}
		} catch (ClassNotFoundException | SQLException ex) {
			Logger.getLogger(DataAccess.class.getName(), null).log(
					Level.SEVERE, null, ex);

		}
		return ls;
	}



	public void edit(int id, String name, String surname, String address,
			String email, Boolean loyalty) {
		try {
			String sql = "update Customer SET name = ?, surname = ?, address = ?, email = ?, loyalty = ?"
					+ " where id = ?";
			PreparedStatement ps = DBUtils.getPreparedStatement(sql);
			ps.setString(1, name);
			ps.setString(2, surname);
			ps.setString(3, address);
			ps.setString(4, email);
			ps.setBoolean(5, loyalty);
			ps.setInt(6, id);
			ps.executeUpdate();
		} catch (ClassNotFoundException | SQLException ex) {
			Logger.getLogger(DataAccess.class.getName(), null).log(
					Level.SEVERE, null, ex);
		}

	}

	public void delete(int id) {
		try {
			String sql = "UPDATE `customer` set active = 0 where id = ?";
			PreparedStatement ps = DBUtils.getPreparedStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (ClassNotFoundException | SQLException ex) {
			Logger.getLogger(DataAccess.class.getName(), null).log(
					Level.SEVERE, null, ex);
		}
	}
	
	//Working Products
	public void addProduct(Product p) {

		try {
			PreparedStatement ps = DBUtils
					.getPreparedStatement("Insert into Product (name, description,price,stock, threetwo, oneone, freedelivery) Values (?,?,?,?,?,?,?)");
			ps.setString(1, p.getName());
			ps.setString(2, p.getDescription());
			ps.setFloat(3, p.getPrice());
			ps.setInt(4, p.getStock());
			ps.setBoolean(5, p.isThreetwo());
			ps.setBoolean(6, p.isOneone());
			ps.setBoolean(7, p.isFreeDelivery());
			ps.executeUpdate();
		} catch (ClassNotFoundException | SQLException ex) {
			Logger.getLogger(DataAccess.class.getName(), null).log(
					Level.SEVERE, null, ex);

		}
	}
	public static List<Product> getAllProduct() {
		List<Product> ls = new LinkedList<>();

		try {
			ResultSet rs = DBUtils.getPreparedStatement(
					"Select * from product").executeQuery();
			while (rs.next()) {
				Product p = new Product(rs.getInt(1), rs.getString(2),
						rs.getString(3), rs.getFloat(4), rs.getInt(5), rs.getBoolean(6), rs.getBoolean(7), rs.getBoolean(8));
				ls.add(p);
			}
		} catch (ClassNotFoundException | SQLException ex) {
			Logger.getLogger(DataAccess.class.getName(), null).log(
					Level.SEVERE, null, ex);

		}
		return ls;
	}
	public void editProduct(int id, String name, String description, float price,
			int stock, boolean threetwo, boolean oneone, boolean freeDelivery) {
		try {
			String sql = "update Product SET name = ?, description = ?, price = ?, stock = ?, "
					+ "threetwo = ?, oneone = ?, freeDelivery = ?"
					+ " where id = ?";
			
			if(stock < 50){
				stock = 50;
			}
			PreparedStatement ps = DBUtils.getPreparedStatement(sql);
			ps.setString(1, name);
			ps.setString(2, description);
			ps.setFloat(3, price);
			ps.setInt(4, stock);
			ps.setBoolean(5, threetwo);
			ps.setBoolean(6, oneone);
			ps.setBoolean(7, freeDelivery);
			ps.setInt(8, id);
			ps.executeUpdate();
		} catch (ClassNotFoundException | SQLException ex) {
			Logger.getLogger(DataAccess.class.getName(), null).log(
					Level.SEVERE, null, ex);
		}

	}
	public static List<Product> getProductById(int id) {
		List<Product> ls = new LinkedList<>();
		String sql = "select * from product where id = " + id;
		try {
			ResultSet rs = DBUtils.getPreparedStatement(sql).executeQuery();
			while (rs.next()) {
				Product p = new Product(rs.getInt(1), rs.getString(2),
						rs.getString(3), rs.getFloat(4), rs.getInt(5), rs.getBoolean(6), rs.getBoolean(7), rs.getBoolean(8));
				ls.add(p);
			}
		} catch (ClassNotFoundException | SQLException ex) {
			Logger.getLogger(DataAccess.class.getName(), null).log(
					Level.SEVERE, null, ex);
		}

		return ls;
	}
	public void DeleteProduct(int id) {
		try {
			String sql = "delete from product where id = ?";
			PreparedStatement ps = DBUtils.getPreparedStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (ClassNotFoundException | SQLException ex) {
			Logger.getLogger(DataAccess.class.getName(), null).log(
					Level.SEVERE, null, ex);
		}
	}
	
	//Working Orders
	public static List<Order> getAllOrder() {
		List<Order> ls = new LinkedList<>();

		try {
			ResultSet rs = DBUtils.getPreparedStatement(
					"Select * from order").executeQuery();
			while (rs.next()) {
				Order p = new Order(rs.getInt(1), rs.getInt(2),
						rs.getFloat(3), rs.getString(4));
				ls.add(p);
			}
		} catch (ClassNotFoundException | SQLException ex) {
			Logger.getLogger(DataAccess.class.getName(), null).log(
					Level.SEVERE, null, ex);

		}
		return ls;
	}
}