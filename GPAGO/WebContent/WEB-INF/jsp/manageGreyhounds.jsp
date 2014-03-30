<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="../adminStyles.css" rel="stylesheet" type="text/css"/>

<title>Greyhound Rescue</title>
  
</head>
<body>

<div id="page">

<div id="header">
	<h1>Manage Greyhounds</h1>
</div>

<div id="navigation">
	<ul>
		<li><a href="manage-sponsors">Manage Sponsors</a></li>
		<li><a href="new-greyhound">Create new greyhound record</a></li>
		<li><a href="logout">Logout</a></li>
	</ul>
</div>

<jsp:useBean id="facade" type="gpago.view.ViewFacade" scope="request"/>

<c:forEach var="greyhound" items="${facade.greyhounds}">

<div class="content-item">

<div class="image">
	<img src="image?id=${greyhound.id}" width="320" height="320">
</div>

<div class="listDetail">
	<div class="formButtons">
		<a href="update-greyhound?id=${greyhound.id}">Edit</a>
	</div>

	<div class="detail">
		<label>Name</label><input type="text" disabled="disabled" readonly="readonly" name="name" value="${greyhound.name}" />
		<label>Date of Birth</label><input type="text" disabled="disabled" readonly="readonly" name="dateOfBirth" value="${greyhound.dateOfBirth}" />
		<label>Gender</label><input type="text" disabled="disabled" readonly="readonly" name="gender" value="${greyhound.gender}" />
		<label>Weight</label><input type="text" disabled="disabled" readonly="readonly" name="weight" value="${greyhound.weight}" />
		<label>Color</label><input type="text" disabled="disabled" readonly="readonly" name="color" value="${greyhound.color}" />
		<label>Personality</label><input type="text" disabled="disabled" readonly="readonly" name="personality" value="${greyhound.personality}" />
		<label>More info</label><input type="text" disabled="disabled" readonly="readonly" name="moreInfo" value="${greyhound.moreInfo}" />
		<label>Cat Friendly</label><input type="checkbox" disabled="disabled" readonly="readonly" name="catFriendly" ${greyhound.catFriendly ? ' checked="checked"' : ''} />
		<label>Home Acclimated</label><input type="checkbox" disabled="disabled" readonly="readonly" name="homeAcclimated" ${greyhound.homeAcclimated ? ' checked="checked"' : ''} />
		<label>Sponsored by</label>
		
		<!-- Print list of sponsors with commas, but not for the first sponsor -->
		<div class="sponsors">
		<c:set var="firstSponsor" value="true"/>
		<c:forEach var="sponsorship" items="${greyhound.sponsors}">
		
		<div class="sponsor">
			&nbsp;&nbsp;&nbsp;&nbsp;${sponsorship.sponsor.name}
		</div>
	
		</c:forEach>
		</div>
	</div> <!-- detail -->
</div> <!-- listDetail -->

</div> <!-- content-item -->

</c:forEach>

<div id="footer">
	Any footer info goes here (e.g. Copyright info)
</div>

</div>
</body>
</html>