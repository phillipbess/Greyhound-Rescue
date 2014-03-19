<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Greyhound Rescue</title>

<script src="//netdna.bootstrapcdn.com/bootswatch/3.1.1/yeti/bootstrap.min.css"></script>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"  type= "text/javascript"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js" type= "text/javascript"></script>

<!- Optional theme -->
<link href="//netdna.bootstrapcdn.com/bootswatch/3.1.1/yeti/bootstrap.min.css" rel="stylesheet">
  
</head>
<body>

<p><h1>Manage Greyhounds</h1></p>

<jsp:useBean id="facade" type="gpago.view.ViewFacade" scope="request"/>

<p><a href="manage-sponsors">Manage Sponsors</a></p>

<a href="new-greyhound">Create new greyhound record</a>
<a href="logout">Logout</a>

<br />
<br />

<table border="1">
<tr>
<td>Name</td>
<td>Date of Birth</td>
<td>Gender</td>
<td>Weight</td>
<td>Color</td>
<td>Cat Friendly</td>
<td>Home Acclimated</td>
<td>Personality</td>
<td>More info</td>
<td>Sponsored by</td>
<td>First Image</td>
</tr>

<c:forEach var="greyhound" items="${facade.greyhounds}">

<tr>
<td>${greyhound.name}</td>
<td>${greyhound.dateOfBirth}</td>
<td>${greyhound.gender}</td>
<td>${greyhound.weight}</td>
<td>${greyhound.color}</td>
<td>${greyhound.isCatFriendly}</td>
<td>${greyhound.isHomeAcclimated}</td>
<td>${greyhound.personality}</td>
<td>${greyhound.moreInfo}</td>
<td>
	<c:forEach var="sponsor" items="${facade.sponsorships}">
		${greyhound.sponsors.sponsor.name}
	</c:forEach>
</td>
<td><img src="${greyhound.firstImage}" width="42" height="42"></td>
<td><a href="update_greyhound?id=${greyhound.id}">Edit</a></td>
</tr>

</c:forEach>
</table>

</body>
</html>