<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Player Details</title>
<jsp:include page="bootStrapHead.jsp" />
</head>
<body>
	<div class="row">
		<div class="col-sm-6">
			<h1>Details for ${player.firstName} ${player.lastName}</h1>
			<ul>
				<li>Guitar: ${player.guitarBrand }</li>
				<li>Born in: ${player.birthPlace }</li>
				<li>Nationality: ${player.birthCountry }</li>
				<li>Born on: ${player.birthDay}</li>
				<c:if test="${!alive}">
				<li>Died on: ${player.deceasedDay}</li>
				</c:if> 
				<li>Remarks: ${player.remarks}</li>
			</ul>

			<c:if test="${playerAdded}">
				<p>Successfully added.</p>
			</c:if>
			<c:if test="${playerUpdated}">
				<p>Successfully updated.</p>
			</c:if>
			
				${player.videoUrl}
		
			<a href="updatePlayer.do?pid=${player.id}">Update this player</a>
			<a href="deletePlayer.do?pid=${player.id}">Delete this player</a>
			<a href="home.do">Home</a>
		</div>

		<div class="col-sm-6">
		  <c:if test="${not empty player.imageUrl}">
			<img id="playerImage" src="${player.imageUrl}" alt="${player.lastName}">
			</c:if>
		</div>
	</div>

</body>
</html>