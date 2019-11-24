package com.login;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DEStore.dao.DBUtils;
import com.DEStore.dao.DataAccess;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	 
	DataAccess da = new  DataAccess();
	public Login(){
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//String sql = "select * from user where uname=? and pass=?"; 
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		//System.out.println(uname + "" + pass);
		try {
			if(da.checkLogin(uname,pass)){
				HttpSession session = request.getSession();
				session.setAttribute("username", uname);
				
				response.sendRedirect("welcome.jsp");
			}else{
				response.sendRedirect("login.jsp");
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


}
