<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
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
		<style>
		table {
  			border-collapse: collapse;
  			width: 100%;
		}

		th, td {
  			padding: 8px;
  			text-align: left;
  			border-bottom: 1px solid #ddd;
		}
		</style>
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
					</div><!-- /.container-fluid -->
				</nav>
			</header>
			
			<!-- banner -->
			<div class="banner">
				<div class="container">
					<!-- form content / register area -->
					<div class="register-area">
						<!-- heading -->

	<h1 style="color: white;">Admin account details</h1>
	<table>
	<c:forEach var="admin" items="${adminDetails}">
	
	<c:set var="id" value="${admin.adminId}"/>
	<c:set var="name" value="${admin.adminName}"/>
	<c:set var="phone" value="${admin.mobileNo}"/>
	<c:set var="email" value="${admin.email}"/>
	<c:set var="username" value="${admin.userName}"/>
	<c:set var="password" value="${admin.password}"/>
	
	<tr>
		<td style="font-size: 20px;">Admin ID</td>
		<td style="font-size: 20px;">${admin.adminId}</td>
	</tr>
	<tr>
		<td style="font-size: 20px;">Admin Name</td>
		<td style="font-size: 20px;">${admin.adminName}</td>
	</tr>
	<tr>
		<td style="font-size: 20px;">Admin Phone</td>
		<td style="font-size: 20px;">${admin.mobileNo}</td>
	</tr>
	<tr>
		<td style="font-size: 20px;">Admin Email</td>
		<td style="font-size: 20px;">${admin.email}</td>
	</tr>
	<tr>
		<td style="font-size: 20px;">Admin UserName</td>
		<td style="font-size: 20px;">${admin.userName}</td>
	</tr>

	</c:forEach>
	</table>
	<br><br>
	
	<c:url value="updateadmin.jsp" var="adminupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="username" value="${username}"/>
		<c:param name="password" value="${password}"/>
	</c:url>
	
	<a href="${adminupdate}">
	<input type="button" name="update" value="Update my details">
	</a>
	
	<br>
	<br>
	
	<c:url value="deleteadmin.jsp" var="admindelete">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="username" value="${username}"/>
		<c:param name="password" value="${password}"/>
	</c:url>
	
	<a href="${admindelete}">
	<input type="button" name="delete" value="Delete my account">
	</a>
	<br><br>
	
	
	<c:url value="addadmin.jsp" var="addadmin">
	
	</c:url>
	<a href="${addadmin}">
	<input type="button" name="add" value="Add a new admin">
	</a>
	
	<c:url value="login.jsp" var="logout">
	
	</c:url>
	<a href="${logout}">
	<input type="button" name="logout" value="log out">
	</a>
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