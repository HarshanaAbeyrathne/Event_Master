<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Tickets</title>
</head>
<body>

	<table>
		<thead>
				<tr>
					<th>Ticket Type</th>
					<th>Ticket Price</th>
					<th>Count</th>
					<th>Reserve Ticket</th>
				</tr>
		</thead>
		<tbody>
			
			<c:forEach var ="ticketList" items="${ticketList}">
				<tr>
					<form action = "TicketRecerve" method= "post">
					 	<!-- <input type="hidden" id="eventID" name="eventID" value="<c:out value="${eventID}" />" /> --> 
					 	<input type="hidden" id="ticketID" name="ticketID" value="<c:out value="${ticketList.ticketID}" />" />
						<td><c:out value="${ticketList.ticketType}" /></td>
						<td><c:out value="${ticketList.price}" /></td>
						<td><input type="number" id="count" name="count" required> </td>
						<td><input type="submit" value="ReserveTicket"></td>
						
					</form>
				</tr>
			</c:forEach>
			
		</tbody>
	
	</table>

	<c:forEach var ="ticketList" items="${ticketList}">
		
	
	
	</c:forEach>

</body>
</html>