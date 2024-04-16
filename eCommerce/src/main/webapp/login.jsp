    <%@page import="com.dataObjects.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
	User auth = (User) request.getSession().getAttribute("auth");
	if (auth != null) {
		response.sendRedirect("Home.jsp");
	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container">
		<a class="navbar-brand" href="Home.jsp">Shopping Cart</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
	
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="Home.jsp">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="cart.jsp">Cart <span class="badge badge-danger">${cart_list.size()}</span> </a></li>
				<%
				if (auth != null) {
				%>
				<li class="nav-item"><a class="nav-link" href="orders.jsp">Orders</a></li>
				<li class="nav-item"><a class="nav-link" href="log-out">Logout</a></li>
				<%
				} else {
				%>
				<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
				<li class="nav-item"><a class="nav-link" href="SignUp.jsp">Sign up</a></li>
				<%
				}
				%>
			</ul>
		</div>
	</div>
</nav>
    <!-- navbar-end -->
    
    	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center bg-danger text-white">User Login</div>
			<div class="card-body" style='background-color:#FFDCDC;'>
				<form action="user-login" method="post">
					<div class="form-group">
						<label>Email </label> 
						<input type="email" name="email" class="form-control" placeholder="Enter email" style='background-color:#FFF6FA;'>
					</div>
					<div class="form-group">
						<label>Password</label> 
						<input type="password" name="password" class="form-control" placeholder="Enter password" style='background-color:#FFF6FA;'>
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-danger">Login</button>
					</div>
				</form>
			</div>
		</div>
	</div>
           <br>
           <br>
           <br>
    
    
     <div id="footer" class="p-3 mb-2 bg-dark text-white text-center">
    &copy;2024 . All rights reserved.    
			</div>
</body>
</html>