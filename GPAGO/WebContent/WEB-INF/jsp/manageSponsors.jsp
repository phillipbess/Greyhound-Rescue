<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="../adminStyles.css" rel="stylesheet" type="text/css"/>

<title>Greyhound Rescue</title>
<link href="../styles.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div id="page">

<p><h1>Manage Sponsors</h1></p>

<jsp:useBean id="facade" type="gpago.view.ViewFacade" scope="request"/>

<p><a href="manage-greyhounds">Manage Greyhounds</a></p>

<a href="new-sponsor">Create new sponsor</a>
<a href="logout">Logout</a>

<br />
<br />

<table border="1">
<tr>
<td>Name</td>
<td>Sponsored Greys</td>
</tr>

<c:forEach var="sponsor" items="${facade.sponsors}">

<tr>
<td>${sponsor.name}</td>
<td>
	<!-- Print list of greyhounds with commas, but not for the first greyhound -->
	<c:set var="firstGreyhound" value="true"/>		
	<c:forEach var="sponsoredGrey" items="${sponsor.sponsoredGreys}">
		<c:choose>
			<c:when test="${firstGreyhound eq true}">
				${sponsoredGrey.greyhound.name}
				<c:set var="firstGreyhound" value="false"/>
			</c:when>
			<c:otherwise>
				&#44; ${sponsoredGrey.greyhound.name}
			</c:otherwise>
		</c:choose>
	</c:forEach>
</td>

<td><a href="update-sponsor?id=${sponsor.id}">Edit</a></td>
</tr>

</c:forEach>
</table>

</div>
</body>
</html>