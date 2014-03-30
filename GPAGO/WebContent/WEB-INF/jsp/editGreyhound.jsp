<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
/*$(document).ready(function(){
	$("#rightValues").change(function () {
	    var selectedItem = $("#rightValues option:selected");
	    $("#txtRight").val(selectedItem.text());
	});
});*/
</script>
<div id="page">

<h1>Enter Greyhound Information</h1>

<jsp:useBean id="greyhound" type="gpago.view.GreyhoundFormBean" scope="request"/>

<form method="post" enctype="multipart/form-data" action="save-greyhound">

<input type="hidden" name="id" value="${greyhound.id}">

<div class="detail">
	<label>Name</label><input type="text" name="name" value="${greyhound.name}" />${greyhound.nameValidationText}
	<label>Date of Birth</label><input type="text" name="dateOfBirth" value="${greyhound.dateOfBirth}" />
	<label>Gender</label><input type="text" name="gender" value="${greyhound.gender}" />
	<label>Weight</label><input type="text" name="weight" value="${greyhound.weight}" />
	<label>Color</label><input type="text" name="color" value="${greyhound.color}" />
	<label>Personality</label><input type="text" name="personality" value="${greyhound.personality}" />
	<label>More info</label><input type="text" name="moreInfo" value="${greyhound.moreInfo}" />
	<label>Cat Friendly</label><input type="checkbox" name="catFriendly" ${greyhound.catFriendly ? ' checked="checked"' : ''} />
	<label>Home Acclimated</label><input type="checkbox" name="homeAcclimated" ${greyhound.homeAcclimated ? ' checked="checked"' : ''} />
	<label>Image</label><input type="file" name="image">
</div> <!-- detail -->

<div class="formButtons">
	<input type="submit" name="Save">
	<button type="button" onclick="window.location='manage-greyhounds';return false;">Cancel</button>
</div>

</form>

</div>
</body>
</html>