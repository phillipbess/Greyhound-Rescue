<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset=”utf-8”>
<link href="../bootstrap.css" rel="stylesheet">

<link href="../adminStyles.css" rel="stylesheet" type="text/css" />

<script src="../bootstrap.js"></script>
<title>Greyhound Rescue</title>
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

					<li><a href="manage-greyhounds">Manage Greyhounds</a></li>
					<li><a href="new-greyhound">Create New Greyhound</a></li>
					<li><a href="Logout">Logout</a></li>
				</ul>
			</div>
		</div>
	</div>
	
<div id="page">

<h1>Enter Sponsor Information</h1>

<jsp:useBean id="sponsor" type="gpago.view.SponsorFormBean" scope="request"/>

<form method="POST" action="save-sponsor">
<input type="hidden" name="id" value="${sponsor.id}">

<div class="detail">
	<div class="inputField"><label>Name</label><input type="text" name="name" value="${sponsor.name}" />${sponsor.nameValidationText}</div>
</div> <!-- detail -->

<div class="formButtons">
	<button type="submit">Save</button>
	<button type="button" onclick="window.location='manage-sponsors';return false;">Cancel</button>
</div>

</form>

</div>
</body>
</html>