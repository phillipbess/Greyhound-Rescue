<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<form action="j_security_check" method="POST">
<table>
<tr><td>User Name: <input type="TEXT" name="j_username"/></td></tr>
<tr><td>Password: <input type="PASSWORD" name="j_password"/></td></tr>
<tr><th><input type="SUBMIT" value="Log In"/></th></tr>

</table>
</form>
</body>
</html>