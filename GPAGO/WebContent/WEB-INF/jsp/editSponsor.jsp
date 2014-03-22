<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="../adminStyles.css" rel="stylesheet" type="text/css"/>

<title>Greyhound Rescue</title>
</head>
<body>
<div id="page">

<h1>Enter Sponsor Information</h1>

<jsp:useBean id="greyhound" type="gpago.view.GreyhoundFormBean" scope="request"/>

<form method="POST" action="save-sponsor">
<input type="hidden" name="id" value="${greyhound.id}">

Name: <input type="text" name="name" value="${greyhound.name}">${greyhound.nameValidationText}<br />
Date of Birth: <input type="text" name="dateOfBirth" value="${greyhound.dateOfBirth}"><br />
Gender: <input type="text" name="gender" value="${greyhound.gender}"><br />
Weight: <input type="text" name="weight" value="${greyhound.weight}"><br />
<input type="file" name="firstImage" value="${greyhound.firstImage}"><br/>
<input type="submit" name="Save">
<button type="button" onclick="window.location='manage-sponsors';return false;">Cancel</button>


</form>

</div>
</body>
</html>