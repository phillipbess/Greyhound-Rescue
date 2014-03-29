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
<jsp:useBean id="sponsor" type="gpago.view.SponsorFormBean" scope="request"/>

<form method="post" enctype="multipart/form-data" action="save-greyhound">

<input type="hidden" name="id" value="${greyhound.id}">

Name: <input type="text" name="name" value="${greyhound.name}">${greyhound.nameValidationText}<br />
Date of Birth: <input type="text" name="dateOfBirth" value="${greyhound.dateOfBirth}"><br />
Gender: <input type="text" name="gender" value="${greyhound.gender}"><br />
Weight: <input type="text" name="weight" value="${greyhound.weight}"><br />
Color: <input type="text" name="color" value="${greyhound.color}"><br />
Cat friendly?: <input type="checkbox" name="isCatFriendly" value="${greyhound.isCatFriendly}"><br />
Home acclimated: <input type="text" name="isHomeAcclimated" value="${greyhound.isHomeAcclimated}"><br />
Personality: <input type="text" name="personality" value="${greyhound.personality}"><br />
More info: <input type="text" name="moreInfo" value="${greyhound.moreInfo}"><br />
Sponsored by: 
<section class="container">
    <div>
        <select id="leftValues" size="5" name="sponsors[]" multiple></select>
        <c:forEach var="sponsorship" items="${greyhound.sponsors}">
				<option value="${sponsorship.sponsor.id}">${sponsorship.sponsor.name}</option>
		</c:forEach>
    </div>
    <div>
        <input type="button" id="btnLeft" value="&lt;&lt;" />
        <input type="button" id="btnRight" value="&gt;&gt;" />
    </div>
    <div>
        <select id="rightValues" size="5" multiple>
            <c:forEach var="sponsorship" items="${sponsor}">
				<option value="${sponsorship.id}">${sponsorship.name}</option>
			</c:forEach>
        </select>
        <!-- <div>
            <input type="text" id="txtRight" />
        </div>  -->
    </div>
</section>
<!-- <select multiple name="sponsors[]">
	<c:forEach var="sponsorship" items="${greyhound.sponsors}">
		<option value="${sponsorship.sponsor.name}">${sponsorship.sponsor.name}</option>
	</c:forEach>
</select>
-->
<br/>
<input type="file" name="image"><br/>
<input type="submit" name="Save">
<button type="button" onclick="window.location='manage-greyhounds';return false;">Cancel</button>
</form>

</div>
</body>
</html>