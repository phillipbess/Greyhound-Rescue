<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Greyhounds</title>

<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"  type= "text/javascript"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js" type= "text/javascript"></script>

<!- Optional theme -->
<link href="//netdna.bootstrapcdn.com/bootswatch/3.1.1/slate/bootstrap.min.css" rel="stylesheet">
  
</head>
<body>


<jsp:useBean id="facade" type="gpago.view.ViewFacade" scope="request"/>
<table>

<c:forEach var="greyhound" items="${facade.greyhounds}">

<tr>
<td>${greyhound.name}</td>
<td>${greyhound.dateOfBirth}</td>
<td>${greyhound.gender}</td>
<td>${greyhound.weight}</td>
</tr>

</c:forEach>
</table>

</body>
</html>






