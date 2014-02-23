<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Greyhound Rescue</title>
</head>
<body>

<jsp:useBean id="greyhound" type="gpago.view.GreyhoundFormBean" scope="request"/>

<input type="hidden" name="id" value="${greyhound.id}">

<form method="POST">

Name: <input type="text" name="name" value="${greyhound.name}">${greyhound.nameValidationText}<br />
Description: <input type="text" name="description" value="${greyhound.description}"><br />

<input type="submit" name="Save">
<a href="admin/manage-greyhounds"><input type="button" value="Cancel" /></a>

</form>
</body>
</html>