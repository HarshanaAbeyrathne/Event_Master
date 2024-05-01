<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Account</title>
</head>
<body>
	<c:forEach var="user" items="${User}">
    <p>Welcome <c:out value="${user.name}" /></p>
    
    <h1>Edit Details</h1>
	    <form action="UpdateUser" method="post">
	        <!-- Name -->
	        <label for="name">Name:</label>
	        <input type="text" id="name" name="name" value="<c:out value='${user.name}' />"><br>
			 <label for="name">Email:</label>
			<input type="text" name="email" value="<c:out value='${user.email}' />">
	        <!-- Age -->
	        <label for="age">Age:</label>
	        <input type="text" id="age" name="age" value="<c:out value='${user.age}' />"><br>
	
	        <!-- Phone Number -->
	        <label for="phoneno">Phone Number:</label>
	        <input type="text" id="phoneno" name="phoneno" value="<c:out value='${user.phoneno}' />"><br>
	
	        <input type="submit" value="Update Data">
	    </form>
	    
	    <form action="DeleteUser" method="post" onsubmit="return confirmDelete();">
  			<input type="hidden" id="userID" name="userID" value="<c:out value='${user.userID}' />"><br>
    		<input type="submit" value="Delete Account">
		</form>

		<script>
		    function confirmDelete() {
		        return confirm("Are you sure you want to delete this account?");
		    }
		</script>
	    
	    
		</c:forEach>

</body>
</html>