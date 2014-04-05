<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- Testing commit -->
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="../adminStyles.css" rel="stylesheet" type="text/css"/>
<!-- JQuery from google / This can or should be replaced -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>
<title>Greyhound Rescue</title>
</head>
<body>
<script>
$(document).ready(function(){
	$("#btnLeft").click(function () {
	    var selectedItem = $("#rightValues option:selected");
	    $("#leftValues").append(selectedItem);
	});
});
$(document).ready(function(){
	$("#btnRight").click(function () {
	    var selectedItem = $("#leftValues option:selected");
	    $("#rightValues").append(selectedItem);
	});
});

</script>
<div id="page">

<h1>Enter Greyhound Information</h1>

<jsp:useBean id="greyhound" type="gpago.view.GreyhoundFormBean" scope="request"/>
<jsp:useBean id="facade" class="gpago.view.ViewFacade" scope="request"/>

<form method="post" enctype="multipart/form-data" action="save-greyhound">

<input type="hidden" name="id" value="${greyhound.id}">

<div class="detail">
	<label>Name</label><input type="text" name="name" value="${greyhound.name}" />${greyhound.nameValidationText}
	<label>Date of Birth</label><input type="date" name="dateOfBirth" value="${greyhound.dateOfBirth}" />
	<label>Gender</label><input type="text" name="gender" value="${greyhound.gender}" />
	<!-- When creating a new grey, do not display 0. Display an empty box -->
	<c:set var="weight" value="${greyhound.weight}"/>
	<c:choose>
		<c:when test="${weight eq 0}">
			<label>Weight</label><input type="text" name="weight" value="" />
		</c:when>
		<c:otherwise>
			<label>Weight</label><input type="text" name="weight" value="${weight}" />
		</c:otherwise>
	</c:choose>
	<label>Color</label><input type="text" name="color" value="${greyhound.color}" />
	<label>Personality</label><input type="text" name="personality" value="${greyhound.personality}" />
	<label>More info</label><input type="text" name="moreInfo" value="${greyhound.moreInfo}" />
	<label>Cat Friendly</label><input type="checkbox" name="catFriendly" ${greyhound.catFriendly ? ' checked="checked"' : ''} />
	<label>Home Acclimated</label><input type="checkbox" name="homeAcclimated" ${greyhound.homeAcclimated ? ' checked="checked"' : ''} />
	<label>Sponsored By:</label>
	<section class="container">
	    <div>
	        <select id="leftValues" size="5" name="sponsors[]" multiple>
		        <c:forEach var="sponsorship" items="${greyhound.sponsors}">
						<option value="${sponsorship.sponsor.id}">${sponsorship.sponsor.name}</option>
				</c:forEach>
			</select>
	    </div>	
	    <div>
	        <input type="button" id="btnLeft" value="&lt;" />
	        <input type="button" id="btnRight" value="&gt;" />
	    </div>
	    <div>
	        <select id="rightValues" size="5" multiple>
	            <c:forEach var="sponsor" items="${facade.sponsors}">
					<option value="${sponsor.id}">${sponsor.name}</option>
				</c:forEach>
	        </select>
	    </div>
	</section>
	<label>Image 1</label><input type="file" name="image1">
	<label>Image 2</label><input type="file" name="image2">
	<label>Image 3</label><input type="file" name="image3">
	<label>Image 4</label><input type="file" name="image4">
	<label>Image 5</label><input type="file" name="image5">
	
</div> <!-- detail -->

<div class="formButtons">
	<input type="submit" name="Save">
	<button type="button" onclick="window.location='manage-greyhounds';return false;">Cancel</button>
</div>
</form>

</div>
</body>
</html>