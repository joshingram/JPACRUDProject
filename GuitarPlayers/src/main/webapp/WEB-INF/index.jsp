<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Guitar Players</title>
</head>
<body>

	<h1>Guitar Player Home Page</h1>
	
	<c:forEach var="player" items="${guitarPlayers}">
	<li>${player.firstName }</li>
	</c:forEach>

</body>
</html>