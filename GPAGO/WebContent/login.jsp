<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset=”utf-8”>


<title>Login</title>




 <link href="../bootstrap.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="../loginStyles.css" rel="stylesheet">


<script src="../bootstrap.js"></script>

<title>Greyhound Login</title>

</head>

<body>
	<div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="" role="button">Greyhound Pets of
					America - Orlando</a>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="">Home</a></li>
					<li><a href="#about">About</a></li>
					<li><a href="#contact">Contact</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="container" style="text-align: center; margin-top: 100px;">
		<p>
			<img src="../greyhound.png" style="width: 300px;" />
		</p>
	</div>
	<div class="container">

		<form class="j_security_check" method="POST" action="j_security_check">
			<h2 class="j_security_check-heading">Please sign in</h2>
			<input type="Text"  class="form-control" name="j_username"
				placeholder="Name" name="j_username" required autofocus> <input
				type="Password" class="form-control" placeholder="Password"
				name="j_password" required> <label class="checkbox">
				<input type="checkbox" value="remember-me">Remember me
			</label>
			<button class="btn btn-lg btn-primary btn-block" type="submit"
				value="Log In">Sign in</button>
		</form>
	</div>

		
</body>

</html>