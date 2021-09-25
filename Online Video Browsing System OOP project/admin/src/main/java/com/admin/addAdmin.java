package com.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addAdmin")
public class addAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//catching variable values
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String username = request.getParameter("uname");
		String password = request.getParameter("pw");
		
		boolean msg;
		
		//calling add admin method and passing all values
		msg = adminDBUtil.addadmin(name, phone, email, username, password);
		
		//check whether success or not
		if(msg == true) {
			//navigating to a page which is included a success message
			RequestDispatcher d = request.getRequestDispatcher("Success.jsp");
			d.forward(request,response);
		}
		else {
			RequestDispatcher  d2 = request.getRequestDispatcher("Unsuccess.jsp");
			d2.forward(request,response);
		}
		

	}

}
