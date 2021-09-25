package com.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateAdminServlet")
public class UpdateAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//catching variable values
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean msg2;
		
		//calling update admin method
		msg2 = adminDBUtil.updateadmin(id, name, phone, email, username, password);
		
		//check whether success or not
		if(msg2 == true) {
			List<admin> adminDetails = adminDBUtil.getAdminDetails(username);
			request.setAttribute("adminDetails", adminDetails);
			
			
			RequestDispatcher dis = request.getRequestDispatcher("adminaccount.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("Unsuccess.jsp");
			dis.forward(request, response);
		}
		
	}

}
