package com.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("admin");
		String password = request.getParameter("pw");
		boolean msg2;
		
		//calling validate method
		msg2 = adminDBUtil.validate(username, password);
		
		//check whether success or not
		if(msg2 == true) {
			//getting detail list
			List<admin> adminDetails = adminDBUtil.getAdminDetails(username);
			request.setAttribute("adminDetails", adminDetails);
			
			//navigating to admin account page
			RequestDispatcher dis = request.getRequestDispatcher("adminaccount.jsp");
			dis.forward(request, response);
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your Username or Password is incorrect')");
			out.println("location = 'login.jsp'");
			out.println("</script>");
		}
		//displaying js error for inavlid login
		
	}

}
