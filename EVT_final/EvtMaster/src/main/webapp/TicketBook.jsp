<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ticket Book</title>
 <script src="https://cdn.tailwindcss.com"></script>
</head>

<body>
	<h1 class= "text-2xl" >Welcome to Ticket Booking page</h1>
	<a href= "viewMyTicket.jsp"> View Booked Tickets</a>
	<br>
	<c:forEach var ="user" items="${User}">
		<p>Welcome <c:out value = "${user.name}" /></p>
		<a href= "UserData?userID=<c:out value = "${user.userID}" />"> My Account</a>
	</c:forEach>
	 <br>
	
	<div class="grid grid-cols-4 gap-2">
		<c:forEach var ="eventList" items="${eventList}">
		<div>
			<h3><c:out value = "${eventList.eventName}" /></h3>
			<h6> <c:out value = "${eventList.eventType}" /></h6>
			<p><c:out value = "${eventList.eventDescription}" /> </p>
			<p><c:out value = "${eventList.eventDescription}" /> </p>
			<p>Event Venue: <c:out value = "${eventList.eventVenue}" /> </p>
			<a href= "TicketBooking?eventId=<c:out value = "${eventList.eventID}" />">Reserve a Ticket</a>
		</div>
	
	
	</c:forEach>
	</div>
	
	
	

</body>
</html>