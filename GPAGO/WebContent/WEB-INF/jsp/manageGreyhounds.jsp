<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manage Greyhounds</title>
</head>
<body>


<jsp:useBean id="facade" type="gpago.view.ViewFacade" scope="request"/>

<a href="new_greyhound">Create New Greyhound Record</a>

<br />
<br />

<table>

<c:forEach var="greyhound" items="${facade.greyhounds}">

<tr>
<td>${greyhound.name}</td>
<td>${greyhound.description}</td>
<td><a href="update_greyhound?id=${greyhound.id}">Edit</a></td>
</tr>

</c:forEach>
</table>

</body>
</html>






