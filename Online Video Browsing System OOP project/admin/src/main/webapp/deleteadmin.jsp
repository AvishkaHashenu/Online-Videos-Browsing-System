<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<meta name="description" content="Your description">
		<meta name="keywords" content="Your,Keywords">
		<meta name="author" content="ResponsiveWebInc">
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- Styles -->
		<!-- Bootstrap CSS -->
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<!-- Font awesome CSS -->
		<link href="css/font-awesome.min.css" rel="stylesheet">		
		<!-- Custom CSS -->
		<link href="css/style.css" rel="stylesheet">
		
		<!-- Favicon -->
		<link rel="shortcut icon" href="#">
</head>
<body>
	
		<div class="wrapper">
		
			<!-- header -->
			<header>
				<!-- navigation -->
				<nav class="navbar navbar-default" role="navigation">
					<div class="container">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="#"><img class="img-responsive" src="img/logo.png" alt="Logo" /></a>
						</div>
					</div>					
				</nav>
			</header>
			
			<!-- banner -->
			<div class="banner">
				<div class="container">
					<!-- form content / login area -->
					<div class="login-area">
						<!-- heading -->
						<%
						String id = request.getParameter("id");
						String name = request.getParameter("name");
						String phone = request.getParameter("phone");
						String email = request.getParameter("email");
						String username = request.getParameter("username");
						String password = request.getParameter("password");
						%>
	
	<h1 style="color: white;">Admin Account Delete</h1>
	<form action="delete" method="post">
	<table>
	<tr>
		<td style="font-size: 20px;">Admin ID</td>
		<td style="font-size: 20px;"><input type="text" name="id" value="<%=id%>" readonly></td>
	</tr>
	<tr>
		<td style="font-size: 20px;">Name</td>
		<td style="font-size: 20px;"><input type="text" name="name" value="<%=name%>" readonly></td>
	</tr>
	<tr>
		<td style="font-size: 18px;">Mobile number</td>
		<td style="font-size: 20px;"><input type="text" name="phone" value="<%=phone%>" readonly></td>
	</tr>
	<tr>
		<td style="font-size: 20px;">Email</td>
		<td style="font-size: 20px;"><input type="text" name="email" value="<%=email%>" readonly></td>
	</tr>
	<tr>
		<td style="font-size: 15px;">Admin Username</td>
		<td style="font-size: 20px;"><input type="text" name="username" value="<%=username%>" readonly></td>
	</tr>
	</table>
	<br>
		
		<input type="submit" name="submit" value="Delete my account"><br>
	</form>
					</div>
				</div>
			</div>
			<!-- banner end -->
			
			<!-- footer -->
			<footer class="ffoot">
				<div class="container">
					<p><a href="#">Home</a> | <a href="#work">works</a> | <a href="#team">Team</a> | <a href="#contact">Contact</a></p>
					<div class="social">
						<a href="#"><i class="fa fa-facebook"></i></a>
						<a href="#"><i class="fa fa-twitter"></i></a>
						<a href="#"><i class="fa fa-dribbble"></i></a>
						<a href="#"><i class="fa fa-linkedin"></i></a>
						<a href="#"><i class="fa fa-google-plus"></i></a>
					</div>
					<!-- copy right -->
					<!-- This theme comes under Creative Commons Attribution 4.0 Unported. So don't remove below link back -->
					<p class="copy-right">Copyright &copy; 2021 <a href="#">VIDEOSCOPE</a> | Designed By : <a href="http://www.indioweb.in/portfolio">IndioWeb</a>, All rights reserved. </p>
				</div>
			</footer>

		</div>
		
		
		<!-- Javascript files -->
		<!-- jQuery -->
		<script src="js/jquery.js"></script>
		<!-- Bootstrap JS -->
		<script src="js/bootstrap.min.js"></script>
		<!-- Respond JS for IE8 -->
		<script src="js/respond.min.js"></script>
		<!-- HTML5 Support for IE -->
		<script src="js/html5shiv.js"></script>
		<!-- Custom JS -->
		<script src="js/custom.js"></script>
	

</body>
</html>