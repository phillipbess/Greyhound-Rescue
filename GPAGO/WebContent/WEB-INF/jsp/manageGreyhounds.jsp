<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="../bootstrap.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="../adminStyles.css" rel="stylesheet" type="text/css" />
<script src="../bootstrap.js"></script>

<script>

function confirm_delete() {
	return confirm('Are you sure you want to delete this greyhound?');
}

</script>

<title>Greyhound Rescue</title>
</head>
<body>

<div id="page">

<div id="header">
	<h1>Manage Greyhounds</h1>
</div>

	<div class="navbar navbar-fixed-top navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="" role="button">Greyhound Pets of America - Orlando</a>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="">Home</a></li>

					<li><a href="new-greyhound">Create New Greyhound</a></li>
					<li><a href="manage-sponsors">Manage Sponsors</a></li>
					<li><a href="Logout">Logout</a></li>
				</ul>
			</div>
		</div>
	</div>



<jsp:useBean id="facade" type="gpago.view.ViewFacade" scope="request" />

<c:forEach var="greyhound" items="${facade.greyhounds}">

<div class="content-item">

<div class="image">
	<img src="image?idx=1&id=${greyhound.id}" width="220" height="320">
	<img src="image?idx=2&id=${greyhound.id}" width="20" height="20">
	<img src="image?idx=3&id=${greyhound.id}" width="20" height="20">
	<img src="image?idx=4&id=${greyhound.id}" width="20" height="20">
	<img src="image?idx=5&id=${greyhound.id}" width="20" height="20">
</div>

<div class="listDetail">
	<div class="detailActionContainer">
		<a href="update-greyhound?id=${greyhound.id}">Edit</a>
		<a href="delete-greyhound?id=${greyhound.id}" onclick="return confirm_delete()">Delete</a>
	</div>

	<div class="detail">
		<div class="inputField"><label>Name</label><input type="text" disabled="disabled" readonly="readonly" name="name" value="${greyhound.name}" /></div>
		<div class="inputField"><label>Date of Birth</label><input type="text" disabled="disabled" readonly="readonly" name="dateOfBirth" value="${greyhound.dateOfBirth}" /></div>
		<div class="inputField"><label>Gender</label><input type="text" disabled="disabled" readonly="readonly" name="gender" value="${greyhound.gender}" /></div>
		<!-- When displaying a grey, do not display 0 for its weight if no value has been provided. Display an empty box -->
		<c:set var="weight" value="${greyhound.weight}"/>
		<c:choose>
			<c:when test="${weight eq 0}">
				<div class="inputField"><label>Weight</label><input type="text" disabled="disabled" readonly="readonly" name="weight" value="" /></div>
			</c:when>
			<c:otherwise>
				<div class="inputField"><label>Weight</label><input type="text" disabled="disabled" readonly="readonly" name="weight" value="${weight}" /></div>
			</c:otherwise>
		</c:choose>
		<div class="inputField"><label>Color</label><input type="text" disabled="disabled" readonly="readonly" name="color" value="${greyhound.color}" /></div>
		<div class="inputField"><label>Personality</label><input type="text" disabled="disabled" readonly="readonly" name="personality" value="${greyhound.personality}" /></div>
		<div class="inputField"><label>More info</label><input type="text" disabled="disabled" readonly="readonly" name="moreInfo" value="${greyhound.moreInfo}" /></div>
		<div class="inputField"><label>Cat Friendly</label><input type="checkbox" disabled="disabled" readonly="readonly" name="catFriendly" ${greyhound.catFriendly ? ' checked="checked"' : ''} /></div>
		<div class="inputField"><label>Home Acclimated</label><input type="checkbox" disabled="disabled" readonly="readonly" name="homeAcclimated" ${greyhound.homeAcclimated ? ' checked="checked"' : ''} /></div>
		<div class="inputField"><label>Location</label><input type="text" disabled="disabled" readonly="readonly" name="location" value="${greyhound.location}" /></div>
		<div class="inputField"><label>Adoption Status</label><input type="text" disabled="disabled" readonly="readonly" name="adoptionStatus" value="${greyhound.adoptionStatus}" /></div>
		<div class="inputField"><label>Sponsored by:</label>
		
		<!-- Print list of sponsors with commas, but not for the first sponsor -->
		<div class="sponsors">
		<c:forEach var="sponsor" items="${greyhound.sponsors}">
		
		<div class="sponsor">${sponsor.name}</div>
	
		</c:forEach></div>
		</div>
	</div> <!-- detail -->
</div> <!-- listDetail -->

</div> <!-- content-item -->

</c:forEach>

<div id="footer">Any footer info goes here (e.g. Copyright info)</div>

</div>
</body>
</html>