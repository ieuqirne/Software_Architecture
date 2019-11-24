package com.DEStore.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBUtils {
	public static PreparedStatement getPreparedStatement(String sql) throws ClassNotFoundException, SQLException{
		PreparedStatement ps = null;
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/destore";
		String username = "root";
		String password = "";
		
		Connection con = DriverManager.getConnection(url, username, password);
		ps = con.prepareStatement(sql);
		
		return ps;
	}
	public static void main(String[] args) throws ClassNotFoundException, SQLException{
		getPreparedStatement("Select * from customer");
	}
}

