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
			<h1>${player.firstName} ${player.lastName}</h1>
			<ul>
				<c:if test="${not empty player.guitarBrand }">
					 <li>Guitar type: ${player.guitarBrand }</li>
				</c:if>
				
				<c:if test="${not empty player.birthPlace or not empty player.birthCountry}">
					<li>From:&nbsp; 
				</c:if>
				<c:if test="${not empty player.birthPlace}">
					${player.birthPlace}&nbsp; 
				</c:if>
				<c:if test="${not empty player.birthCountry}">
					${player.birthCountry}
				 </c:if>
				
				 
		 		<c:if test="${hasBirth}">
					<li>${player.birthDay}&#160;
				</c:if>
				<c:if test="${hasBirth && hasDeath}">
					to&#160;
				</c:if>
				<c:if test="${not hasBirth && hasDeath }">
					passed on: 
				 </c:if>
					<c:if test="${hasDeath}">
						${player.deceasedDay}
					</c:if> 
					<c:if test="${hasBirth && not hasDeath}">
						and still rocking.
					</c:if>
				
				<c:if test="${not empty player.remarks}">
					<li>${player.remarks}</li>
				</c:if>
			</ul>

			<c:if test="${playerAdded}">
				<p>Successfully added.</p>
			</c:if>
			<c:if test="${playerUpdated}">
				<p>Successfully updated.</p>
			</c:if>
			
			<a href="updatePlayer.do?pid=${player.id}">Update this player</a>&nbsp; 
			<a href="deletePlayer.do?pid=${player.id}">Delete this player</a>&#160;
			<a href="home.do">Home</a><br>
			
				${player.videoUrl}
		</div>

		<div class="col-sm-6">
		  <c:if test="${not empty player.imageUrl}">
			<img id="playerImage" src="${player.imageUrl}" alt="${player.lastName}">
			</c:if>
		</div>
	</div>

</body>
</html>