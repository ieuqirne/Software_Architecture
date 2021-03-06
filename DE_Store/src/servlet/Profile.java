package servlet;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DEStore.dao.DataAccess;

/**
 * Servlet implementation class Profile
 */
@WebServlet("/Profile")
public class Profile extends HttpServlet {
	   /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
 {
			  String idTemp = request.getParameter("id");
			  int id = Integer.parseInt(idTemp);
			  request.setAttribute("getCustomerById", DataAccess.getCustomerById(id));
			  RequestDispatcher rd = request.getRequestDispatcher("Profile.jsp");
		        try {
		            rd.forward(request, response);
		        } catch (ServletException | IOException ex) {
		            Logger.getLogger(EditCustomer.class.getName()).log(Level.SEVERE, null, ex);
		        }
}

@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
processRequest(request, response);
}

@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
processRequest(request, response);
}

@Override
public String getServletInfo() {
return "Short description";
}// </editor-fold>

}
