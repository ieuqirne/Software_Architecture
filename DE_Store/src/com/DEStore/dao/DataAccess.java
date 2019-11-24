package com.DEStore.dao;

import com.DEStore.dao.DBUtils;
import com.DEStore.model.Customer;
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
						rs.getString(3), rs.getString(4), rs.getString(5));
				ls.add(n);
			}
		} catch (ClassNotFoundException | SQLException ex) {
			Logger.getLogger(DataAccess.class.getName(), null).log(
					Level.SEVERE, null, ex);
		}

		return ls;
	}
	public void addCustomer(Customer c) {

		try {
			PreparedStatement ps = DBUtils
					.getPreparedStatement("Insert into Customer (name, surname,address,loyalty) Values (?,?,?,?)");
			ps.setString(1, c.getName());
			ps.setString(2, c.getSurname());
			ps.setString(3, c.getAddress());
			ps.setString(4, c.getLoyalty());
			ps.executeUpdate();
		} catch (ClassNotFoundException | SQLException ex) {
			Logger.getLogger(DataAccess.class.getName(), null).log(
					Level.SEVERE, null, ex);

		}
	}

	public static List<Customer> getAll() {
		List<Customer> ls = new LinkedList<>();

		try {
			ResultSet rs = DBUtils.getPreparedStatement(
					"Select * from Customer").executeQuery();
			while (rs.next()) {
				Customer n = new Customer(rs.getInt(1), rs.getString(2),
						rs.getString(3), rs.getString(4), rs.getString(5));
				ls.add(n);
			}
		} catch (ClassNotFoundException | SQLException ex) {
			Logger.getLogger(DataAccess.class.getName(), null).log(
					Level.SEVERE, null, ex);

		}
		return ls;
	}



	public void edit(int id, String name, String surname, String address,
			String loyalty) {
		try {
			String sql = "update Customer SET name = ?, surname = ?, address = ?, loyalty = ?"
					+ " where id = ?";
			PreparedStatement ps = DBUtils.getPreparedStatement(sql);
			ps.setString(1, name);
			ps.setString(2, surname);
			ps.setString(3, address);
			ps.setString(4, loyalty);
			ps.setInt(5, id);
			ps.executeUpdate();
		} catch (ClassNotFoundException | SQLException ex) {
			Logger.getLogger(DataAccess.class.getName(), null).log(
					Level.SEVERE, null, ex);
		}

	}

	public void delete(int id) {
		try {
			String sql = "delete from customer where id = ?";
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
					.getPreparedStatement("Insert into Product (name, description,price,stock) Values (?,?,?,?)");
			ps.setString(1, p.getName());
			ps.setString(2, p.getDescription());
			ps.setFloat(3, p.getPrice());
			ps.setInt(4, p.getStock());
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
						rs.getString(3), rs.getFloat(4), rs.getInt(5));
				ls.add(p);
			}
		} catch (ClassNotFoundException | SQLException ex) {
			Logger.getLogger(DataAccess.class.getName(), null).log(
					Level.SEVERE, null, ex);

		}
		return ls;
	}
	public void editProduct(int id, String name, String description, float price,
			int stock) {
		try {
			String sql = "update Product SET name = ?, description = ?, price = ?, stock = ?"
					+ " where id = ?";
			PreparedStatement ps = DBUtils.getPreparedStatement(sql);
			ps.setString(1, name);
			ps.setString(2, description);
			ps.setFloat(3, price);
			ps.setInt(4, stock);
			ps.setInt(5, id);
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
						rs.getString(3), rs.getFloat(4), rs.getInt(5));
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
}