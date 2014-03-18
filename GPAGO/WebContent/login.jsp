<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content= "width=device-width, initial-scale=1.0">
<meta charset=”utf-8”> 
     
     
<title>Login</title>


<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"  type= "text/javascript"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js" type= "text/javascript"></script>

<!- Optional theme -->
<!-- <link href="//netdna.bootstrapcdn.com/bootswatch/3.1.1/slate/bootstrap.min.css" rel="stylesheet"> -->
  
  <link href="//netdna.bootstrapcdn.com/bootswatch/3.1.1/yeti/bootstrap.min.css" rel="stylesheet">
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