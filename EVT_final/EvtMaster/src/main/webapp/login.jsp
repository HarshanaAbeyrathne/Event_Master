<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Login Page</h1>
	<form action="UserLogin" method="post">
		User Name <input type="text" name="username" placeholder="Enter your username"><br>
		Password <input type="password" name="password" placeholder="Enter your password"><br>
		<a href="RegisterUser.jsp">New Customer Click Here to Register.</a>
		<br>
		<input type="submit" name="submit" value="Login">
	
		<button><a href="AdminLogin.jsp">Login As ADMIN</a></button>

		<button><a href="EventPlannerLogin.jsp">Login As Event Planner</a></button>
	</form>
</body>
</html>