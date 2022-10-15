<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Player</title>
<jsp:include page="bootStrapHead.jsp"/>
</head>
<body>

<h1>Update a Player</h1>

	<form action="updatePlayerForm.do" method="POST">
  		<label for="pid">Player's ID (locked):</label>
 		<input type="text" id="pid" name="pid" value="${player.id}" readonly required><br>
 		
  		<label for="fname">First name:</label>
 		<input type="text" id="fname" name="firstName" value="${player.firstName}" required><br>
  
  		<label for="lname">Last name:</label>
  		<input type="text" id="lname" name="lastName" value="${player.lastName}" required><br>
  
  		<label for="gbrand">Guitar:</label>
  		<input type="text" id="gbrand" name="guitarBrand" value="${player.guitarBrand}"><br>
  
  		<label for="bplace">Birth place:</label>
  		<input type="text" id="bplace" name="birthPlace" value="${player.birthPlace}"><br>
  
  		<label for="bcountry">Birth country:</label>
  		<input type="text" id="bcountry" name="birthCountry" value="${player.birthCountry}"><br>
  
  		<label for="bdate">Birth date:</label>
  		<input type="date" id="bdate" name="birthDay" value="${player.birthDay}"><br>
  
  		<label for="ddate">Date deceased:</label>
  		<input type="date" id="ddate" name="deceasedDay" value="${player.deceasedDay}"><br>
  	
  		<label for="remarks">Remarks:</label>
  		<textarea id="remarks" name="remarks" rows="4" cols="50">${player.remarks}</textarea><br>
  
  		<input type="submit" value="Submit">
  
	</form>
	
	<a href="home.do">Never mind, back to home</a>

</body>
</html>