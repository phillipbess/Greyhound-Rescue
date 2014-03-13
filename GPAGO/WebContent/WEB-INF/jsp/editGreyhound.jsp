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
Date of Birth: <input type="text" name="dateOfBirth" value="${greyhound.dateOfBirth}"><br />
Gender: <input type="text" name="gender" value="${greyhound.gender}"><br />
Weight: <input type="text" name="weight" value="${greyhound.weight}"><br />
Color: <input type="text" name="color" value="${greyhound.color}"><br />
Cat friendly?: <input type="checkbox" name="isCatFriendly" value="${greyhound.isCatFriendly}"><br />
Home acclimated: <input type="text" name="isHomeAcclimated" value="${greyhound.isHomeAcclimated}"><br />
Personality: <input type="text" name="personality" value="${greyhound.personality}"><br />
More info: <input type="text" name="moreInfo" value="${greyhound.moreInfo}"><br />
Main Image: <img src="${greyhound.mainImageLocal}" width="42" height="42">
        <input type="file" name="mainImageLocal" value="${greyhound.mainImageLocal}"><br/>
<input type="submit" name="Save">
<button type="button" onclick="window.location='admin/manage-greyhounds';return false;">Cancel</button>


</form>
</body>
</html>