<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content= "width=device-width, initial-scale=1.0">
<meta charset=”utf-8”> 

<style>

body
{
    font-family: Arial, Sans-Serif;
    font-size: 13px;
}

.actionTitle{
	font-weight:bold;
	color:  #2562b0;
	font-size:15px;
	margin:0 0 5px;
	padding:4px 4px;
}


#inputArea
{
    font-family: Arial, Sans-Serif;
    font-size: 13px;
    background-color: #d6e5f4;
    padding: 10px;
    margin-bottom: 10px;
    width:310px;
}
#inputArea input, #inputArea textarea
{
    font-family: Arial, Sans-Serif;
    font-size: 13px;
    margin-bottom: 5px;
    display: block;
    padding: 4px;
    width: 300px;
}


</style>   
     
<title>Login</title>

</head>

<body>
	<div id="wrapper">
	<div id="contentarea">

	<div id="idLoginBox">
		<form action="j_security_check" method="POST">
			<h3 class="actionTitle">Sign In</h3>
			
			<div id="inputArea">
				<label>User Name</label><input type="text" name="j_username"/>
				<label>Password</label><input type="password" name="j_password"/>
			</div>

			<div class="submitField">
				<input class="submitBtn" id="idSubmit" type="submit" value="login" />
			</div>
		</form>
	</div> <!-- idLoginBox -->
</div> <!-- contentarea -->
<div class="clearer">&nbsp;</div>
</div> <!-- wrapper -->
</body>
</html>
