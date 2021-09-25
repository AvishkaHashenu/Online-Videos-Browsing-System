package com.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteAdminServlet")
public class DeleteAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		
		boolean msg2;
		
		//calling delete admin method with username
		msg2 = adminDBUtil.deleteadmin(username);
		
		if(msg2 == true) {
			//navigating to login page
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request,response);
		}
		else {
			//getting details list
			List<admin> adminDetails = adminDBUtil.getAdminDetails(username);
			request.setAttribute("adminDetails", adminDetails);
			
			//navigating to admin account page
			RequestDispatcher dispatcher = request.getRequestDispatcher("adminaccount.jsp");
			dispatcher.forward(request,response);
			
			
		}
	}

}
