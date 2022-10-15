<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Player Details</title>
<jsp:include page="bootStrapHead.jsp"/>
</head>
<body>
	<h1>Details for ${player.firstName} ${player.lastName}</h1>
	<ul>
		<li>Guitar brand: ${player.guitarBrand }</li>
		<li>Born in: ${player.birthPlace }</li>
		<li>Nationality: ${player.birthCountry }</li>
		<li>Born on: ${player.birthDay}</li>
	<%-- 	<c:if test="${player.desceasedDay is null}"> --%>
		<li> Died on: ${player.deceasedDay}</li>
	<%-- 	</c:if> --%> 
		<li>Remarks: ${player.remarks}</li>
	</ul>

	<c:if test="${playerAdded}">
		<p>Successfully added.</p>
	</c:if>
	<c:if test="${playerUpdated}">
		<p>Successfully updated.</p>
	</c:if>
<a href="updatePlayer.do?pid=${player.id}">Update this player</a><br>
<a href="deletePlayer.do?pid=${player.id}">Delete this player</a><br>
<a href="home.do">Home</a>
<img src="${player.imageUrl}" alt="${player.lastName}">


</body>
</html>